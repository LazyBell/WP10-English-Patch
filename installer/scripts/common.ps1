$ErrorActionPreference = 'Stop'
$PatchDir = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$Data = Join-Path $PatchDir 'data'
$Manifests = @{
    '1.0.4'   = (Get-Content -Raw (Join-Path $Data 'manifest_104.json') | ConvertFrom-Json)
    '1.0.1.1' = (Get-Content -Raw (Join-Path $Data 'manifest_1011.json') | ConvertFrom-Json)
}
$VerDir = @{ '1.0.4' = 'v104'; '1.0.1.1' = 'v1011' }
$Manifest = $null
$GameVersion = $null
# Works out the game version from WMM.DAT (original or already-patched) and picks the matching files.
function Select-GameVersion($Game) {
    $h = Get-Hash (Join-Path $Game 'WMM.DAT')
    foreach ($v in @('1.0.4','1.0.1.1')) {
        $e = $Manifests[$v].PSObject.Properties['WMM.DAT'].Value
        if ($h -and ($h -eq $e.orig -or $h -eq $e.new)) { $script:Manifest = $Manifests[$v]; $script:GameVersion = $v; return $v }
    }
    return $null
}
# Patch file for the detected version (data/v104 or data/v1011), or the shared copy in data/files.
function Get-Src($f) {
    $p = Join-Path (Join-Path $Data $VerDir[$script:GameVersion]) $f
    if (Test-Path -LiteralPath $p) { return $p }
    return (Join-Path (Join-Path $Data 'files') $f)
}

