.class public Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;
.super Ljava/lang/Object;
.source "AppInfoUtils.java"


# static fields
.field private static mAppVersionName:Ljava/lang/String;

.field private static mConfigBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mConfigBundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 157
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mConfigBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mConfigBundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 168
    :cond_2
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mConfigBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 50
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 52
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 53
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 83
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mAppVersionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mAppVersionName:Ljava/lang/String;

    return-object v0

    .line 87
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 88
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 89
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mAppVersionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->mAppVersionName:Ljava/lang/String;

    return-object v0
.end method

.method private static getCurrentProcessName()Ljava/lang/String;
    .locals 2

    .line 178
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 179
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getCurrentProcessNameByCmd()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "currentProcess":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getCurrentProcessNameByAT()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 186
    :cond_1
    return-object v0

    .line 187
    .end local v0    # "currentProcess":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentProcessNameByAT()Ljava/lang/String;
    .locals 6

    .line 194
    const/4 v0, 0x0

    move-object v1, v0

    .line 197
    .local v1, "processName":Ljava/lang/String;
    :try_start_0
    const-string v2, "android.app.ActivityThread"

    const-class v3, Landroid/app/Application;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 198
    .local v2, "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "currentProcessName"

    new-array v5, v4, [Ljava/lang/Class;

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 199
    .local v3, "declaredMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 200
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "processInvoke":Ljava/lang/Object;
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 202
    move-object v4, v0

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 206
    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "activityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "declaredMethod":Ljava/lang/reflect/Method;
    .local v0, "processName":Ljava/lang/String;
    move-object v1, v0

    .end local v0    # "processName":Ljava/lang/String;
    .restart local v1    # "processName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 207
    :goto_0
    return-object v1
.end method

.method private static getCurrentProcessNameByCmd()Ljava/lang/String;
    .locals 9

    .line 211
    const/4 v0, 0x0

    move-object v1, v0

    .line 213
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    const-string v2, "/proc/self/cmdline"

    .line 214
    .local v2, "fn":Ljava/lang/String;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 215
    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 216
    .local v3, "buffer":[B
    const/4 v4, 0x0

    move v5, v4

    .line 218
    .local v5, "len":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v6

    move v7, v6

    .local v7, "b":I
    if-lez v6, :cond_0

    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 219
    add-int/lit8 v6, v5, 0x1

    .local v6, "len":I
    int-to-byte v8, v7

    aput-byte v8, v3, v5

    .line 216
    .end local v5    # "len":I
    move v5, v6

    goto :goto_0

    .line 221
    .end local v6    # "len":I
    .restart local v5    # "len":I
    :cond_0
    if-lez v5, :cond_1

    .line 222
    new-instance v6, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v6, v3, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    nop

    .line 229
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 227
    .end local v2    # "fn":Ljava/lang/String;
    .end local v3    # "buffer":[B
    .end local v5    # "len":I
    .end local v7    # "b":I
    :cond_1
    nop

    .line 229
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    :goto_2
    goto :goto_4

    .line 230
    :catch_1
    move-exception v2

    .line 231
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 227
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 229
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 232
    goto :goto_3

    .line 230
    :catch_2
    move-exception v2

    .line 231
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 234
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v0

    .line 224
    :catch_3
    move-exception v2

    .line 227
    if-eqz v1, :cond_3

    .line 229
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 235
    :cond_3
    :goto_4
    return-object v0
.end method

.method public static getMainProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    if-nez p0, :cond_0

    .line 104
    const-string v0, ""

    return-object v0

    .line 107
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 111
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 72
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public static isMainProcess(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 122
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 123
    return v0

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getMainProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "mainProcessName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 128
    const-string v2, "com.sensorsdata.analytics.android.MainProcessName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 132
    return v3

    .line 135
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "currentProcess":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v0, v3

    :goto_1
    return v0
.end method

.method public static isTaskExecuteThread()Z
    .locals 2

    .line 144
    const-string v0, "SA.TaskExecuteThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
