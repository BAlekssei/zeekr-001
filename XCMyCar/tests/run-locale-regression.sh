#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
SDK="${ANDROID_SDK_ROOT:-${ANDROID_HOME:-$HOME/Android/Sdk}}"
BT="${ANDROID_BUILD_TOOLS:-$SDK/build-tools/34.0.0}"
export PATH="${JAVA_HOME:+$JAVA_HOME/bin:}$PATH"
mkdir -p build/regression/classes build/regression/dex
javac --release 8 -d build/regression/classes tests/LocaleRegression.java
"$BT/d8" --min-api 28 --lib "$SDK/platforms/android-28/android.jar" \
    --output build/regression/dex build/regression/classes/LocaleRegression.class
adb push XCMyCar_RU.apk /data/local/tmp/XCMyCar-locale-test.apk
adb push build/regression/dex/classes.dex /data/local/tmp/XCMyCar-locale-test.dex
adb shell 'dalvikvm64 -cp /data/local/tmp/XCMyCar-locale-test.dex:/data/local/tmp/XCMyCar-locale-test.apk LocaleRegression'
