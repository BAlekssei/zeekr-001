#!/usr/bin/env bash
# Сборка ZeekrExporter.apk (read-only проба ECARX adaptapi). Нужны JDK 17 и Android build-tools 34 + android-28.
set -euo pipefail
cd "$(dirname "$0")"
S=${ANDROID_SDK:-$HOME/Android/Sdk}; BT=$S/build-tools/34.0.0; JAR=$S/platforms/android-28/android.jar
export PATH=${JAVA_HOME:+$JAVA_HOME/bin:}$PATH
rm -rf build; mkdir -p build/classes
javac --release 8 -cp "$JAR" -d build/classes src/zeekr/exporter/*.java
$BT/d8 --min-api 28 --lib "$JAR" --output build $(find build/classes -name "*.class")
$BT/aapt2 link -I "$JAR" --manifest AndroidManifest.xml --min-sdk-version 28 --target-sdk-version 28 -o build/base.apk
(cd build && zip -q -j base.apk classes.dex)
$BT/zipalign -f 4 build/base.apk build/aligned.apk
$BT/apksigner sign --key ../platform/platform.pk8 --cert ../platform/platform.x509.pem --out ZeekrExporter.apk build/aligned.apk
