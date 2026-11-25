. (Join-Path $PSScriptRoot 'common.ps1')
try {
    Assert-Extracted
    Assert-GameClosed
    $Game = Find-Game
    $Bak = Join-Path $Game 'WP10_EN_backup'
    Write-Host "Game folder: $Game"
    if (-not (Select-GameVersion $Game)) { $script:Manifest = $Manifests['1.0.4']; $script:GameVersion = '1.0.4' }
    $t = Join-Path $Game 'DATA.UNB'
    if ((Get-Hash $t) -eq (Get-Entry 'DATA.UNB').new) {
        Write-Host '  Restoring DATA.UNB...'
        Apply-Delta $t (Join-Path $Data 'DATA.UNB.undo.wpd')
    }
    if (Test-Path $Bak) {
        Get-ChildItem -LiteralPath $Bak -Recurse -File | ForEach-Object {
            $rel = $_.FullName.Substring($Bak.Length + 1)
            Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $Game $rel) -Force
            Write-Host "  restored $rel"
        }
    }
    foreach ($f in @('dinput8.dll','dinput8_gpt.dll','WP10_EN.bin','WP10_EN_code.bin')) {
        $p = Join-Path $Game $f
        $h = Get-Hash $p
        if (-not $h) { continue }
        foreach ($m in $Manifests.Values) {
            $e = $m.PSObject.Properties[$f].Value
            if ($e -and $h -eq $e.new) { Remove-Item -LiteralPath $p -Force; Write-Host "  removed $f"; break }
        }
    }
    foreach ($q in @('High','Middle')) { foreach ($fd in @('0xe7a10001.fdata','0xe7a10002.fdata')) {
        $p = Join-Path $Game "FPackages/$q/release/$fd"
        $rdb = Join-Path $Game "FPackages/$q/release/root.rdb"
        if ((Test-Path $p) -and ((Get-Hash $rdb) -ne (Get-Entry "FPackages/$q/release/root.rdb").new)) { Remove-Item -LiteralPath $p -Force; Write-Host "  removed $q/$fd" }
    } }
    Write-Host ''
    Write-Host 'English patch removed. The game is back to Japanese.' -ForegroundColor Green
    Write-Host "You can delete the folder $Bak once you've checked the game runs."
} catch {
    Write-Host ''
    Write-Host ('ERROR: ' + $_.Exception.Message) -ForegroundColor Red
    exit 1
}
