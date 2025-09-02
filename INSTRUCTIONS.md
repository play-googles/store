
# 📖 Инструкция

## 1. Запуск глобализации
```powershell
cd "C:\Users\iUser\Desktop\play-google"
.\scripts\globalize.ps1
```

## 2. Изменение логотипов
```powershell
.\scripts\update_logo.ps1 -LogoPC "images/new_logo.jpg" -LogoMobile "images/new_logo_android.png"
```

## 3. Изменение названия
```powershell
.\scripts\update_name.ps1 -AppName "Новое Название"
```

## 4. Изменение издателя
```powershell
.\scripts\update_publisher.ps1 -Publisher "New Company Ltd."
```

## 5. Изменение ссылок
```powershell
.\scripts\update_links.ps1 -LoginLink "https://accounts.google.com/ServiceLogin" `
                           -AppsLink "https://play.google.com/apps" `
                           -AccountLink "https://myaccount.google.com"
```
