# SystemUI — русификация статус-бара и календаря

Прошивка **5.6d** (внутренняя версия PMA_V6.2.0.00, `smile_gvmq-userdebug 9 PQ1A.190105.004 528`).

## Что изменено

Доработки лежат отдельными патчами в `patches/` и накладываются на стоковый APK:

| Патч | Что делает |
|---|---|
| 01-CalendarDialog.smali | заголовок календаря «Окт 2026» вместо `2026年10月`, высота окна 802→682 px, метод `getMonthText` |
| 02-CalendarDialog_1.smali | то же при перелистывании месяцев |
| 03-DateAndClockLayoutForPMA.smali | дата в статус-баре по-русски: месяцы, дни недели Пн…Вс, без иероглифов |
| 04-pma_calender.xml | русская шапка дней недели, неделя с понедельника, лунный календарь скрыт |
| 05-pma_status_bar.xml | «Режим отладки» вместо `调试模式` |

Строки локалей (`values-ru` и др.) не меняются — они стоковые.

## Структура

```
SystemUI_original.apk       стоковый SystemUI текущей прошивки
SystemUI_mod/               apktool-проект: сток + patches/
patches/                    доработки (unified diff)
systemui_patched_final.apk  готовый APK, подписан platform-ключом
build.sh                    сборка: apktool -> zipalign -> apksigner
install.sh                  установка по adb (с бэкапом текущего SystemUI)
update.sh                   перенос патчей на новую прошивку
```

Ключи и `framework-res.apk` машины — в `../platform`.

Нужны в PATH: `apktool` (3.x), `zipalign`, `apksigner` (Android build-tools), `patch`.

## Сборка

```bash
./build.sh        # -> systemui_patched_final.apk
```

## Установка

```bash
./install.sh      # root, remount, бэкап SystemUI_backup_<дата>.apk, push, reboot
```

Откат на сток (или на бэкап):

```bash
adb root && adb remount
adb push SystemUI_original.apk /system/priv-app/SystemUI/SystemUI.apk
adb shell chmod 644 /system/priv-app/SystemUI/SystemUI.apk
adb reboot
```

## Новая прошивка

Обновление прошивки затирает SystemUI стоковым. Подключиться к машине и:

```bash
./update.sh                  # скачает SystemUI.apk и framework-res.apk, наложит патчи, соберёт
./update.sh SystemUI.apk     # или из готового файла
./install.sh
```

Если патч не наложился, скрипт остановится — правка переносится вручную в `build/SystemUI_new`.
`framework-res.apk` обязателен: без него apktool неверно разворачивает ссылки `@android:`
и сборка падает на приватных ресурсах.

## Ещё не переведено

Тексты, зашитые прямо в PMA-разметку (`res/layout/pma_*.xml`): 主驾/副驾/后排, 卸载, 取消, 确认,
哨兵模式, 应用中心, 低温提醒, 无麦K歌 и др. — около 30 штук. И 10 строк без русского перевода
в `values-ru`: дни недели `mon…sun` (一…日) и подписи виджетов дока
`pma_dock_widget_car_mileage_title` (总里程), `…_car_setting_title` (车辆设置), `…_track_title` (赛道模式).
