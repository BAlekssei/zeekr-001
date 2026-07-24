.class public Lcom/sensorsdata/analytics/android/sdk/SALog;
.super Ljava/lang/Object;
.source "SALog.java"


# static fields
.field private static final CHUNK_SIZE:I = 0xfa0

.field private static debug:Z

.field private static disableSDK:Z

.field private static enableLog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 30
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->debug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 36
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->debug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_0

    .line 37
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 55
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_0

    .line 56
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 49
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_0

    .line 50
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 70
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 71
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 72
    .local v1, "bytes":[B
    array-length v2, v1

    .line 73
    .local v2, "length":I
    const/16 v3, 0xfa0

    if-gt v2, v3, :cond_0

    .line 74
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 76
    :cond_0
    const/4 v4, 0x0

    .local v4, "index":I
    const/4 v5, 0x0

    .line 78
    .local v5, "lastIndexOfLF":I
    :goto_0
    add-int/lit16 v6, v2, -0xfa0

    if-ge v4, v6, :cond_2

    .line 79
    invoke-static {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->lastIndexOfLF([BI)I

    move-result v6

    move v5, v6

    .line 80
    sub-int v6, v5, v4

    .line 81
    .local v6, "chunkLength":I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, v4, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    if-ge v6, v3, :cond_1

    .line 84
    add-int/lit8 v4, v5, 0x1

    goto :goto_1

    .line 86
    :cond_1
    move v4, v5

    .line 88
    .end local v6    # "chunkLength":I
    :goto_1
    goto :goto_0

    .line 89
    :cond_2
    if-le v2, v4, :cond_3

    .line 90
    new-instance v0, Ljava/lang/String;

    sub-int v3, v2, v4

    invoke-direct {v0, v1, v4, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v1    # "bytes":[B
    .end local v2    # "length":I
    .end local v4    # "index":I
    .end local v5    # "lastIndexOfLF":I
    :cond_3
    :goto_2
    goto :goto_3

    .line 96
    :catch_0
    move-exception v0

    goto :goto_4

    .line 94
    :cond_4
    invoke-static {p0, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_3
    goto :goto_5

    .line 96
    :goto_4
    nop

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public static isLogEnabled()Z
    .locals 1

    .line 154
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    return v0
.end method

.method private static lastIndexOfLF([BI)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "fromIndex"    # I

    .line 109
    add-int/lit16 v0, p1, 0xfa0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 110
    .local v0, "index":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit16 v2, v0, -0xfa0

    if-le v1, v2, :cond_1

    .line 112
    aget-byte v2, p0, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 113
    return v1

    .line 110
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 126
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 127
    const-string v0, "SA.Exception"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_0
    return-void
.end method

.method static setDebug(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .line 137
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/SALog;->debug:Z

    .line 138
    return-void
.end method

.method public static setDisableSDK(Z)V
    .locals 0
    .param p0, "configDisableSDK"    # Z

    .line 150
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/SALog;->disableSDK:Z

    .line 151
    return-void
.end method

.method public static setEnableLog(Z)V
    .locals 0
    .param p0, "isEnableLog"    # Z

    .line 146
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/SALog;->enableLog:Z

    .line 147
    return-void
.end method
