# MediaCenter — Яндекс Музыка как штатный источник (`com.zeekr.mediacenter`)

Штатный медиацентр умеет подключать приложение с `MediaBrowserService` как источник (`OverseaMediaCenter`
+ `AbstractMediaBrowser`): регистрирует его как `MusicClient`, дальше трек уходит на **приборку (DIM)**,
в док и виджеты, а **кнопки руля** и «шайба» управляют им как штатным плеером. Для Яндекс Музыки такого
«браузера» не было — патч его добавляет.

## Файлы

| Файл | Что это |
|---|---|
| `MediaCenter_original_3.2.30.apk` | медиацентр, снятый с машины (прошивка 5.6d) |
| `MediaCenter_yandex_cluster.apk` | **наша сборка**: стоковый + `YandexBrowser` |
| `yandex_cluster/` | исходники: патч `OverseaMediaCenter.init`, класс `YandexBrowser`, `build.sh` |

`YandexBrowser` подключается к `ru.yandex.music/.common.media.mediabrowser.MusicBrowserService`,
тип источника `6` (`SOURCE_TYPE_ONLINE`), имя «Яндекс Музыка». Добавляется в `init`, если приложение установлено.

## Что делают патчи

| Патч | Что |
|---|---|
| `01-yandex-source` | `OverseaMediaCenter.init`: добавляет `YandexBrowser` в список «браузеров» |
| новый класс `YandexBrowser` | `MediaBrowser`-источник Яндекс Музыки; `onSourceSelected` (выбор в лаунчере/доке/голосом) просто запускает `play()`, а без сессии открывает приложение — Яндекс не знает customAction `onSourceSelected`, который шлёт база |
| `02-hide-disabled-sources` | `MediaPartDao.addToListIfNeed`: в список источников не попадают `com.zeekr.media.qq` (QQ Music) и `com.zeekr.media` («极享»): список берётся из базы `tb_media_part_app_info`, где остаются записи от прошлых регистраций, даже если приложение отключено |
| `03-radio-ru` | название источника «收音机» → «Радио» (зашито в `MediaPartDao`) |

## Как это работает

```
Яндекс Музыка ── MediaSession / MusicBrowserService ──► YandexBrowser (в процессе медиацентра)
                                                          │ MediaCenterAPI.registerMusic  (нужен патч coreservice)
                                                          ▼
                       медиацентр: клиент ru.yandex.music, источник типа 6, фокус
                          ├─► приборка (DimInteractionHelper → IMediaInteraction)
                          ├─► док / карточка медиа / список источников
                          └─► кнопки руля и «шайба» (MediaKeyReceiver, ICtrlDimCallback) → play/pause/next/prev
```

Проверено на машине: трек и обложка на приборке, кнопки руля и «шайба» управляют Яндексом, выбор Яндекса
из списка источников после радио запускает воспроизведение.

## Обязательно вместе с `ZeekrCoreService/`

Медиацентр регистрирует источники через Zeekr SDK, а `coreservice` пускает к модулю `mediacenter` только
приложения с подписанной лицензией (`zeekr-api-license.txt`); у самого медиацентра её нет, поэтому без
патча `coreservice` приходит «сервис недоступен текущему приложению» (код 305).
См. `../ZeekrCoreService/README.md`.

## QQ Music и «极享» отключены

Яндекс заменяет их, поэтому оба приложения остановлены и отключены (переживает перезагрузку, но не сброс данных):

```bash
adb shell "am force-stop com.zeekr.media.qq; pm disable-user --user 0 com.zeekr.media.qq"
adb shell "am force-stop com.zeekr.media;    pm disable-user --user 0 com.zeekr.media"
# вернуть:
adb shell pm enable com.zeekr.media.qq; adb shell pm enable com.zeekr.media
```

Без патча `02-hide-disabled-sources` их строки остались бы в списке источников.

## Сборка и установка

```bash
cd yandex_cluster && ./build.sh                 # -> ../MediaCenter_yandex_cluster.apk (меняется только classes2.dex)
adb install -r -g MediaCenter_yandex_cluster.apk
```

Откат: `adb install -r -d -g MediaCenter_original_3.2.30.apk`.

## Проверка

`adb logcat | grep MediaBrowserWrapper` — должны быть `onAPIReady->success=true ... package=ru.yandex.music`
и `onBrowserConnected mMusicClientToken`.

## Ограничения

- `OverseaMediaCenter` рассчитан на Android 12: на Android 9 слушатель активных сессий падает
  (`NoSuchMethodError`, `OnMediaKeyEventSessionChangedListener` нет); подключение через `MediaBrowser` от него не зависит;
- медиацентр местами жёстко привязан к `com.zeekr.media.qq` (выбор источника типа `6` с руля/дока, виджет, голос):
  при отключённом QQ эти ветки молча ничего не находят; голосовые команды на музыку могут не работать;
- названия «Bluetooth Music - Not connected» / «USB Music - Not connected» не переводились;
- привязано к версии `3.2.30`; на другой версии патч может не наложиться.
