# SystemUI (Zeekr 001, PMA)

Текущая база: **PMA_V6.2.0.00** (`smile_gvmq-userdebug 9 PQ1A.190105.004 528`).

Доработки (лежат отдельными патчами в `patches/`):

| Патч | Что делает |
|---|---|
| 01-CalendarDialog.smali | заголовок календаря «Окт 2026» вместо `2026年10月`, высота окна 802→682 px, метод `getMonthText` |
| 02-CalendarDialog_1.smali | то же при перелистывании месяцев |
| 03-DateAndClockLayoutForPMA.smali | дата в статус-баре по-русски: месяцы, дни недели Пн…Вс, без иероглифов |
| 04-pma_calender.xml | русская шапка дней недели, неделя с понедельника, лунный календарь скрыт |
| 05-pma_status_bar.xml | «Режим отладки» вместо `调试模式` |

Файлы:
- `SystemUI_original.apk` — стоковый APK текущей прошивки
- `SystemUI_mod/` — распаковка apktool с наложенными патчами
- `systemui_patched_final.apk` — готовый, подписан platform-ключом
- `port.sh` — перенос патчей на новую прошивку

## Перенос на новую прошивку

```bash
adb root
adb pull /system/priv-app/SystemUI/SystemUI.apk
adb pull /system/framework/framework-res.apk   # обязательно: без него apktool портит ссылки @android:
APKTOOL_JAR=apktool.jar SIGNER_JAR=uber-apk-signer.jar ./port.sh SystemUI.apk framework-res.apk
```

Если патч не накладывается, скрипт остановится; этот файл переносится вручную.

## Сборка из SystemUI_mod вручную

```bash
apktool if framework-res.apk          # фреймворк машины
apktool b SystemUI_mod/ -o systemui_patched.apk
zipalign -p -f 4 systemui_patched.apk systemui_patched_align.apk
apksigner sign --key platform.pk8 --cert platform.x509.pem --out systemui_patched_final.apk systemui_patched_align.apk
```

## Установка

```bash
adb root
adb remount
adb push systemui_patched_final.apk /system/priv-app/SystemUI/SystemUI.apk
adb shell chmod 644 /system/priv-app/SystemUI/SystemUI.apk
adb shell chown root:root /system/priv-app/SystemUI/SystemUI.apk
adb reboot
```

Обновление прошивки (OTA) затирает SystemUI стоковым — после обновления запустите `port.sh` заново.
