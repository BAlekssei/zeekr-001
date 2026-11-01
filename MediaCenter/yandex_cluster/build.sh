#!/usr/bin/env bash
# Сборка MediaCenter_yandex_cluster.apk: стоковый медиацентр + Яндекс Музыка как штатный источник
# (приборка, док, кнопки руля).
#
#   ./build.sh [<стоковый com.zeekr.mediacenter.apk>]   # по умолчанию ../MediaCenter_original_3.2.30.apk
#
# Меняется только classes2.dex; остальное — байт-в-байт из стока. Подпись — platform-ключ.
# Нужны в PATH: apktool, patch, zip, zipalign, apksigner.
set -euo pipefail
cd "$(dirname "$0")"

STOCK="${1:-../MediaCenter_original_3.2.30.apk}"
KEY=../../platform/platform.pk8
CERT=../../platform/platform.x509.pem
OUT=../MediaCenter_yandex_cluster.apk

rm -rf build; mkdir -p build

echo "== 1. Распаковка кода (без ресурсов)"
apktool d -f -r "$STOCK" -o build/src

echo "== 2. Патч + новые классы"
for p in patches/*.patch; do patch -d build/src -p1 -N < "$p"; done
cp -r smali_classes2/. build/src/smali_classes2/

echo "== 3. Сборка dex"
apktool b -f build/src -o build/nores.apk
ls build/src/build/apk/classes2.dex

echo "== 4. Подмена classes2.dex в стоковом APK"
cp "$STOCK" build/base.apk
( cd build/src/build/apk && zip -q -u ../../../base.apk classes2.dex )
zip -q -d build/base.apk 'META-INF/*'

echo "== 5. zipalign + подпись platform-ключом"
zipalign -p -f 4 build/base.apk build/align.apk
apksigner sign --key "$KEY" --cert "$CERT" --out "$OUT" build/align.apk
apksigner verify --print-certs "$OUT" | head -2
echo "Готово: $OUT"
