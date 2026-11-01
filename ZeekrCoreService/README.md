# ZeekrCoreService — доступ медиацентра к собственному модулю (`com.zeekr.coreservice`)

`coreservice` выдаёт приложениям доступ к модулям Zeekr SDK по подписанной лицензии (`assets/zeekr-api-license.txt`).
Медиацентру нужно обращаться к модулю `mediacenter`, чтобы зарегистрировать Яндекс Музыку как источник
(`../MediaCenter/`), а в его лицензии этого модуля нет.

## Файлы

| Файл | Что это |
|---|---|
| `ZeekrCoreService_original_1.2.3.apk` | coreservice, снятый с машины (`/system/app/ZeekrCoreService`) |
| `ZeekrCoreService_mediacenter_self.apk` | **наша сборка** |
| `mediacenter_self/` | исходники: патч, `build.sh` |

## Что меняет патч

`SignatureVerificationManager.getSupportServiceNames`: если процесс — `com.zeekr.mediacenter`, к списку его модулей
добавляется `mediacenter`. Остальные приложения и модули не затронуты, лицензии не проверяются иначе.

## Сборка и установка

```bash
cd mediacenter_self && ./build.sh               # -> ../ZeekrCoreService_mediacenter_self.apk (меняется только classes.dex)
adb install -r -g ZeekrCoreService_mediacenter_self.apk     # ставится обновлением поверх системного
```

Откат: `adb install -r -d -g ZeekrCoreService_original_1.2.3.apk`.
Привязано к версии `1.2.3`; на другой версии патч может не наложиться.
