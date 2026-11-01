# GeelyHvac — русификация кондиционера

Приложение `com.geely.pma.climate`, прошивка **5.6d**. Перевод ресурсов уже внесён в готовый APK.

## Структура

```
GeelyHvac_original.apk   стоковый APK текущей прошивки
GeelyHvac_RU.apk         готовый APK, подписан platform-ключом
install.sh               установка по adb
```

Ключи — в `../platform`.

## Установка

```bash
./install.sh      # adb install -r, pm clear, reboot
```

## Сборка вручную

Нужны в PATH: `apktool`, `zipalign`, `apksigner`.

```bash
apktool d -s GeelyHvac_original.apk -o climate_safe
# правка перевода в climate_safe/res/...
apktool b climate_safe -o GeelyHvac_RU_unsigned.apk
zipalign -p -f 4 GeelyHvac_RU_unsigned.apk GeelyHvac_RU.apk
apksigner sign --key ../platform/platform.pk8 --cert ../platform/platform.x509.pem GeelyHvac_RU.apk
```

Откат — установить `GeelyHvac_original.apk` тем же способом.
