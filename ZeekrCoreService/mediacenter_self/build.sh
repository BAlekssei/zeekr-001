#!/usr/bin/env bash
# Сборка ZeekrCoreService_mediacenter_self.apk: стоковый coreservice + разрешение модуля `mediacenter`
# процессу com.zeekr.mediacenter (нужно, чтобы медиацентр мог подключить Яндекс Музыку как источник).
#
#   ./build.sh [<стоковый ZeekrCoreService.apk>]   # по умолчанию ../ZeekrCoreService_original_1.2.3.apk
#
# Меняется только classes.dex, остальное — из стока. Подпись — platform-ключ.
# Нужны в PATH: apktool, patch, zip, zipalign, apksigner.
set -euo pipefail
cd "$(dirname "$0")"

STOCK="${1:-../ZeekrCoreService_original_1.2.3.apk}"
KEY=../../platform/platform.pk8
CERT=../../platform/platform.x509.pem
OUT=../ZeekrCoreService_mediacenter_self.apk

rm -rf build; mkdir -p build

echo "== 1. Распаковка кода (без ресурсов)"
apktool d -f -r "$STOCK" -o build/src

echo "== 2. Патч"
for p in patches/*.patch; do patch -d build/src -p1 -N < "$p"; done

echo "== 3. Сборка dex"
apktool b -f build/src -o build/nores.apk
ls build/src/build/apk/classes.dex

echo "== 4. Подмена classes.dex в стоковом APK"
cp "$STOCK" build/base.apk
( cd build/src/build/apk && zip -q -u ../../../base.apk classes.dex )
zip -q -d build/base.apk 'META-INF/*'

echo "== 5. zipalign + подпись platform-ключом"
zipalign -p -f 4 build/base.apk build/align.apk
apksigner sign --key "$KEY" --cert "$CERT" --out "$OUT" build/align.apk
apksigner verify --print-certs "$OUT" | head -2
echo "Готово: $OUT"
