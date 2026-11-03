#!/usr/bin/env bash
# Sync only the extracted IL2CPP metadata; never clear application data or change mode settings.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p backups build
PACKAGE=com.zeekr.carlauncher3d
CACHE_DIR=/data/media/0/Android/data/com.zeekr.carlauncher3d/files/il2cpp/Metadata
CACHE="$CACHE_DIR/global-metadata.dat"
STAMP="$(date +%Y%m%d_%H%M%S)_$$"
BK="backups/runtime_metadata_$STAMP.dat"
PREPARED="build/runtime_metadata_$STAMP.dat"
REMOTE="$CACHE_DIR/global-metadata.staged-$STAMP.dat"
if ! adb shell test -f "$CACHE"; then
    echo 'Не найден доступный извлечённый файл метаданных Unity (нужен root ADB).'; exit 1
fi
adb pull "$CACHE" "$BK"
REMOTE_HASH=$(adb shell sha256sum "$CACHE" | tr -d '\r' | awk '{print $1}')
[ "$REMOTE_HASH" = "$(sha256sum "$BK" | awk '{print $1}')" ] || {
    echo 'Контрольная сумма бэкапа метаданных не совпала'; exit 1;
}
if [ "${1:-}" = --restore ]; then
    [ $# -eq 2 ] || { echo 'Использование: ./sync-runtime.sh --restore backups/<файл>.dat'; exit 1; }
    python3 tools/cache_sync.py "$2" "$PREPARED" --restore
else
    [ $# -eq 0 ] || { echo 'Использование: ./sync-runtime.sh [--restore backups/<файл>.dat]'; exit 1; }
    python3 tools/cache_sync.py "$BK" "$PREPARED"
fi
EXPECTED=$(sha256sum "$PREPARED" | awk '{print $1}')
if [ "$REMOTE_HASH" = "$EXPECTED" ]; then
    echo "Unity уже использует нужные метаданные. Бэкап: $BK"; exit 0
fi
trap 'adb shell rm -f "$REMOTE" >/dev/null 2>&1 || true' EXIT
adb push "$PREPARED" "$REMOTE"
UPLOADED=$(adb shell sha256sum "$REMOTE" | tr -d '\r' | awk '{print $1}')
[ "$UPLOADED" = "$EXPECTED" ] || { echo 'Не совпал SHA-256 переданного файла'; exit 1; }
adb shell chown 1000:1015 "$REMOTE"
adb shell chmod 660 "$REMOTE"
# Stop readers before the atomic replacement; the separately managed vehicle mode is untouched.
adb shell am force-stop ecarx.launcher3
adb shell am force-stop "$PACKAGE"
adb shell mv -f "$REMOTE" "$CACHE"
ACTUAL=$(adb shell sha256sum "$CACHE" | tr -d '\r' | awk '{print $1}')
[ "$ACTUAL" = "$EXPECTED" ] || { echo "Ошибка проверки. Бэкап: $BK"; exit 1; }
adb shell am start -W -n ecarx.launcher3/.Launcher -f 0x10200000
echo "Метаданные Unity синхронизированы. SHA-256: $ACTUAL"
echo "Бэкап: $BK"