function Test-GameDir($d) {
    if (-not $d) { return $false }
    return (Test-Path -LiteralPath (Join-Path $d 'WP10_2026.exe'))
}
function Get-SteamGameDirs {
    $found = @()
    $roots = @()
    foreach ($k in @('HKCU:\Software\Valve\Steam','HKLM:\SOFTWARE\WOW6432Node\Valve\Steam','HKLM:\SOFTWARE\Valve\Steam')) {
        try {
            $v = Get-ItemProperty -Path $k -ErrorAction Stop
            if ($v.SteamPath) { $roots += ($v.SteamPath -replace '/','\') }
            if ($v.InstallPath) { $roots += $v.InstallPath }
        } catch {}
    }
    $roots += 'C:\Program Files (x86)\Steam'
    $libs = @()
    foreach ($r in ($roots | Select-Object -Unique)) {
        if (-not (Test-Path -LiteralPath $r)) { continue }
        $libs += $r
        $vdf = Join-Path $r 'steamapps\libraryfolders.vdf'
        if (Test-Path -LiteralPath $vdf) {
            foreach ($line in (Get-Content -LiteralPath $vdf)) {
                if ($line -match '"path"\s+"([^"]+)"') { $libs += ($Matches[1] -replace '\\\\','\') }
            }
        }
    }
    foreach ($l in ($libs | Select-Object -Unique)) {
        $common = Join-Path $l 'steamapps\common'
        if (-not (Test-Path -LiteralPath $common)) { continue }
        foreach ($d in (Get-ChildItem -LiteralPath $common -Directory -ErrorAction SilentlyContinue)) {
            if (Test-GameDir $d.FullName) { $found += $d.FullName }
        }
    }
    return ($found | Select-Object -Unique)
}
function Get-CopyLabel($d) {
    $h = Get-Hash (Join-Path $d 'WMM.DAT')
    foreach ($v in @('1.0.4','1.0.1.1')) {
        $e = $Manifests[$v].PSObject.Properties['WMM.DAT'].Value
        if ($h -eq $e.orig) { return "version $v" }
        if ($h -eq $e.new) { return "version $v, English patch already installed" }
    }
    return 'unknown version'
}
function Select-FolderDialog {
    while ($true) {
        $p = $null
        try {
            Add-Type -AssemblyName System.Windows.Forms
            $dlg = New-Object System.Windows.Forms.FolderBrowserDialog
            $dlg.Description = 'Select your Winning Post 10 2026 folder (the one with WP10_2026.exe)'
            $dlg.ShowNewFolderButton = $false
            if ($dlg.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) { $p = $dlg.SelectedPath }
        } catch {}
        if (-not $p) {
            Write-Host 'Or paste the game folder path here (or drag the folder into this window, then press Enter).'
            $p = (Read-Host 'Game folder').Trim().Trim('"').Trim()
        }
        if ($p -match 'WP10_2026\.exe$') { $p = Split-Path -Parent $p }
        if (Test-GameDir $p) { return $p }
        Write-Host 'WP10_2026.exe is not in that folder. Please try again.' -ForegroundColor Yellow
    }
}
function Find-Game {
    # 1) patch folder placed inside the game folder (or the game folder itself)
    $c = Split-Path -Parent $PatchDir
    if (Test-GameDir $c) { return $c }
    if (Test-GameDir $PatchDir) { return $PatchDir }
    # 2) Steam libraries + a quick search of common places on every drive (all copies, not just Steam)
    Write-Host 'Looking for your Winning Post 10 2026 install(s) (this can take a few seconds)...'
    $cands = @(Get-SteamGameDirs)
    $home2 = [Environment]::GetFolderPath('UserProfile')
    $spots = @($home2, (Join-Path $home2 'Downloads'), (Join-Path $home2 'Desktop'), (Join-Path $home2 'Documents'),
               [Environment]::GetFolderPath('Desktop'), [Environment]::GetFolderPath('MyDocuments'))
    foreach ($dr in (Get-PSDrive -PSProvider FileSystem -ErrorAction SilentlyContinue)) {
        $r = $dr.Root
        $spots += @($r, (Join-Path $r 'Games'), (Join-Path $r 'Program Files'), (Join-Path $r 'Program Files (x86)'), (Join-Path $r 'SteamLibrary\steamapps\common'))
    }
    foreach ($sp in ($spots | Where-Object { $_ } | Select-Object -Unique)) {
        if (-not (Test-Path -LiteralPath $sp)) { continue }
        if (Test-GameDir $sp) { $cands += $sp }
        foreach ($d1 in (Get-ChildItem -LiteralPath $sp -Directory -ErrorAction SilentlyContinue)) {
            if (Test-GameDir $d1.FullName) { $cands += $d1.FullName; continue }
            foreach ($d2 in (Get-ChildItem -LiteralPath $d1.FullName -Directory -ErrorAction SilentlyContinue)) {
                if (Test-GameDir $d2.FullName) { $cands += $d2.FullName }
            }
        }
    }
    $seen = @{}; $list = @()
    foreach ($d in $cands) { $k = $d.TrimEnd('\').ToLower(); if (-not $seen.ContainsKey($k)) { $seen[$k] = 1; $list += $d.TrimEnd('\') } }
    # 3) let the player choose (or browse for a folder that wasn't found)
    if ($list.Count -eq 0) {
        Write-Host ''
        Write-Host 'Could not find the game automatically.' -ForegroundColor Yellow
        Write-Host 'A window will open: pick the folder that contains WP10_2026.exe.'
        return (Select-FolderDialog)
    }
    Write-Host ''
    if ($list.Count -eq 1) { Write-Host 'Found this copy of the game:' } else { Write-Host 'Found these copies of the game:' }
    for ($i = 0; $i -lt $list.Count; $i++) { Write-Host ("  [{0}] {1}  ({2})" -f ($i + 1), $list[$i], (Get-CopyLabel $list[$i])) }
    Write-Host '  [B] Choose a different folder'
    while ($true) {
        $n = (Read-Host 'Type the number of the copy to patch (or B)').Trim()
        if ($n -match '^[Bb]$') { return (Select-FolderDialog) }
        if ($n -match '^\d+$' -and [int]$n -ge 1 -and [int]$n -le $list.Count) { return $list[[int]$n - 1] }
    }
}

function Get-Hash($path) {
    if (-not (Test-Path -LiteralPath $path)) { return $null }
    return (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToUpper()
}
function Get-Entry($name) { return $Manifest.PSObject.Properties[$name].Value }
function Apply-Delta($target, $deltaPath) {
    $d = [IO.File]::ReadAllBytes($deltaPath)
    if ([Text.Encoding]::ASCII.GetString($d, 0, 4) -ne 'WPD1') { throw "Bad delta file $deltaPath" }
    $origLen = [BitConverter]::ToUInt64($d, 4); $newLen = [BitConverter]::ToUInt64($d, 12)
    $n = [BitConverter]::ToUInt32($d, 20); $p = 24
    $fs = [IO.File]::Open($target, 'Open', 'ReadWrite', 'None')
    try {
        if ([uint64]$fs.Length -ne $origLen) { throw "Unexpected size for $target" }
        for ($i = 0; $i -lt $n; $i++) {
            $off = [BitConverter]::ToUInt64($d, $p); $len = [BitConverter]::ToInt32($d, $p + 8); $p += 12
            [void]$fs.Seek([int64]$off, 'Begin'); $fs.Write($d, $p, $len); $p += $len
        }
        $fs.SetLength([int64]$newLen)
    } finally { $fs.Close() }
}
function Assert-GameClosed {
    while (Get-Process -Name 'WP10_2026','WP10_2026_Launcher','WP10_2026_Config' -ErrorAction SilentlyContinue) {
        Write-Host ''
        Write-Host 'Winning Post 10 2026 is still running.' -ForegroundColor Yellow
        Read-Host 'Close the game completely, then press Enter to continue'
    }
}
function Assert-Extracted {
    $t = [IO.Path]::GetTempPath()
    if ($PatchDir.StartsWith($t, [StringComparison]::OrdinalIgnoreCase) -or $PatchDir -match '\.zip\\') {
        Write-Host ''
        Write-Host 'It looks like you opened INSTALL.bat from inside the zip file.' -ForegroundColor Yellow
        Write-Host 'Please right-click the zip > Extract All..., then run INSTALL.bat from the extracted folder.'
        throw 'Extract the zip first.'
    }
}
