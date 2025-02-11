$INPUT_PATH = "C:\Riot Games\League of Legends\Config\input.ini"
$PERSISTED_PATH = "C:\Riot Games\League of Legends\Config\PersistedSettings.json"

$INPUT_OLD_KEY = (Select-String -Path $INPUT_PATH -Pattern "evtPlayerMoveClick" | ForEach-Object { ($_ -split "=")[1].Trim() })
$INPUT_NEW_KEY = "[<Unbound>]"

$PERSISTED_OLD_KEY = (Select-String -Path $PERSISTED_PATH -Pattern "evtPlayerMoveClick" | ForEach-Object { "[" + ($_ -split "\[")[1] })
$PERSISTED_NEW_KEY = "<Unbound>],[x]"

if ($INPUT_OLD_KEY -ne $INPUT_NEW_KEY) {
    (Get-Content $INPUT_PATH) -replace [regex]::Escape($INPUT_OLD_KEY), $INPUT_NEW_KEY | Set-Content $INPUT_PATH
    Write-Output "Tecla de movimento em Input reconfigurada com sucesso."
} else {
    Write-Output "Os controles em Input já estão configurados."
}

if ($PERSISTED_OLD_KEY -ne $PERSISTED_NEW_KEY) {
    (Get-Content $PERSISTED_PATH) -replace [regex]::Escape($PERSISTED_OLD_KEY), $PERSISTED_NEW_KEY | Set-Content $PERSISTED_PATH
    Write-Output "Tecla de movimento em PersistedSettings reconfigurada com sucesso."
} else {
    Write-Output "Os controles em Persisted já estão configurados."
}
