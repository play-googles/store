param(
    [string]$Publisher = "Intelligence Limited"
)
$indexFile = "index.html"
(Get-Content $indexFile) -replace 'My Original Publisher', $Publisher |
    Set-Content $indexFile -Encoding UTF8
Write-Host "🏢 Издатель обновлён: $Publisher"
