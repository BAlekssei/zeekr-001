.class Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
.super Ljava/lang/Object;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;
    }
.end annotation


# static fields
.field private static final DELETE_ALL:I = 0x4

.field private static final FLUSH_QUEUE:I = 0x3

.field private static final FLUSH_SCHEDULE:I = 0x5

.field private static final S_INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SA.AnalyticsMessages"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

.field private mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field private final mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->S_INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorsDataAPI"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    .line 81
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;-><init>(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    .line 82
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;)V
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    .line 64
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->sendData()V

    return-void
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    .line 64
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    return-object v0
.end method

.method private closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p1, "bout"    # Ljava/io/BufferedOutputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "connection"    # Ljava/net/HttpURLConnection;

    .line 406
    if-eqz p1, :cond_0

    .line 408
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SA.AnalyticsMessages"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 416
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 419
    goto :goto_1

    .line 417
    :catch_1
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SA.AnalyticsMessages"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 424
    :try_start_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 427
    goto :goto_2

    .line 425
    :catch_2
    move-exception v0

    .line 426
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SA.AnalyticsMessages"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    .line 432
    :try_start_3
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 435
    goto :goto_3

    .line 433
    :catch_3
    move-exception v0

    .line 434
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SA.AnalyticsMessages"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void
.end method

