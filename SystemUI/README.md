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
| 06-ru-pma | остальные тексты PMA, зашитые в разметку и код: караоке, режим охраны, магазин приложений, беспроводная зарядка, качество воздуха, сценарии, громкость, тосты; дни недели и подписи виджетов дока в `values-ru` |
| 07-yandex-note.patch | нота в нижней панели запускает **Яндекс Музыку** вместо QQ Music (см. ниже) |

`06` сгенерирован скриптом `tools/ru_pma.py` (словарь китайский → русский). Править перевод — там:
`python3 tools/ru_pma.py <чистый сток + 01–05>` и заново снять diff.

## Структура

```
SystemUI_original.apk       стоковый SystemUI текущей прошивки
SystemUI_mod/               apktool-проект: сток + patches/
patches/                    доработки (unified diff)
tools/ru_pma.py             генератор патча 06 (словарь перевода)
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

## Нота в нижней панели → Яндекс Музыка

Нижняя панель с температурой и иконками — это SystemUI (`NavigationBarControllerForPMA`), а не лаунчер.
Нажатие на ноту вызывает `startMedia(pkg, activityName, ...)` с пакетом QQ Music (`com.zeekr.media.qq`).
Патч `07-yandex-note.patch` в начале `startMedia` подменяет пакет на `ru.yandex.music`,
активити — на `ru.yandex.music.main.MainScreenActivity`; остальная логика запуска (стек, флаги) не тронута.

Приложение просто открывается, воспроизведение не стартует. Карточка медиа с кнопками ⏮ ▶ ⏭ — в лаунчере,
см. `../XCLauncher3/README.md`.

Установка — как обычно (`./install.sh` ставит `systemui_patched_final.apk` и перезагружает машину).

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

## Что оставлено на китайском намеренно

- логи и события аналитики (`track*`, sensorsdata) — на экран не выводятся;
- уровни загрязнения 优/良/轻度污染… в `Pm25*PopupWindow` — это сравнение со строкой, которую присылает машина;
- метки приложений дока по умолчанию в `PullDockDataUtils` — по ним идёт сопоставление.
