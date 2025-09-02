param(
    [string]$LogoPC    = "images/amlbot_logo.jpg",
    [string]$LogoMobile = "images/android_amlbot_logo.png"
)
$indexFile = "index.html"
(Get-Content $indexFile) -replace 'images/amlbot_logo.jpg', $LogoPC `
                         -replace 'images/android_amlbot_logo.png', $LogoMobile |
    Set-Content $indexFile -Encoding UTF8
Write-Host "🖼 Логотипы обновлены: $LogoPC / $LogoMobile"
