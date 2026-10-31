#!/usr/bin/env bash
# Сборка SystemUI: apktool -> zipalign -> apksigner (platform keys и framework-res.apk из ../platform)
# Нужны в PATH: apktool, zipalign, apksigner (Android build-tools)
set -euo pipefail
cd "$(dirname "$0")"

KEY=../platform/platform.pk8
CERT=../platform/platform.x509.pem
FW=../platform/framework-res.apk
OUT=systemui_patched_final.apk

mkdir -p build/framework
# фреймворк машины: без него aapt2 не найдёт приватные ресурсы android:
apktool if "$FW" -p build/framework
apktool b -f SystemUI_mod -o build/systemui_unsigned.apk -p build/framework
zipalign -p -f 4 build/systemui_unsigned.apk build/systemui_align.apk
apksigner sign --key "$KEY" --cert "$CERT" --out "$OUT" build/systemui_align.apk
apksigner verify --print-certs "$OUT" | head -3
echo "Готово: $OUT"
