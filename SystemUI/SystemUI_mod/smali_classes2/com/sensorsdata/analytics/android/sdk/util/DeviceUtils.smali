.class public Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "command"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "ir":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    move-object v2, v1

    .line 196
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 197
    .local v3, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    .line 198
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 202
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    nop

    .line 210
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    goto :goto_1

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Throwable;
    const-string v7, "SA.Exec"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    nop

    .line 217
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    goto :goto_2

    .line 218
    :catch_1
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SA.Exec"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-object v5

    .line 208
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 205
    :catch_2
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "SA.Exec"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    .end local v3    # "e":Ljava/lang/Throwable;
    if-eqz v2, :cond_1

    .line 210
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 213
    goto :goto_3

    .line 211
    :catch_3
    move-exception v3

    .line 212
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string v4, "SA.Exec"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 217
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 220
    :goto_4
    goto :goto_5

    .line 218
    :catch_4
    move-exception v3

    .line 219
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "SA.Exec"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 223
    :cond_2
    :goto_5
    return-object v1

    .line 208
    :goto_6
    if-eqz v2, :cond_3

    .line 210
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 213
    goto :goto_7

    .line 211
    :catch_5
    move-exception v3

    .line 212
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "SA.Exec"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_7
    if-eqz v0, :cond_4

    .line 217
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 220
    goto :goto_8

    .line 218
    :catch_6
    move-exception v3

    .line 219
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SA.Exec"

    invoke-static {v5, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_8
    throw v1
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 2

    .line 56
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 57
    .local v0, "brand":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    .end local v0    # "brand":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public static getDeviceSize(Landroid/content/Context;)[I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 80
    .local v0, "size":[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 81
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 82
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 83
    .local v5, "rotation":I
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 84
    .local v6, "point":Landroid/graphics/Point;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    .line 85
    invoke-virtual {v4, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 86
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 87
    .local v7, "screenWidth":I
    iget v8, v6, Landroid/graphics/Point;->y:I

    .local v8, "screenHeight":I
    :goto_0
    goto :goto_1

    .line 88
    .end local v7    # "screenWidth":I
    .end local v8    # "screenHeight":I
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xd

    if-lt v7, v8, :cond_1

    .line 89
    invoke-virtual {v4, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 90
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 91
    .restart local v7    # "screenWidth":I
    iget v8, v6, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 93
    .end local v7    # "screenWidth":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 94
    .restart local v7    # "screenWidth":I
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v8

    .line 96
    .restart local v8    # "screenHeight":I
    :goto_1
    invoke-static {v5, v7, v8}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getNaturalWidth(III)I

    move-result v9

    aput v9, v0, v2

    .line 97
    invoke-static {v5, v7, v8}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getNaturalHeight(III)I

    move-result v9

    aput v9, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v3    # "windowManager":Landroid/view/WindowManager;
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "rotation":I
    .end local v6    # "point":Landroid/graphics/Point;
    .end local v7    # "screenWidth":I
    .end local v8    # "screenHeight":I
    goto :goto_2

    .line 98
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 102
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v5, v0, v2

    .line 103
    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v2, v0, v1

    .line 106
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static getHarmonyOSVersion()Ljava/lang/String;
    .locals 3

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "version":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->isHarmonyOs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "hw_sc.build.platform.version"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "getprop hw_sc.build.platform.version"

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 2

    .line 44
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 45
    .local v0, "manufacturer":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 50
    .end local v0    # "manufacturer":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getNaturalHeight(III)I
    .locals 1
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 132
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p2

    :goto_1
    return v0
.end method

.method private static getNaturalWidth(III)I
    .locals 1
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 119
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p1

    :goto_1
    return v0
.end method

.method public static getOS()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 173
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 174
    .local v0, "spClz":Ljava/lang/Class;
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 175
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 177
    return-object p1

    .line 179
    :cond_0
    return-object v2

    .line 180
    .end local v0    # "spClz":Ljava/lang/Class;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "SA.SystemProperties"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-object p1
.end method

.method private static isHarmonyOs()Z
    .locals 5

    .line 159
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.huawei.system.BuildEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 160
    .local v1, "buildExClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getOsBrand"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 161
    .local v2, "osBrand":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 162
    return v0

    .line 164
    :cond_0
    const-string v3, "harmony"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 165
    .end local v1    # "buildExClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "osBrand":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "SA.HasHarmonyOS"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return v0
.end method