.method private encodeData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "rawMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
        }
    .end annotation

    .line 440
    const/4 v0, 0x0

    .line 442
    .local v0, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 443
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 444
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 445
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 446
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 447
    .local v2, "compressed":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 448
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    nop

    .line 455
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    goto :goto_0

    .line 456
    :catch_0
    move-exception v4

    .line 448
    :goto_0
    return-object v3

    .line 453
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "compressed":[B
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 449
    :catch_1
    move-exception v1

    .line 451
    .local v1, "exception":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;

    invoke-direct {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    .end local v1    # "exception":Ljava/io/IOException;
    :goto_1
    if-eqz v0, :cond_0

    .line 455
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 458
    goto :goto_2

    .line 456
    :catch_2
    move-exception v2

    .line 460
    :cond_0
    :goto_2
    throw v1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
    .locals 4
    .param p0, "messageContext"    # Landroid/content/Context;
    .param p1, "sensorsDataAPI"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 91
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->S_INSTANCES:Ljava/util/Map;

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    .local v1, "appContext":Landroid/content/Context;
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->S_INSTANCES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-direct {v2, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;-><init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    .line 96
    .local v2, "ret":Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->S_INSTANCES:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v2    # "ret":Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
    :cond_0
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->S_INSTANCES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    .line 100
    .restart local v2    # "ret":Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
    :goto_0
    monitor-exit v0

    return-object v2

    .line 101
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "ret":Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isDeleteEventsByCode(I)Z
    .locals 2
    .param p1, "httpCode"    # I

    .line 396
    const/4 v0, 0x1

    .line 397
    .local v0, "shouldDelete":Z
    const/16 v1, 0x194

    if-eq p1, v1, :cond_0

    const/16 v1, 0x193

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_1

    const/16 v1, 0x258

    if-ge p1, v1, :cond_1

    .line 400
    :cond_0
    const/4 v0, 0x0

    .line 402
    :cond_1
    return v0
.end method

.method private sendData()V
    .locals 18

    .line 189
    move-object/from16 v7, p0

    :try_start_0
    iget-object v0, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-string v0, "SA.AnalyticsMessages"

    const-string v1, "NetworkRequest \u5df2\u5173\u95ed\uff0c\u4e0d\u53d1\u9001\u6570\u636e\uff01"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 194
    :cond_0
    iget-object v0, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "SA.AnalyticsMessages"

    const-string v1, "Server url is null or empty."

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 200
    :cond_1
    iget-object v0, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    return-void

    .line 205
    :cond_2
    iget-object v0, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "networkType":Ljava/lang/String;
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getFlushNetworkPolicy()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isShouldFlush(Ljava/lang/String;I)Z

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_3

    .line 207
    const-string v1, "SA.AnalyticsMessages"

    const-string v2, "\u60a8\u5f53\u524d\u7f51\u7edc\u4e3a %s\uff0c\u65e0\u6cd5\u53d1\u9001\u6570\u636e\uff0c\u8bf7\u786e\u8ba4\u60a8\u7684\u7f51\u7edc\u53d1\u9001\u7b56\u7565\uff01"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 212
    :cond_3
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isMultiProcessFlush()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 214
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->isSubProcessFlushing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    return-void

    .line 217
    :cond_4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitSubProcessFlushState(Z)V

    goto :goto_0

    .line 218
    :cond_5
    sget-boolean v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mIsMainProcess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    if-nez v1, :cond_6

    .line 219
    return-void

    .line 224
    .end local v0    # "networkType":Ljava/lang/String;
    :cond_6
    :goto_0
    nop

    .line 225
    const/16 v0, 0x64

    .local v0, "count":I
    :goto_1
    move v10, v0

    .line 226
    .end local v0    # "count":I
    .local v10, "count":I
    if-lez v10, :cond_20

    .line 227
    const/4 v11, 0x1

    .line 229
    .local v11, "deleteEvents":Z
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    monitor-enter v1

    .line 230
    :try_start_1
    iget-object v0, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    iget-object v0, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    const-string v2, "events"

    invoke-virtual {v0, v2, v9}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->generateDataString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "eventsData":[Ljava/lang/String;
    goto :goto_2

    .line 234
    .end local v0    # "eventsData":[Ljava/lang/String;
    :cond_7
    iget-object v0, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    const-string v2, "events"

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->generateDataString(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "eventsData":[Ljava/lang/String;
    :goto_2
    move-object v12, v0

    .line 236
    .end local v0    # "eventsData":[Ljava/lang/String;
    .local v12, "eventsData":[Ljava/lang/String;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 238
    if-nez v12, :cond_8

    .line 239
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitSubProcessFlushState(Z)V

    .line 240
    return-void

    .line 243
    :cond_8
    aget-object v13, v12, v8

    .line 244
    .local v13, "lastId":Ljava/lang/String;
    aget-object v14, v12, v9

    .line 245
    .local v14, "rawMessage":Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v15, v12, v0

    .line 246
    .local v15, "gzip":Ljava/lang/String;
    const/4 v0, 0x0

    move-object v6, v0

    .line 249
    .local v6, "errorMessage":Ljava/lang/String;
    move-object v0, v14

    .line 250
    .local v0, "data":Ljava/lang/String;
    :try_start_2
    const-string v1, "1"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_9

    .line 251
    :try_start_3
    invoke-direct {v7, v14}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->encodeData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_3

    .line 269
    .end local v0    # "data":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v8, v6

    goto/16 :goto_f

    .line 265
    :catch_0
    move-exception v0

    move-object v8, v6

    goto/16 :goto_7

    .line 262
    :catch_1
    move-exception v0

    move-object v8, v6

    goto/16 :goto_8

    .line 260
    :catch_2
    move-exception v0

    move-object v8, v6

    goto/16 :goto_9

    .line 257
    :catch_3
    move-exception v0

    move-object v8, v6

    goto/16 :goto_a

    .line 254
    .restart local v0    # "data":Ljava/lang/String;
    :cond_9
    :goto_3
    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 255
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v16, 0x0

    move-object v1, v7

    move-object v3, v0

    move-object v4, v15

    move-object v5, v14

    move-object v8, v6

    move/from16 v6, v16

    .end local v6    # "errorMessage":Ljava/lang/String;
    .local v8, "errorMessage":Ljava/lang/String;
    :try_start_5
    invoke-direct/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v0    # "data":Ljava/lang/String;
    goto :goto_4

    .line 265
    :catch_4
    move-exception v0

    goto :goto_7

    .line 262
    :catch_5
    move-exception v0

    goto/16 :goto_8

    .line 260
    :catch_6
    move-exception v0

    goto/16 :goto_9

    .line 257
    :catch_7
    move-exception v0

    goto/16 :goto_a

    .line 269
    .end local v8    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "errorMessage":Ljava/lang/String;
    :cond_a
    move-object v8, v6

    .end local v6    # "errorMessage":Ljava/lang/String;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    :goto_4
    iget-object v0, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v0

    .line 270
    .local v0, "isDebugMode":Z
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 271
    if-nez v0, :cond_b

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 272
    :cond_b
    const-string v1, "SA.AnalyticsMessages"

    invoke-static {v1, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz v0, :cond_c

    sget-boolean v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->SHOW_DEBUG_INFO_VIEW:Z

    if-eqz v1, :cond_c

    .line 274
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_c
    if-nez v11, :cond_e

    if-eqz v0, :cond_d

    goto :goto_5

    .line 282
    :cond_d
    const/4 v0, 0x0

    .end local v10    # "count":I
    .local v0, "count":I
    goto :goto_6

    .line 279
    .local v0, "isDebugMode":Z
    .restart local v10    # "count":I
    :cond_e
    :goto_5
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v1, v13}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Ljava/lang/String;)I

    move-result v1

    .line 280
    .end local v10    # "count":I
    .local v1, "count":I
    const-string v2, "SA.AnalyticsMessages"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "Events flushed. [left = %d]"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v5, v10

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move v0, v1

    .end local v1    # "count":I
    .local v0, "count":I
    :goto_6
    goto/16 :goto_e

    .line 269
    .end local v0    # "count":I
    .end local v8    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "errorMessage":Ljava/lang/String;
    .restart local v10    # "count":I
    :catchall_1
    move-exception v0

    move-object v8, v6

    .end local v6    # "errorMessage":Ljava/lang/String;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    goto/16 :goto_f

    .line 265
    .end local v8    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "errorMessage":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object v8, v6

    .line 266
    .end local v6    # "errorMessage":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    :goto_7
    const/4 v11, 0x0

    .line 267
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v0, v1

    .line 269
    .end local v8    # "errorMessage":Ljava/lang/String;
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v1

    .line 270
    .local v1, "isDebugMode":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 271
    if-nez v1, :cond_f

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 272
    :cond_f
    const-string v2, "SA.AnalyticsMessages"

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz v1, :cond_10

    sget-boolean v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->SHOW_DEBUG_INFO_VIEW:Z

    if-eqz v2, :cond_10

    .line 274
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_10
    if-nez v11, :cond_11

    if-eqz v1, :cond_1a

    .line 279
    :cond_11
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v2, v13}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Ljava/lang/String;)I

    move-result v2

    .line 280
    .end local v10    # "count":I
    .local v2, "count":I
    const-string v3, "SA.AnalyticsMessages"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "Events flushed. [left = %d]"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v6, v10

    goto/16 :goto_c

    .line 262
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "isDebugMode":Z
    .end local v2    # "count":I
    .restart local v6    # "errorMessage":Ljava/lang/String;
    .restart local v10    # "count":I
    :catch_9
    move-exception v0

    move-object v8, v6

    .line 263
    .end local v6    # "errorMessage":Ljava/lang/String;
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    :goto_8
    :try_start_7
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;->getHttpCode()I

    move-result v1

    invoke-direct {v7, v1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->isDeleteEventsByCode(I)Z

    move-result v1

    move v11, v1

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseErrorException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v0, v1

    .line 269
    .end local v8    # "errorMessage":Ljava/lang/String;
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v1

    .line 270
    .restart local v1    # "isDebugMode":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 271
    if-nez v1, :cond_12

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 272
    :cond_12
    const-string v2, "SA.AnalyticsMessages"

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz v1, :cond_13

    sget-boolean v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->SHOW_DEBUG_INFO_VIEW:Z

    if-eqz v2, :cond_13

    .line 274
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_13
    if-nez v11, :cond_14

    if-eqz v1, :cond_1a

    .line 279
    :cond_14
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v2, v13}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Ljava/lang/String;)I

    move-result v2

    .line 280
    .end local v10    # "count":I
    .restart local v2    # "count":I
    const-string v3, "SA.AnalyticsMessages"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "Events flushed. [left = %d]"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v6, v10

    goto/16 :goto_c

    .line 260
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "isDebugMode":Z
    .end local v2    # "count":I
    .restart local v6    # "errorMessage":Ljava/lang/String;
    .restart local v10    # "count":I
    :catch_a
    move-exception v0

    move-object v8, v6

    .line 261
    .end local v6    # "errorMessage":Ljava/lang/String;
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    :goto_9
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v0, v1

    .line 269
    .end local v8    # "errorMessage":Ljava/lang/String;
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v1

    .line 270
    .restart local v1    # "isDebugMode":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 271
    if-nez v1, :cond_15

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 272
    :cond_15
    const-string v2, "SA.AnalyticsMessages"

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz v1, :cond_16

    sget-boolean v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->SHOW_DEBUG_INFO_VIEW:Z

    if-eqz v2, :cond_16

    .line 274
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_16
    if-nez v11, :cond_17

    if-eqz v1, :cond_1a

    .line 279
    :cond_17
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v2, v13}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Ljava/lang/String;)I

    move-result v2

    .line 280
    .end local v10    # "count":I
    .restart local v2    # "count":I
    const-string v3, "SA.AnalyticsMessages"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "Events flushed. [left = %d]"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v6, v10

    goto :goto_c

    .line 257
    .end local v0    # "errorMessage":Ljava/lang/String;
    .end local v1    # "isDebugMode":Z
    .end local v2    # "count":I
    .restart local v6    # "errorMessage":Ljava/lang/String;
    .restart local v10    # "count":I
    :catch_b
    move-exception v0

    move-object v8, v6

    .line 258
    .end local v6    # "errorMessage":Ljava/lang/String;
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;
    .restart local v8    # "errorMessage":Ljava/lang/String;
    :goto_a
    const/4 v11, 0x0

    .line 259
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v0, v1

    .line 269
    .end local v8    # "errorMessage":Ljava/lang/String;
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v1

    .line 270
    .restart local v1    # "isDebugMode":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 271
    if-nez v1, :cond_18

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 272
    :cond_18
    const-string v2, "SA.AnalyticsMessages"

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz v1, :cond_19

    sget-boolean v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->SHOW_DEBUG_INFO_VIEW:Z

    if-eqz v2, :cond_19

    .line 274
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_19
    if-nez v11, :cond_1b

    if-eqz v1, :cond_1a

    goto :goto_b

    .line 282
    :cond_1a
    const/4 v1, 0x0

    .end local v10    # "count":I
    .local v1, "count":I
    goto :goto_d

    .line 279
    .local v1, "isDebugMode":Z
    .restart local v10    # "count":I
    :cond_1b
    :goto_b
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v2, v13}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Ljava/lang/String;)I

    move-result v2

    .line 280
    .end local v10    # "count":I
    .restart local v2    # "count":I
    const-string v3, "SA.AnalyticsMessages"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "Events flushed. [left = %d]"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v6, v10

    .end local v2    # "count":I
    .local v1, "count":I
    :goto_c
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move v1, v2

    .line 286
    :goto_d
    move v0, v1

    .line 225
    .end local v1    # "count":I
    .end local v11    # "deleteEvents":Z
    .end local v12    # "eventsData":[Ljava/lang/String;
    .end local v13    # "lastId":Ljava/lang/String;
    .end local v14    # "rawMessage":Ljava/lang/String;
    .end local v15    # "gzip":Ljava/lang/String;
    .local v0, "count":I
    :goto_e
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 269
    .end local v0    # "count":I
    .restart local v8    # "errorMessage":Ljava/lang/String;
    .restart local v10    # "count":I
    .restart local v11    # "deleteEvents":Z
    .restart local v12    # "eventsData":[Ljava/lang/String;
    .restart local v13    # "lastId":Ljava/lang/String;
    .restart local v14    # "rawMessage":Ljava/lang/String;
    .restart local v15    # "gzip":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :goto_f
    iget-object v1, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v1

    .line 270
    .local v1, "isDebugMode":Z
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 271
    if-nez v1, :cond_1c

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 272
    :cond_1c
    const-string v2, "SA.AnalyticsMessages"

    invoke-static {v2, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz v1, :cond_1d

    sget-boolean v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->SHOW_DEBUG_INFO_VIEW:Z

    if-eqz v2, :cond_1d

    .line 274
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_1d
    if-nez v11, :cond_1f

    if-eqz v1, :cond_1e

    goto :goto_10

    .line 282
    :cond_1e
    const/4 v1, 0x0

    .end local v10    # "count":I
    .local v1, "count":I
    goto :goto_11

    .line 279
    .local v1, "isDebugMode":Z
    .restart local v10    # "count":I
    :cond_1f
    :goto_10
    iget-object v2, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v2, v13}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Ljava/lang/String;)I

    move-result v2

    .line 280
    .end local v10    # "count":I
    .restart local v2    # "count":I
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Events flushed. [left = %d]"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SA.AnalyticsMessages"

    invoke-static {v4, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move v1, v2

    .end local v2    # "count":I
    .local v1, "count":I
    :goto_11
    throw v0

    .line 236
    .end local v1    # "count":I
    .end local v8    # "errorMessage":Ljava/lang/String;
    .end local v12    # "eventsData":[Ljava/lang/String;
    .end local v13    # "lastId":Ljava/lang/String;
    .end local v14    # "rawMessage":Ljava/lang/String;
    .end local v15    # "gzip":Ljava/lang/String;
    .restart local v10    # "count":I
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 287
    .end local v11    # "deleteEvents":Z
    :cond_20
    iget-object v0, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isMultiProcessFlush()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 288
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitSubProcessFlushState(Z)V

    .line 290
    :cond_21
    return-void

    .line 221
    .end local v10    # "count":I
    :catch_c
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 223
    return-void
.end method

.method private sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "gzip"    # Ljava/lang/String;
    .param p4, "rawMessage"    # Ljava/lang/String;
    .param p5, "isRedirects"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;,
            Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 295
    .local v9, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 296
    .local v2, "out":Ljava/io/OutputStream;
    const/4 v0, 0x0

    move-object v3, v0

    .line 298
    .local v3, "bout":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    .line 299
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v11, v4

    .line 300
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .local v11, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v11, :cond_0

    .line 301
    :try_start_1
    const-string v5, "SA.AnalyticsMessages"

    const-string v6, "can not connect %s, it shouldn\'t happen"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v4

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    invoke-direct {v7, v3, v2, v9, v11}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 302
    return-void

    .line 385
    .end local v10    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v0

    move-object/from16 v15, p3

    goto/16 :goto_5

    .line 382
    :catch_0
    move-exception v0

    move-object/from16 v15, p3

    .end local v11    # "connection":Ljava/net/HttpURLConnection;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :goto_0
    move-object v1, v11

    goto/16 :goto_6

    .line 304
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "url":Ljava/net/URL;
    .restart local v11    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v5

    move-object v12, v5

    .line 305
    .local v12, "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    if-eqz v12, :cond_1

    iget-object v5, v12, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_1

    instance-of v5, v11, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_1

    .line 307
    move-object v5, v11

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, v12, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 309
    :cond_1
    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 310
    iget-object v5, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getDebugMode()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    move-result-object v5

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_ONLY:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-ne v5, v6, :cond_2

    .line 311
    const-string v5, "Dry-Run"

    const-string v6, "true"

    invoke-virtual {v11, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_2
    iget-object v5, v7, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v5, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getCookie(Z)Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    .line 315
    .local v13, "cookie":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 316
    const-string v5, "Cookie"

    invoke-virtual {v11, v5, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_3
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v5

    .line 321
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 322
    const-string v5, "crc"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 325
    :cond_4
    const-string v5, "gzip"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v15, p3

    :try_start_3
    invoke-virtual {v14, v5, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 326
    const-string v5, "data_list"

    move-object/from16 v6, p2

    invoke-virtual {v14, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 328
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "query":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v16, :cond_5

    .line 385
    invoke-direct {v7, v3, v2, v9, v11}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 330
    return-void

    .line 333
    :cond_5
    :try_start_4
    const-string v4, "UTF-8"

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 334
    invoke-virtual {v11, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 335
    const-string v4, "POST"

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 337
    const/16 v4, 0x7530

    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 339
    invoke-virtual {v11, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 340
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 341
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_5
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v3, v2

    .line 342
    :try_start_6
    const-string v2, "UTF-8"

    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 343
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 345
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 346
    .local v2, "responseCode":I
    const-string v1, "SA.AnalyticsMessages"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v5

    const-string v5, "responseCode: "

    .end local v5    # "query":Ljava/lang/String;
    .local v19, "query":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    if-nez p5, :cond_6

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->needRedirects(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 348
    invoke-static {v11, v8}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->getLocation(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 350
    const/4 v1, 0x0

    invoke-direct {v7, v3, v4, v1, v11}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 351
    const/16 v17, 0x1

    move-object v1, v7

    move v5, v2

    move-object v2, v0

    .end local v2    # "responseCode":I
    .local v5, "responseCode":I
    move-object v8, v3

    move-object v3, v6

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .local v8, "bout":Ljava/io/BufferedOutputStream;
    move-object/from16 v20, v4

    move-object v4, v15

    .end local v4    # "out":Ljava/io/OutputStream;
    .local v20, "out":Ljava/io/OutputStream;
    move-object/from16 v21, v10

    move-object/from16 v18, v19

    move v10, v5

    move-object/from16 v5, p4

    .end local v5    # "responseCode":I
    .end local v19    # "query":Ljava/lang/String;
    .local v10, "responseCode":I
    .local v18, "query":Ljava/lang/String;
    .local v21, "url":Ljava/net/URL;
    move/from16 v6, v17

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 385
    move-object/from16 v1, v20

    invoke-direct {v7, v8, v1, v9, v11}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 352
    .end local v20    # "out":Ljava/io/OutputStream;
    .local v1, "out":Ljava/io/OutputStream;
    return-void

    .line 385
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v10    # "responseCode":I
    .end local v12    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .end local v13    # "cookie":Ljava/lang/String;
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .end local v18    # "query":Ljava/lang/String;
    .end local v21    # "url":Ljava/net/URL;
    .restart local v20    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v1, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto/16 :goto_7

    .line 382
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v20    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object/from16 v1, v20

    move-object v2, v1

    move-object v3, v8

    move-object v1, v11

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto/16 :goto_6

    .line 356
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v8    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "responseCode":I
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .local v10, "url":Ljava/net/URL;
    .restart local v12    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .restart local v13    # "cookie":Ljava/lang/String;
    .restart local v14    # "builder":Landroid/net/Uri$Builder;
    .restart local v19    # "query":Ljava/lang/String;
    :cond_6
    move-object v8, v3

    move-object v1, v4

    move-object/from16 v21, v10

    move-object/from16 v18, v19

    move v10, v2

    .end local v2    # "responseCode":I
    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v19    # "query":Ljava/lang/String;
    .restart local v1    # "out":Ljava/io/OutputStream;
    .restart local v8    # "bout":Ljava/io/BufferedOutputStream;
    .local v10, "responseCode":I
    .restart local v18    # "query":Ljava/lang/String;
    .restart local v21    # "url":Ljava/net/URL;
    :try_start_8
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 359
    .end local v9    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    nop

    .line 360
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v9    # "in":Ljava/io/InputStream;
    :goto_1
    move-object v9, v0

    goto :goto_2

    .line 385
    .end local v10    # "responseCode":I
    .end local v12    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .end local v13    # "cookie":Ljava/lang/String;
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .end local v18    # "query":Ljava/lang/String;
    .end local v21    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 382
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v8

    goto/16 :goto_0

    .line 357
    .restart local v10    # "responseCode":I
    .restart local v12    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .restart local v13    # "cookie":Ljava/lang/String;
    .restart local v14    # "builder":Landroid/net/Uri$Builder;
    .restart local v18    # "query":Ljava/lang/String;
    .restart local v21    # "url":Ljava/net/URL;
    :catch_3
    move-exception v0

    move-object v2, v0

    .line 358
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .end local v9    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    goto :goto_1

    .line 360
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v9    # "in":Ljava/io/InputStream;
    :goto_2
    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->slurp(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 361
    .local v0, "responseBody":[B
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 362
    const/4 v9, 0x0

    .line 364
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 365
    .local v2, "response":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v3

    const/16 v4, 0x12c

    const/16 v5, 0xc8

    if-eqz v3, :cond_8

    .line 366
    invoke-static/range {p4 .. p4}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, "jsonMessage":Ljava/lang/String;
    if-lt v10, v5, :cond_7

    if-ge v10, v4, :cond_7

    .line 370
    const-string v6, "SA.AnalyticsMessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "valid message: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    move-object/from16 v23, v0

    goto :goto_3

    .line 372
    :cond_7
    const-string v4, "SA.AnalyticsMessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid message: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v4, "SA.AnalyticsMessages"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "ret_code: %d"

    move-object/from16 v23, v0

    move-object/from16 v22, v3

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    .end local v0    # "responseBody":[B
    .end local v3    # "jsonMessage":Ljava/lang/String;
    .local v22, "jsonMessage":Ljava/lang/String;
    .local v23, "responseBody":[B
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v17, 0x0

    aput-object v3, v0, v17

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "SA.AnalyticsMessages"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "ret_content: %s"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v22    # "jsonMessage":Ljava/lang/String;
    goto :goto_3

    .line 377
    .end local v23    # "responseBody":[B
    .restart local v0    # "responseBody":[B
    :cond_8
    move-object/from16 v23, v0

    .end local v0    # "responseBody":[B
    .restart local v23    # "responseBody":[B
    :goto_3
    const/16 v0, 0xc8

    if-lt v10, v0, :cond_9

    const/16 v0, 0x12c

    if-ge v10, v0, :cond_9

    .line 385
    .end local v2    # "response":Ljava/lang/String;
    .end local v10    # "responseCode":I
    .end local v12    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .end local v13    # "cookie":Ljava/lang/String;
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .end local v18    # "query":Ljava/lang/String;
    .end local v21    # "url":Ljava/net/URL;
    .end local v23    # "responseBody":[B
    invoke-direct {v7, v8, v1, v9, v11}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 386
    nop

    .line 387
    return-void

    .line 379
    .restart local v2    # "response":Ljava/lang/String;
    .restart local v10    # "responseCode":I
    .restart local v12    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .restart local v13    # "cookie":Ljava/lang/String;
    .restart local v14    # "builder":Landroid/net/Uri$Builder;
    .restart local v18    # "query":Ljava/lang/String;
    .restart local v21    # "url":Ljava/net/URL;
    .restart local v23    # "responseBody":[B
    :cond_9
    :try_start_a
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;

    const-string v3, "flush failure with response \'%s\', the response code is \'%d\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 380
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 379
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v10}, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 385
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v2    # "response":Ljava/lang/String;
    .end local v8    # "bout":Ljava/io/BufferedOutputStream;
    .end local v10    # "responseCode":I
    .end local v12    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .end local v13    # "cookie":Ljava/lang/String;
    .end local v14    # "builder":Landroid/net/Uri$Builder;
    .end local v18    # "query":Ljava/lang/String;
    .end local v21    # "url":Ljava/net/URL;
    .end local v23    # "responseBody":[B
    .local v3, "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catchall_3
    move-exception v0

    move-object v8, v3

    move-object v1, v4

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    .restart local v8    # "bout":Ljava/io/BufferedOutputStream;
    goto :goto_7

    .line 382
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v8    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v8, v3

    move-object v1, v4

    move-object v2, v1

    move-object v1, v11

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    .restart local v8    # "bout":Ljava/io/BufferedOutputStream;
    goto :goto_6

    .line 385
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v8    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catchall_4
    move-exception v0

    move-object v1, v4

    move-object v8, v3

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_7

    .line 382
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v1, v4

    move-object v2, v1

    move-object v1, v11

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_6

    .line 385
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    :catchall_5
    move-exception v0

    goto :goto_5

    .line 382
    :catch_6
    move-exception v0

    goto/16 :goto_0

    .line 385
    .end local v11    # "connection":Ljava/net/HttpURLConnection;
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :catchall_6
    move-exception v0

    move-object/from16 v15, p3

    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .local v1, "out":Ljava/io/OutputStream;
    .restart local v8    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v11    # "connection":Ljava/net/HttpURLConnection;
    :goto_4
    move-object v11, v1

    :goto_5
    move-object v1, v2

    move-object v8, v3

    goto :goto_7

    .line 382
    .end local v8    # "bout":Ljava/io/BufferedOutputStream;
    .end local v11    # "connection":Ljava/net/HttpURLConnection;
    .local v1, "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v0

    move-object/from16 v15, p3

    .line 383
    .local v0, "e":Ljava/io/IOException;
    :goto_6
    :try_start_b
    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;

    invoke-direct {v4, v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v0

    goto :goto_4

    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .local v1, "out":Ljava/io/OutputStream;
    .restart local v8    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v11    # "connection":Ljava/net/HttpURLConnection;
    :goto_7
    invoke-direct {v7, v8, v1, v9, v11}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 386
    throw v0
.end method

.method private static slurp(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 111
    .local v1, "data":[B
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v4, v2

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 112
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method deleteAll()V
    .locals 2

    .line 178
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 181
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method enqueueEventMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "eventJson"    # Lorg/json/JSONObject;

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->addJSON(Lorg/json/JSONObject;)I

    move-result v1

    .line 123
    .local v1, "ret":I
    if-gez v1, :cond_1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to enqueue the event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    const-string v3, "SA.AnalyticsMessages"

    invoke-static {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "error":Ljava/lang/String;
    goto :goto_0

    .line 126
    .restart local v2    # "error":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/exceptions/DebugModeException;

    invoke-direct {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/exceptions/DebugModeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    .end local v2    # "error":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 133
    .local v2, "m":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 135
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, -0x2

    if-ne v1, v3, :cond_2

    goto :goto_2

    .line 140
    :cond_2
    const-string v3, "track_signup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 141
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getFlushBulkSize()I

    move-result v3

    if-le v1, v3, :cond_3

    goto :goto_1

    .line 144
    :cond_3
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getFlushInterval()I

    move-result v3

    .line 145
    .local v3, "interval":I
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    int-to-long v5, v3

    invoke-virtual {v4, v2, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessageOnce(Landroid/os/Message;J)V

    .end local v1    # "ret":I
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "interval":I
    goto :goto_3

    .line 142
    .restart local v1    # "ret":I
    .restart local v2    # "m":Landroid/os/Message;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-virtual {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    goto :goto_3

    .line 137
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-virtual {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    .line 148
    .end local v1    # "ret":I
    .end local v2    # "m":Landroid/os/Message;
    :goto_3
    monitor-exit v0

    .line 151
    goto :goto_4

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SA.AnalyticsMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueEventMessage error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method flush()V
    .locals 2

    .line 156
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 157
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 159
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method flushScheduled()V
    .locals 4

    .line 167
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 170
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getFlushInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessageOnce(Landroid/os/Message;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
