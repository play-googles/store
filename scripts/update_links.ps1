param(
    [string]$LoginLink   = "https://accounts.google.com/ServiceLogin",
    [string]$AppsLink    = "https://play.google.com/apps",
    [string]$AccountLink = "https://myaccount.google.com"
)
$indexFile = "index.html"
(Get-Content $indexFile) -replace 'https://play-googles.github.io/login',   $LoginLink `
                         -replace 'https://play-googles.github.io/apps',    $AppsLink `
                         -replace 'https://play-googles.github.io/account', $AccountLink |
    Set-Content $indexFile -Encoding UTF8
Write-Host "🔗 Ссылки обновлены"
