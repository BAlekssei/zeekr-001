# XCLauncher3 — основной лаунчер (`ecarx.launcher3`)

Лаунчер Zeekr 001 (главный экран, карточки, карта, карточка медиа). `sharedUserId=android.uid.system`,
подписан platform-ключом, лежит в `/data/app/ecarx.launcher3-*/base.apk` (обновлённая системная копия).

## Файлы

| Файл | Что это |
|---|---|
| `XCLauncher3_original_3.0.2747.apk` | **стоковый** лаунчер, снятый с машины (прошивка 5.6d, `3.0.2747+20260616`). База для `ya_widget` |
| `XCLauncher3_original_5.6d.apk` | стоковый лаунчер прошивки 5.6 (`3.0.2745+20260203`) — база для `mod_final` |
| `XCLauncher3_mod_final.apk` | готовая сборка на базе 5.6: перевод части текста, навигатор Яндекс.Карты в карточке, погода. **Исходников в репозитории нет** — файл единственная копия |
| `XCLauncher3_ya_widget.apk` | готовая сборка на базе `3.0.2747`: Яндекс Музыка вместо QQ Music в карточке медиа (см. ниже) |
| `ya_widget/` | исходники этой сборки: патч, новые классы, `build.sh` |

> `mod_final` и `ya_widget` сделаны на разных базах: `ya_widget` **не** включает перевод и Яндекс.Карты из `mod_final`.
> Ставить `mod_final` поверх `3.0.2747` — это понижение версии (`adb install -d`).

## Яндекс Музыка в карточке медиа (`ya_widget`)

Карточка медиа на главном экране (виджет `com.zeekr.mediawidget`, внутри лаунчера) получает данные только от
штатного «Медиацентра» (`com.zeekr.mediacenter`) для приложений Zeekr (QQ Music, радио, USB, Bluetooth).
Яндекс Музыка про медиацентр ничего не знает, но публикует обычную Android `MediaSession`. Патч превращает
эту сессию в карточку.

### Как это работает

```
Яндекс Музыка ── MediaSession ──► YandexBridge ──► MediaCenterRepository.mediaLiveData ──► MediaCard / CommonAudioView
                                      ▲                                                       │ кнопки ⏮ ▶/⏸ ⏭
                                      └──────── MediaController.transportControls ◄───────────┘
                                                (через MediaCenterPlayControl)
```

| Что | Где | Как |
|---|---|---|
| Новый класс `YandexBridge` (+ `$Cb`, `$Lst`, `$Tick`) | `ya_widget/smali_classes2/.../mediawidget/yandex/` | Слушает активные медиасессии (`MediaSessionManager`, право `MEDIA_CONTENT_CONTROL` есть у лаунчера как у system uid), находит `ru.yandex.music`, на каждое изменение метаданных/состояния собирает `Media` и кладёт его в `mediaLiveData`; раз в секунду публикует позицию в `progressLiveData` |
| Тип карточки | `Media.mediaType = 0x65` | выбирает вид `CommonAudioView` (обложка, название, исполнитель, ⏮ ▶ ⏭, прогресс) |
| Статус воспроизведения | `mapStatus` | карточка считает «играет» статусы Zeekr `1`/`11`, «загрузка» — `6`; Android `PLAYING(3)` → `1`, `BUFFERING(6)` → `6`, остальное → `2`. `Media.playStatus` — `final`, поэтому пишется через reflection |
| Обложка | `coverOf` | bitmap из метаданных сохраняется в кэш лаунчера (`ya_cover_0..3.png`), иначе берётся URI обложки (шаблон `%%` → `400x400`). Путь пересчитывается только при смене трека |
| Кнопки | `MediaCenterPlayControl` (патч в начале `play`/`pause`/`playNext`/`playPre`) | если в карточке сейчас Яндекс (`YandexBridge.isActive()`), команда уходит в `MediaController.getTransportControls()` и в медиацентр не попадает |
| Строка в списке источников | `SoundsourceAdapter`, `SoundSourceView` | строка QQ Music (`com.zeekr.media.qq`) показывается как «Яндекс Музыка» с иконкой приложения; нажатие выбирает Яндекс источником карточки (без сессии — заглушка «Нажмите ▶») |
| Запуск моста | `MediaCard.init` | `YandexBridge.start(context)` |

Если сессии Яндекса ещё нет, ▶ шлёт медиакнопку Play (поднимает сервис Яндекса) и открывает приложение.

### Ограничения

- нет перемотки по полосе прогресса, ♥ и режима повтора для Яндекса;
- пока Яндекс не выбран и не играл, карточка показывает прежний источник;
- `YandexBridge` пишет в лог (`adb logcat | grep YandexBridge`) строку на каждое обновление — так проще отлаживать;
- привязано к именам классов лаунчера `3.0.2747`; на другой версии патч может не наложиться (тогда править руками).

### Сборка

```bash
cd ya_widget
./build.sh                       # -> ../XCLauncher3_ya_widget.apk
./build.sh <другой стоковый.apk>  # на другую версию лаунчера
```

Меняется только `classes2.dex`; остальное берётся из стока без изменений. Подпись — platform-ключ из `../../platform`.

### Установка

```bash
adb install -r -g XCLauncher3_ya_widget.apk       # та же версия и подпись — обычный -r
```

Откат: `adb install -r -g -d XCLauncher3_original_3.0.2747.apk`.
После установки лаунчер перезапускается, 3D-вид машины грузится около минуты.

Нота в **нижней панели** — это не лаунчер, а SystemUI; она переделана отдельно (см. `../SystemUI/README.md`).

## `mod_final` (на базе 5.6)

Установка (из старой заметки автора):

```bash
adb root && adb remount
adb install -r -d -g XCLauncher3_mod_final.apk
```

Сборка велась так (исходный проект `check_mod-nav+wether/` в репозиторий не попал):

```bash
apktool b check_mod-nav+wether/ -o XCLauncher3_mod.apk
zipalign -p -f 4 XCLauncher3_mod.apk XCLauncher3_mod_align.apk
apksigner sign --key ../platform/platform.pk8 --cert ../platform/platform.x509.pem --out XCLauncher3_mod_final.apk XCLauncher3_mod_align.apk
```
