# GeelyPmaSettings — русификация основных настроек авто

Приложение `com.geely.pma.settings` (`/system/app/GeelySettings/GeelySettings.apk`),
прошивка **5.6d**, версия приложения `dc8155-20260603`.

Перевод перенесён со старой русской сборки (`dc8155-20260430`) по именам ресурсов.
Код (dex) не меняется — только ресурсы, поэтому перенос на новые версии обычно проходит сам.

## Что изменено

| Где | Что |
|---|---|
| `ru/strings.xml` | 1893 строки → `res/values/strings.xml` (интерфейс по-русски; китайские названия операторов и `(U盘)` → латиницей, единое написание Wi‑Fi) |
| `ru/arrays.xml` | 80 списков (режимы, вкладки, уровни…) → `res/values/arrays.xml` и `res/values-zh-rCN/arrays.xml` |
| `patches/01-ota_frag.xml` | экран обновлений: «Текущая версия», «Журнал обновлений» (текст зашит в разметку) |
| `patches/02-quick_settings_hmi_fragment.xml` | быстрые настройки режима вождения: шрифт переключателя 17sp и кнопка «Изменить» по ширине текста — русские подписи длиннее |

Списки кладутся и в `values-zh-rCN`, чтобы оставаться русскими, даже если машина сама вернула язык `zh-CN`
(строки в `values-zh-rCN` не тронуты).

Перевод правится прямо в `ru/*.xml` (готовые элементы `<string>` / `<string-array>`), затем `./build.sh`.
Строки, которые остались на китайском, `build.sh` перечислит сам.

Не переведено: тексты, зашитые в код (dex), — как и в старой сборке.

## Структура

```
GeelySettings_original.apk   стоковый APK текущей прошивки
GeelySettings_RU.apk         готовый APK, подписан platform-ключом
ru/                          перевод (strings.xml, arrays.xml)
patches/                     правки разметки (unified diff)
tools/ru_settings.py         наложение перевода / снятие перевода со старой русской сборки
build.sh                     сборка: apktool d -> ru + patches -> apktool b -> zipalign -> apksigner
install.sh                   установка по adb (с бэкапом текущего APK)
update.sh                    перенос на новую прошивку
```

Распакованный проект не хранится — `build.sh` каждый раз разворачивает сток в `build/GeelySettings_mod`
(APK весит ~130 МБ, хранить его копию в распакованном виде незачем).

Ключи — в `../platform`. Нужны в PATH: `apktool` (3.x), `zipalign`, `apksigner` (Android build-tools), `patch`, `python3`.

**Фреймворк — встроенный в apktool, не `framework-res.apk` машины.** Приложение собрано под API 34
и использует атрибуты (`android:shell`, `foregroundServiceType`, `allowClickWhenDisabled`), которых нет
в Android 9 машины: с её фреймворком apktool их теряет при распаковке и `aapt2` падает на сборке.
Приватных ресурсов `android:` приложение не использует, так что встроенного достаточно.

## Сборка

```bash
./build.sh        # -> GeelySettings_RU.apk
```

## Установка

```bash
./install.sh      # root, remount, бэкап GeelySettings_backup_<дата>.apk, push, reboot
```

Откат на сток (или на бэкап):

```bash
adb root && adb remount
adb push GeelySettings_original.apk /system/app/GeelySettings/GeelySettings.apk
adb shell chmod 644 /system/app/GeelySettings/GeelySettings.apk
adb reboot
```

## Новая прошивка

Обновление прошивки затирает приложение стоковым. Подключиться к машине и:

```bash
./update.sh                       # скачает GeelySettings.apk с машины и соберёт
./update.sh GeelySettings.apk     # или из готового файла
./install.sh
```

`build.sh` выведет:
- строки из `ru/`, которых нет в новой версии (удалены — просто лишние);
- новые строки с иероглифами — дописать перевод в `ru/strings.xml`;
- несовпадение плейсхолдеров `%s`/`%d` или числа пунктов в списке — такую строку надо сверить, иначе возможен вылет.

Если не наложился патч из `patches/`, правка переносится вручную в `build/GeelySettings_mod`.

Снять перевод с чужой/старой русской сборки (так получен текущий `ru/`):

```bash
apktool d -s old_RU.apk -o build/old
apktool d -s GeelySettings_original.apk -o build/new
python3 tools/ru_settings.py extract build/old build/new
```
