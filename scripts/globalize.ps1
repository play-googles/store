param(
    [string]$RepoPath   = "C:\Users\iUser\Desktop\play-google",
    [string]$BranchName = "main"
)

Write-Host "🚀 Старт глобализации репозитория..."

$backupDir = Join-Path $RepoPath "backup_global"
$readme    = Join-Path $RepoPath "README.md"

# 1. Бэкап
if (-not (Test-Path $backupDir)) {
    New-Item -ItemType Directory -Path $backupDir | Out-Null
    Get-ChildItem $RepoPath -Force | Where-Object { $_.Name -notin @(".git", "backup_global") } | ForEach-Object {
        Copy-Item $_.FullName -Destination $backupDir -Recurse -Force
    }
    Write-Host "📦 Бэкап создан в $backupDir"
} else {
    Write-Host "ℹ️ Бэкап уже существует, пропускаем"
}

# 2. Чистим лишнее
Get-ChildItem -Path $RepoPath -Force | Where-Object {
    $_.Name -in @("test", "tmp", "docs", "samples") -or $_.Extension -in (".bak", ".tmp", ".log")
} | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "🧹 Лишние файлы удалены"

# 3. Создаём README.md
$readmeContent = @"
# Глобальная сборка Play-Google Store

## 📦 Что изменено
- Заменены иконки
- Обновлены метатеги и название проекта
- Издатель изменён
- Обновлены ссылки

## 🛠 Скрипты обновлений
- update_logo.ps1 — изменить иконки
- update_name.ps1 — изменить название
- update_publisher.ps1 — изменить издателя
- update_links.ps1 — заменить ссылки
"@
Set-Content $readme -Value $readmeContent -Encoding UTF8
Write-Host "📄 README.md создан"

# 4. Git push
Set-Location $RepoPath
git add .
git commit -m "Globalize: backup, cleanup, README"
git push origin $BranchName
Write-Host "🚀 Изменения запушены в $BranchName"
