#!/usr/bin/env bash
# Сборка AvasOff: apktool -> zipalign -> apksigner (platform keys из ../platform)
# Нужны в PATH: apktool, zipalign, apksigner (Android build-tools)
set -euo pipefail
cd "$(dirname "$0")"

KEY=../platform/platform.pk8
CERT=../platform/platform.x509.pem
OUT=avasoff.apk

mkdir -p build
apktool b -f src -o build/avasoff_unsigned.apk
zipalign -p -f 4 build/avasoff_unsigned.apk build/avasoff_align.apk
apksigner sign --key "$KEY" --cert "$CERT" --out "$OUT" build/avasoff_align.apk
apksigner verify --print-certs "$OUT" | head -3
echo "Готово: $OUT"
