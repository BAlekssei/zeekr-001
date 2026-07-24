# 1. Build APK from source using Apktool
apktool b SystemUI_mod/ -o systemui_patched.apk

# 2. Align the APK package
zipalign -p -f 4 systemui_patched.apk systemui_patched_align.apk

# 3. Sign the APK with platform keys (Linux syntax)
apksigner sign --key platform.pk8 --cert platform.x509.pem --out systemui_patched_final.apk systemui_patched_align.apk

# 4. Connect to device and prepare partition
adb root
adb remount

# 5. Push the patched APK to system private apps
adb push systemui_patched_final.apk /system/priv-app/SystemUI/SystemUI.apk

# 6. Set correct permissions and ownership
adb shell chmod 644 /system/priv-app/SystemUI/SystemUI.apk
adb shell chown root:root /system/priv-app/SystemUI/SystemUI.apk

# 7. Reboot the system to apply changes
adb reboot