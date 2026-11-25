. (Join-Path $PSScriptRoot 'common.ps1')
try {
    Write-Host '=== Winning Post 10 2026 English Patch (game versions 1.0.4 and 1.0.1.1) ===' -ForegroundColor Cyan
    Assert-Extracted
    Assert-GameClosed
    $Game = Find-Game
    Write-Host "Game folder: $Game"
    $Ver = Select-GameVersion $Game
    if (-not $Ver) {
        Write-Host ''
        Write-Host "Your game's WMM.DAT doesn't match game version 1.0.4 or 1.0.1.1." -ForegroundColor Yellow
        Write-Host 'Nothing has been changed. Usually this means one of these:'
        Write-Host ' - An older version of this patch is installed: run its UNINSTALL.bat first.'
        Write-Host ' - Another mod changed the game files: in Steam, right-click the game >'
        Write-Host '   Properties > Installed Files > Verify integrity, then run INSTALL.bat again.'
        Write-Host ' - Your game is a newer version than this patch supports: wait for an update.'
        throw 'Game version not supported.'
    }
    Write-Host "Game version: $Ver" -ForegroundColor Cyan
    $Bak = Join-Path $Game 'WP10_EN_backup'
    New-Item -ItemType Directory -Force -Path $Bak | Out-Null
    $Files = Join-Path $Data 'files'

    # --- Core (required): DATA.UNB/UNH, WMM.DAT ---
    Write-Host 'Checking core game files (this can take a moment)...'
    $core = @('DATA.UNB','DATA.UNH','WMM.DAT')
    $state = @{}
    foreach ($f in $core) {
        $h = Get-Hash (Join-Path $Game $f); $e = Get-Entry $f
        if ($h -eq $e.new) { $state[$f] = 'done' }
        elseif ($h -eq $e.orig) { $state[$f] = 'todo' }
        else {
            Write-Host ''
            Write-Host "Your $f doesn't match the version this patch was made for." -ForegroundColor Yellow
            Write-Host 'Nothing has been changed. Usually this means one of these:'
            Write-Host ' - An older version of this patch is installed: run its UNINSTALL.bat first.'
            Write-Host ' - Another mod changed the game files: in Steam, right-click the game >'
            Write-Host '   Properties > Installed Files > Verify integrity, then run INSTALL.bat again.'
            Write-Host ' - The game was updated by Steam and this patch needs an update too.'
            throw 'Game files do not match.'
        }
    }
    foreach ($f in $core) {
        if ($state[$f] -ne 'todo') { Write-Host "  $f already patched"; continue }
        $t = Join-Path $Game $f
        if ($f -eq 'DATA.UNB') {
            Write-Host '  Patching DATA.UNB...'
            Apply-Delta $t (Join-Path $Data 'DATA.UNB.wpd')
            if ((Get-Hash $t) -ne (Get-Entry $f).new) {
                Apply-Delta $t (Join-Path $Data 'DATA.UNB.undo.wpd'); throw 'DATA.UNB patch check failed; file restored.'
            }
        } else {
            Copy-Item -LiteralPath $t -Destination (Join-Path $Bak $f) -Force
            Copy-Item -LiteralPath (Get-Src $f) -Destination $t -Force
        }
        Write-Host "  $f patched"
    }

    # --- Loader + text patch (always) ---
    foreach ($f in @('dinput8.dll','dinput8_gpt.dll','WP10_EN.bin','WP10_EN_code.bin')) {
        if (-not (Get-Entry $f)) { continue }
        $t = Join-Path $Game $f
        $h = Get-Hash $t
        if ($h -and $h -ne (Get-Entry $f).new -and -not (Test-Path (Join-Path $Bak $f))) {
            Copy-Item -LiteralPath $t -Destination (Join-Path $Bak $f) -Force
        }
        Copy-Item -LiteralPath (Get-Src $f) -Destination $t -Force
        Write-Host "  $f installed"
    }

    # --- Optional parts: skipped (with a warning) if your files differ ---
    function Install-Replace($f) {
        $t = Join-Path $Game $f; $h = Get-Hash $t; $e = Get-Entry $f
        if ($h -eq $e.new) { Write-Host "  $f already patched"; return $true }
        if ($h -ne $e.orig) { Write-Host "  SKIPPED $f (your copy differs from the supported version)" -ForegroundColor Yellow; return $false }
        $b = Join-Path $Bak $f; New-Item -ItemType Directory -Force -Path (Split-Path -Parent $b) | Out-Null
        Copy-Item -LiteralPath $t -Destination $b -Force
        Copy-Item -LiteralPath (Get-Src $f) -Destination $t -Force
        Write-Host "  $f patched"; return $true
    }
    [void](Install-Replace 'WCM.DAT')
    [void](Install-Replace 'EVENT/HistoricalTrainingInfo.bin')
    [void](Install-Replace 'EVENT/UmasonaInfo.bin')

    # Textures (year screens + DLC banners) for High and Middle quality packages
    foreach ($q in @('High','Middle')) {
        $rdb = "FPackages/$q/release/root.rdb"; $rdx = "FPackages/$q/release/root.rdx"
        $ok = $true
        foreach ($f in @($rdb,$rdx)) {
            $h = Get-Hash (Join-Path $Game $f); $e = Get-Entry $f
            if ($h -ne $e.new -and $h -ne $e.orig) { $ok = $false }
        }
        if (-not $ok) { Write-Host "  SKIPPED $q textures (your copy differs from the supported version)" -ForegroundColor Yellow; continue }
        foreach ($fd in @('0xe7a10001.fdata','0xe7a10002.fdata')) {
            Copy-Item -LiteralPath (Get-Src "FPackages/High/release/$fd") -Destination (Join-Path $Game "FPackages/$q/release/$fd") -Force
        }
        [void](Install-Replace $rdb); [void](Install-Replace $rdx)
        Write-Host "  $q textures installed"
    }

    # Optional subtitled movies (separate download)
    $mov = Join-Path $PatchDir 'MOVIE'
    if (Test-Path $mov) {
        New-Item -ItemType Directory -Force -Path (Join-Path $Bak 'MOVIE') | Out-Null
        Get-ChildItem -LiteralPath $mov -Filter *.webm | ForEach-Object {
            $t = Join-Path $Game ('MOVIE/' + $_.Name); $b = Join-Path $Bak ('MOVIE/' + $_.Name)
            if ((Test-Path $t) -and -not (Test-Path $b)) { Copy-Item -LiteralPath $t -Destination $b -Force }
            Copy-Item -LiteralPath $_.FullName -Destination $t -Force
        }
        Write-Host '  Subtitled movies installed'
    }

    Write-Host ''
    Write-Host 'English patch installed! Start the game from Steam as normal.' -ForegroundColor Green
    Write-Host "Originals were saved to: $Bak  (run UNINSTALL.bat to go back to Japanese)"
} catch {
    Write-Host ''
    Write-Host ('Install stopped: ' + $_.Exception.Message) -ForegroundColor Red
    Write-Host 'Your game files were not damaged. See README.txt (FAQ) for help.'
    exit 1
}
