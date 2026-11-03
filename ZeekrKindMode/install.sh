#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
APK=ZeekrKindMode_RU.apk
PACKAGE=com.geely.pma.bs.modes
[ -f "$APK" ] || { echo "Нет $APK — сначала ./build.sh"; exit 1; }
apksigner verify "$APK"
CURRENT=$(adb shell pm path "$PACKAGE" | tr -d '\r' | sed -n 's/^package://p')
[ -n "$CURRENT" ] && [ "$(printf '%s\n' "$CURRENT" | wc -l)" -eq 1 ] || {
    echo 'Не найден единственный APK ZeekrKindMode'; exit 1;
}
mkdir -p backups
BK="backups/ZeekrKindMode_$(date +%Y%m%d_%H%M%S).apk"
REMOTE_HASH=$(adb shell sha256sum "$CURRENT" | tr -d '\r' | awk '{print $1}')
for CANDIDATE in ZeekrKindMode_original.apk backups/*.apk; do
    if [ -f "$CANDIDATE" ] && \
        [ "$REMOTE_HASH" = "$(sha256sum "$CANDIDATE" | awk '{print $1}')" ]; then
        cp "$CANDIDATE" "$BK"
        break
    fi
done
if [ ! -f "$BK" ]; then
    echo 'Сохраняю установленную версию...'
    adb pull "$CURRENT" "$BK"
fi
[ "$REMOTE_HASH" = "$(sha256sum "$BK" | awk '{print $1}')" ] || {
    echo 'Контрольная сумма бэкапа не совпала'; exit 1;
}
REMOTE="/data/local/tmp/ZeekrKindMode_RU_$$.apk"
trap 'adb shell rm -f "$REMOTE" >/dev/null 2>&1 || true' EXIT
echo "Передаю $APK на машину (по Wi-Fi может занять несколько минут)..."
adb push "$APK" "$REMOTE"
echo 'Передача завершена. Android проверяет и устанавливает APK...'
RESULT=$(adb shell pm install -r "$REMOTE" | tr -d '\r')
printf '%s\n' "$RESULT"
[ "$RESULT" = Success ] || { echo 'Установка не подтверждена Android'; exit 1; }
echo "Установлено. Бэкап: $BK"
echo 'Откройте подтверждение «Кемпинг» в 3D-лаунчере. Сервис переподключится автоматически.'
