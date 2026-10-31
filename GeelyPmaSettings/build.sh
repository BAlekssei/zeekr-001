#!/usr/bin/env bash
# Сборка русского GeelySettings из стока:
#   GeelySettings_original.apk -> apktool d -s -> ru/*.xml + patches/ -> apktool b -> zipalign -> apksigner
# Код (dex) не трогается — меняются только ресурсы.
# Нужны в PATH: apktool, zipalign, apksigner (Android build-tools), patch, python3
set -euo pipefail
cd "$(dirname "$0")"

KEY=../platform/platform.pk8
CERT=../platform/platform.x509.pem
SRC=GeelySettings_original.apk
OUT=GeelySettings_RU.apk
MOD=build/GeelySettings_mod

[ -f "$SRC" ] || { echo "Нет $SRC — см. ./update.sh"; exit 1; }

echo "== 1. Распаковка стока"
# Фреймворк — встроенный в apktool, НЕ framework-res.apk машины: приложение собрано под API 34
# и использует атрибуты (android:shell, foregroundServiceType, allowClickWhenDisabled), которых
# нет в Android 9 машины. С фреймворком машины apktool их теряет и сборка падает.
# Приватных ресурсов android: GeelySettings не использует.
rm -rf build/framework && mkdir -p build/framework   # чистый каталог: только встроенный фреймворк apktool
rm -rf "$MOD"
apktool d -f -s "$SRC" -o "$MOD" -p build/framework
grep -E 'versionName' "$MOD/apktool.yml" || true

echo "== 2. Перевод (ru/*.xml)"
python3 tools/ru_settings.py apply "$MOD"

echo "== 3. Патчи разметки"
fail=0
for p in patches/*.patch; do
  if patch -d "$MOD" -p1 -N --fuzz=3 -r - < "$p"; then
    echo "   OK   $(basename "$p")"
  else
    echo "   FAIL $(basename "$p")  <-- нужен ручной перенос в $MOD"; fail=1
  fi
done
[ "$fail" = 0 ] || exit 1

echo "== 4. Сборка и подпись"
apktool b -f "$MOD" -o build/geelysettings_unsigned.apk -p build/framework
zipalign -p -f 4 build/geelysettings_unsigned.apk build/geelysettings_align.apk
apksigner sign --key "$KEY" --cert "$CERT" --out "$OUT" build/geelysettings_align.apk
apksigner verify --print-certs "$OUT" | head -3
echo "Готово: $OUT"
