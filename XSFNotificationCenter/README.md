# XSFNotificationCenter — русификация уведомлений

Приложение `ecarx.notificationcenterui` (центр уведомлений / шторка), прошивка **5.6d** (versionName 20260602).
Перевод ресурсов (`res/values/strings.xml`) уже внесён в готовый APK; в коде приложения китайских строк нет.

## Структура

```
XSFNotificationCenter_original.apk   стоковый APK текущей прошивки
XSFNotificationCenter_RU.apk         готовый APK, подписан platform-ключом
install.sh                           установка по adb
```

Ключи — в `../platform`.

## Установка

```bash
./install.sh      # adb root/remount, push в /system/priv-app, reboot
```

## Сборка вручную

Нужны в PATH: `apktool`, `zipalign`, `apksigner`.

```bash
apktool d -s XSFNotificationCenter_original.apk -o notif_unpacked
# правка перевода в notif_unpacked/res/values/strings.xml
apktool b notif_unpacked -o XSFNotificationCenter_RU_unsigned.apk
zipalign -p -f 4 XSFNotificationCenter_RU_unsigned.apk XSFNotificationCenter_RU.apk
apksigner sign --key ../platform/platform.pk8 --cert ../platform/platform.x509.pem XSFNotificationCenter_RU.apk
```

Откат — установить `XSFNotificationCenter_original.apk` тем же способом.
