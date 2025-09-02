param(
    [string]$AppName = "AML Bot"
)
$indexFile = "index.html"
(Get-Content $indexFile) -replace 'MyToken-Crypto OnChain Tracker', $AppName |
    Set-Content $indexFile -Encoding UTF8
Write-Host "✏️ Название обновлено: $AppName"
