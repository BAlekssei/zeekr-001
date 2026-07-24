.class Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;
.super Landroid/os/Handler;
.source "AbstractViewCrawler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCrawlerHandler"
.end annotation


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mLastImageHash:Ljava/lang/StringBuilder;

.field private final mProtocol:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;

.field private final mSDKVersion:Ljava/lang/String;

.field private mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

.field private mUseGzip:Z

.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;


# direct methods
.method private constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "resourcePackageName"    # Ljava/lang/String;

    .line 208
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    .line 209
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    .line 211
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Ids;

    invoke-direct {p1, p4, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Ids;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 212
    .local p1, "resourceIds":Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mProtocol:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mLastImageHash:Ljava/lang/StringBuilder;

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mUseGzip:Z

    .line 215
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mAppId:Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSDKVersion:Ljava/lang/String;

    .line 217
    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/os/Looper;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$1;

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method

.method private onSnapFinished(Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    .line 443
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->hasWebView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->clear()V

    .line 446
    :cond_0
    return-void
.end method

.method private postSnapshot(Ljava/io/ByteArrayOutputStream;)V
    .locals 18
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;

    move-object/from16 v1, p0

    .line 449
    const/4 v2, 0x1

    .line 450
    .local v2, "rePostSnapshot":Z
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$400(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$700(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_27

    .line 453
    :cond_0
    const/4 v3, 0x0

    .line 454
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 455
    .local v4, "out2":Ljava/io/OutputStream;
    const/4 v0, 0x0

    move-object v5, v0

    .line 458
    .local v5, "bout":Ljava/io/BufferedOutputStream;
    const-wide/16 v6, 0x3e8

    const/4 v8, 0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v9, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$700(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 459
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 460
    .local v10, "connection":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    move-object v11, v0

    .line 461
    .local v11, "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    if-eqz v11, :cond_6

    .line 462
    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 463
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$800(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    move-result-object v0

    iget-object v12, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v12}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$800(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v0, v12, v6, v7}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 513
    if-eqz v5, :cond_1

    .line 514
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 518
    :cond_1
    :goto_0
    nop

    .line 520
    :goto_1
    if-eqz v3, :cond_2

    .line 521
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 523
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 524
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 525
    :cond_2
    :goto_2
    nop

    .line 527
    :goto_3
    if-eqz v4, :cond_3

    .line 528
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 530
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 531
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 532
    :cond_3
    :goto_4
    nop

    .line 534
    :goto_5
    if-eqz p1, :cond_4

    .line 535
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 537
    :catch_3
    move-exception v0

    move-object v6, v0

    .line 538
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 539
    :cond_4
    :goto_6
    nop

    .line 464
    :goto_7
    return-void

    .line 467
    :cond_5
    :try_start_5
    iget-object v0, v11, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_6

    instance-of v0, v10, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_6

    .line 469
    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v12, v11, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 472
    :cond_6
    invoke-virtual {v10, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 473
    const-string v0, "POST"

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 474
    const-string v0, "Content-type"

    const-string v12, "text/plain"

    invoke-virtual {v10, v0, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v4, v0

    .line 477
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 478
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "UTF-8"

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 479
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 481
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v12, v0

    .line 483
    .local v12, "responseCode":I
    :try_start_6
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 486
    .end local v3    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    nop

    .line 487
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_8
    move-object v3, v0

    goto :goto_9

    .line 484
    :catch_4
    move-exception v0

    move-object v13, v0

    .line 485
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    move-object v0, v13

    .end local v3    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    goto :goto_8

    .line 487
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_9
    invoke-direct {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->slurp(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 489
    .local v0, "responseBody":[B
    new-instance v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-direct {v13, v0, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 490
    .local v13, "response":Ljava/lang/String;
    const-string v14, "SA.AbstractViewCrawler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v6, "SA.AbstractViewCrawler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 493
    .local v6, "responseJson":Lorg/json/JSONObject;
    const/16 v7, 0xc8

    if-ne v12, v7, :cond_b

    .line 494
    const-string v7, "delay"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 495
    .local v7, "delay":I
    if-gez v7, :cond_7

    .line 496
    const/4 v2, 0x0

    .line 498
    :cond_7
    :try_start_8
    const-string v14, "visualized_sdk_config"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 499
    .local v14, "visualizedConfig":Ljava/lang/String;
    const-string v8, "visualized_config_disabled"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 501
    .local v8, "visualizedConfigDisabled":Z
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    if-eqz v8, :cond_8

    goto :goto_a

    .line 507
    :cond_8
    move-object/from16 v16, v0

    goto :goto_b

    .line 502
    :cond_9
    :goto_a
    move-object/from16 v16, v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    .end local v0    # "responseBody":[B
    .local v16, "responseBody":[B
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_a

    .line 503
    :try_start_9
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->save2Cache(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 507
    :cond_a
    :goto_b
    :try_start_a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v17, v2

    :try_start_b
    const-string v2, "visualized_debug_mode_enabled"

    .end local v2    # "rePostSnapshot":Z
    .local v17, "rePostSnapshot":Z
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->setDebugModeEnabled(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 513
    .end local v6    # "responseJson":Lorg/json/JSONObject;
    .end local v7    # "delay":I
    .end local v8    # "visualizedConfigDisabled":Z
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .end local v12    # "responseCode":I
    .end local v13    # "response":Ljava/lang/String;
    .end local v14    # "visualizedConfig":Ljava/lang/String;
    .end local v16    # "responseBody":[B
    move/from16 v2, v17

    goto :goto_c

    .line 512
    :catchall_0
    move-exception v0

    goto :goto_14

    .line 509
    :catch_5
    move-exception v0

    move/from16 v2, v17

    goto :goto_15

    .line 512
    .end local v17    # "rePostSnapshot":Z
    .restart local v2    # "rePostSnapshot":Z
    :catchall_1
    move-exception v0

    move/from16 v17, v2

    move-object v2, v0

    .end local v2    # "rePostSnapshot":Z
    .restart local v17    # "rePostSnapshot":Z
    goto/16 :goto_1e

    .line 509
    .end local v17    # "rePostSnapshot":Z
    .restart local v2    # "rePostSnapshot":Z
    :catch_6
    move-exception v0

    move/from16 v17, v2

    .end local v2    # "rePostSnapshot":Z
    .restart local v17    # "rePostSnapshot":Z
    goto :goto_15

    .line 513
    .end local v17    # "rePostSnapshot":Z
    .restart local v2    # "rePostSnapshot":Z
    :cond_b
    :goto_c
    nop

    .line 514
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_d

    .line 516
    :catch_7
    move-exception v0

    move-object v6, v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_e

    .line 518
    :goto_d
    nop

    .line 520
    :goto_e
    if-eqz v3, :cond_c

    .line 521
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_f

    .line 523
    :catch_8
    move-exception v0

    move-object v6, v0

    .line 524
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_10

    .line 525
    :cond_c
    :goto_f
    nop

    .line 527
    :goto_10
    if-eqz v4, :cond_d

    .line 528
    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_11

    .line 530
    :catch_9
    move-exception v0

    move-object v6, v0

    .line 531
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_12

    .line 532
    :cond_d
    :goto_11
    nop

    .line 534
    :goto_12
    if-eqz p1, :cond_e

    .line 535
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_13

    .line 537
    :catch_a
    move-exception v0

    move-object v6, v0

    .line 538
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 540
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1c

    .line 539
    :cond_e
    :goto_13
    goto :goto_1c

    .line 512
    :catchall_2
    move-exception v0

    move/from16 v17, v2

    .end local v2    # "rePostSnapshot":Z
    .restart local v17    # "rePostSnapshot":Z
    :goto_14
    move-object v2, v0

    goto :goto_1e

    .line 509
    .end local v17    # "rePostSnapshot":Z
    .restart local v2    # "rePostSnapshot":Z
    :catch_b
    move-exception v0

    .line 510
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_15
    :try_start_10
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_f

    .line 514
    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_16

    .line 516
    :catch_c
    move-exception v0

    move-object v6, v0

    .line 517
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_17

    .line 518
    :cond_f
    :goto_16
    nop

    .line 520
    :goto_17
    if-eqz v3, :cond_10

    .line 521
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_18

    .line 523
    :catch_d
    move-exception v0

    move-object v6, v0

    .line 524
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_19

    .line 525
    :cond_10
    :goto_18
    nop

    .line 527
    :goto_19
    if-eqz v4, :cond_11

    .line 528
    :try_start_13
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_1a

    .line 530
    :catch_e
    move-exception v0

    move-object v6, v0

    .line 531
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1b

    .line 532
    :cond_11
    :goto_1a
    nop

    .line 534
    :goto_1b
    if-eqz p1, :cond_e

    .line 535
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    goto :goto_13

    .line 542
    :goto_1c
    if-eqz v2, :cond_12

    .line 543
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$800(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    move-result-object v0

    iget-object v6, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$800(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v0, v6, v7, v8}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1d

    .line 545
    :cond_12
    const/4 v7, 0x1

    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-virtual {v0, v7}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->stopUpdates(Z)V

    .line 547
    :goto_1d
    return-void

    .line 512
    .end local v2    # "rePostSnapshot":Z
    .restart local v17    # "rePostSnapshot":Z
    :goto_1e
    nop

    .line 513
    if-eqz v5, :cond_13

    .line 514
    :try_start_15
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    goto :goto_1f

    .line 516
    :catch_f
    move-exception v0

    move-object v6, v0

    .line 517
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_20

    .line 518
    :cond_13
    :goto_1f
    nop

    .line 520
    :goto_20
    if-eqz v3, :cond_14

    .line 521
    :try_start_16
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10

    goto :goto_21

    .line 523
    :catch_10
    move-exception v0

    move-object v6, v0

    .line 524
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_22

    .line 525
    :cond_14
    :goto_21
    nop

    .line 527
    :goto_22
    if-eqz v4, :cond_15

    .line 528
    :try_start_17
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11

    goto :goto_23

    .line 530
    :catch_11
    move-exception v0

    move-object v6, v0

    .line 531
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_24

    .line 532
    :cond_15
    :goto_23
    nop

    .line 534
    :goto_24
    if-eqz p1, :cond_16

    .line 535
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12

    goto :goto_25

    .line 537
    :catch_12
    move-exception v0

    move-object v6, v0

    .line 538
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_26

    .line 539
    :cond_16
    :goto_25
    nop

    .line 540
    :goto_26
    throw v2

    .line 451
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "out2":Ljava/io/OutputStream;
    .end local v5    # "bout":Ljava/io/BufferedOutputStream;
    .end local v17    # "rePostSnapshot":Z
    .restart local v2    # "rePostSnapshot":Z
    :cond_17
    :goto_27
    return-void
.end method

.method private sendSnapshot()V
    .locals 21

    .line 236
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 238
    .local v2, "startSnapshot":J
    :try_start_0
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mProtocol:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;

    iget-object v4, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$300(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->readSnapshotConfig(Landroid/os/Handler;)Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    move-result-object v0

    iput-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    .line 240
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    if-nez v0, :cond_0

    .line 241
    const-string v0, "SA.AbstractViewCrawler"

    const-string v4, "Snapshot should be initialize at first calling."

    invoke-static {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException; {:try_start_0 .. :try_end_0} :catch_13

    .line 242
    return-void

    .line 247
    :cond_0
    nop

    .line 248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v0

    .line 249
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v0

    .line 250
    .local v5, "writer":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 251
    .local v6, "payload_out":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 252
    .local v7, "gos":Ljava/util/zip/GZIPOutputStream;
    const/4 v8, 0x0

    .line 253
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    move-object v9, v0

    .line 255
    .local v9, "info":Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;
    :try_start_1
    const-string v0, "{"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 256
    const-string v0, "\"type\": \"snapshot_response\","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"feature_code\": \""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v10}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$400(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"app_version\": \""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v10}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$500(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"lib_version\": \""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSDKVersion:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 260
    const-string v0, "\"os\": \"Android\","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 261
    const-string v0, "\"lib\": \"Android\","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"app_id\": \""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"app_enablevisualizedproperties\": "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 266
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 267
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v10

    sget-object v11, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v10, v11}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 268
    const-string v10, "$AppClick"

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 270
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v10

    sget-object v11, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v10, v11}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 271
    const-string v10, "$AppViewScreen"

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 273
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\"app_autotrack\": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 276
    .end local v0    # "array":Lorg/json/JSONArray;
    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualConfigVersion()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 280
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\"config_version\": \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/OutputStream;->write([B)V

    .line 282
    :cond_3
    iget-boolean v10, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mUseGzip:Z

    if-eqz v10, :cond_6

    .line 283
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-object v6, v10

    .line 284
    :try_start_4
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 285
    .local v10, "payload_writer":Ljava/io/OutputStream;
    const-string v11, "{\"activities\":"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/OutputStream;->write([B)V

    .line 286
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 287
    iget-object v11, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    iget-object v12, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mLastImageHash:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v12}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->snapshots(Ljava/io/OutputStream;Ljava/lang/StringBuilder;)Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    move-result-object v11

    move-object v9, v11

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v2

    .line 289
    .local v11, "snapshotTime":J
    const-string v13, ",\"snapshot_time_millis\": "

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/OutputStream;->write([B)V

    .line 290
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/OutputStream;->write([B)V

    .line 292
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getDebugInfo()Ljava/lang/String;

    move-result-object v13

    .line 293
    .local v13, "visualDebugInfo":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v14, :cond_4

    .line 294
    :try_start_5
    const-string v14, ","

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/OutputStream;->write([B)V

    .line 295
    const-string v14, "\"event_debug\": "

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/OutputStream;->write([B)V

    .line 296
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 299
    :cond_4
    :try_start_6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getVisualLogInfo()Ljava/lang/String;

    move-result-object v14

    .line 300
    .local v14, "visualLogInfo":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v15, :cond_5

    .line 301
    :try_start_7
    const-string v15, ","

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/io/OutputStream;->write([B)V

    .line 302
    const-string v15, "\"log_info\":"

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/io/OutputStream;->write([B)V

    .line 303
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 305
    :cond_5
    :try_start_8
    const-string v15, "}"

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/io/OutputStream;->write([B)V

    .line 306
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 307
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 308
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 309
    .local v15, "payloadData":[B
    move-object/from16 v16, v0

    new-instance v0, Ljava/io/ByteArrayOutputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .end local v0    # "version":Ljava/lang/String;
    .local v16, "version":Ljava/lang/String;
    move-object/from16 v17, v6

    :try_start_9
    array-length v6, v15

    .end local v6    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .local v17, "payload_out":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v8, v0

    .line 310
    :try_start_a
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v7, v0

    .line 311
    :try_start_b
    invoke-virtual {v7, v15}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 312
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 313
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 314
    .local v0, "compressed":[B
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v18, v7

    :try_start_c
    const-string v7, "\"gzip_payload\": \""

    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v18, "gos":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v19, v8

    :try_start_d
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object v8

    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .local v19, "os":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 317
    .end local v0    # "compressed":[B
    .end local v10    # "payload_writer":Ljava/io/OutputStream;
    .end local v11    # "snapshotTime":J
    .end local v13    # "visualDebugInfo":Ljava/lang/String;
    .end local v14    # "visualLogInfo":Ljava/lang/String;
    .end local v15    # "payloadData":[B
    nop

    .line 333
    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto/16 :goto_3

    .line 410
    .end local v16    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v10, v9

    move-object/from16 v9, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto/16 :goto_17

    .line 407
    :catch_1
    move-exception v0

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto/16 :goto_f

    .line 410
    .end local v19    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v8

    move-object v6, v0

    move-object v10, v9

    move-object/from16 v9, v17

    move-object/from16 v7, v18

    goto :goto_1

    .line 407
    :catch_2
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto :goto_2

    .line 410
    .end local v18    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object v6, v0

    move-object v10, v9

    move-object/from16 v9, v17

    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_17

    .line 407
    .end local v18    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v19    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v6, v17

    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "os":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_f

    .line 410
    .end local v18    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v19    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v8

    move-object v6, v0

    move-object v10, v9

    move-object/from16 v9, v17

    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .local v9, "payload_out":Ljava/io/ByteArrayOutputStream;
    .local v10, "info":Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;
    .restart local v19    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_1
    goto/16 :goto_17

    .line 407
    .end local v10    # "info":Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;
    .end local v19    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .local v9, "info":Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;
    .restart local v17    # "payload_out":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v6, v17

    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v17    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_2
    goto/16 :goto_f

    .line 410
    .end local v6    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "payload_out":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v0

    move-object v6, v0

    move-object v10, v9

    move-object/from16 v9, v17

    goto/16 :goto_17

    .line 407
    :catch_5
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_f

    .line 410
    .end local v17    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "payload_out":Ljava/io/ByteArrayOutputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v17, v6

    move-object v6, v0

    move-object v10, v9

    move-object/from16 v9, v17

    .end local v6    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "payload_out":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_17

    .line 407
    .end local v17    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "payload_out":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "payload_out":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_f

    .line 318
    .end local v17    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .local v0, "version":Ljava/lang/String;
    .restart local v6    # "payload_out":Ljava/io/ByteArrayOutputStream;
    :cond_6
    move-object/from16 v16, v0

    .end local v0    # "version":Ljava/lang/String;
    .restart local v16    # "version":Ljava/lang/String;
    :try_start_e
    const-string v0, "\"payload\": {"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 321
    const-string v0, "\"activities\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 322
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 323
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mSnapshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->mLastImageHash:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v10}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->snapshots(Ljava/io/OutputStream;Ljava/lang/StringBuilder;)Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    move-result-object v0

    move-object v9, v0

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    .line 327
    .local v10, "snapshotTime":J
    const-string v0, ",\"snapshot_time_millis\": "

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 328
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 330
    const-string v0, "}"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 333
    .end local v10    # "snapshotTime":J
    :goto_3
    const/4 v0, 0x0

    .line 334
    .local v0, "pageName":Ljava/lang/String;
    iget-object v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->screenName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 335
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ",\"screen_name\": \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/OutputStream;->write([B)V

    .line 336
    iget-object v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->screenName:Ljava/lang/String;

    move-object v0, v10

    .line 340
    :cond_7
    iget-boolean v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->hasFragment:Z

    if-eqz v10, :cond_8

    .line 341
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getFragmentScreenName()Ljava/lang/String;

    move-result-object v10

    .line 342
    .local v10, "fragmentScreenName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 343
    move-object v0, v10

    .line 347
    .end local v10    # "fragmentScreenName":Ljava/lang/String;
    :cond_8
    const-string v10, "SA.AbstractViewCrawler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "page_name\uff1a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ",\"page_name\": \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/OutputStream;->write([B)V

    .line 352
    :cond_9
    iget-object v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->activityTitle:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 353
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ",\"title\": \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->activityTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/OutputStream;->write([B)V

    .line 356
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ",\"is_webview\": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->isWebView:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/OutputStream;->write([B)V

    .line 358
    iget-object v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webLibVersion:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 359
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ",\"web_lib_version\": \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webLibVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/OutputStream;->write([B)V

    .line 362
    :cond_b
    iget-boolean v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->isWebView:Z

    if-eqz v10, :cond_12

    iget-object v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webViewUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 363
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    move-result-object v10

    iget-object v11, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->getWebPageInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    move-result-object v10

    .line 364
    .local v10, "pageInfo":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    if-eqz v10, :cond_d

    .line 365
    invoke-virtual {v10}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 366
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",\"h5_url\": \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write([B)V

    .line 368
    :cond_c
    invoke-virtual {v10}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 369
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",\"h5_title\": \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write([B)V

    .line 372
    :cond_d
    iget-object v11, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->alertInfos:Ljava/util/List;

    .line 373
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;>;"
    if-eqz v11, :cond_12

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_12

    .line 374
    const-string v12, ",\"app_alert_infos\":"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/OutputStream;->write([B)V

    .line 375
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 376
    const-string v12, "["

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/io/OutputStream;->write([B)V

    .line 377
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_11

    .line 378
    if-lez v12, :cond_e

    .line 379
    const-string v13, ","

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/OutputStream;->write([B)V

    .line 381
    :cond_e
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;

    .line 382
    .local v13, "alertInfo":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;
    if-eqz v13, :cond_10

    .line 383
    const-string v14, "heat_map"

    iget-object v15, v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->access$600(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 384
    iget-object v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->title:Ljava/lang/String;

    const-string v15, "\u53ef\u89c6\u5316\u5168\u57cb\u70b9"

    move-object/from16 v20, v0

    const-string v0, "\u70b9\u51fb\u5206\u6790"

    .end local v0    # "pageName":Ljava/lang/String;
    .local v20, "pageName":Ljava/lang/String;
    invoke-virtual {v14, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->title:Ljava/lang/String;

    goto :goto_5

    .line 386
    .end local v20    # "pageName":Ljava/lang/String;
    .restart local v0    # "pageName":Ljava/lang/String;
    :cond_f
    move-object/from16 v20, v0

    .end local v0    # "pageName":Ljava/lang/String;
    .restart local v20    # "pageName":Ljava/lang/String;
    :goto_5
    const-string v0, "{"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 387
    const-string v0, "\"title\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 389
    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 390
    const-string v0, "\"message\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 392
    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 393
    const-string v0, "\"link_text\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->linkText:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 395
    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 396
    const-string v0, "\"link_url\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 398
    const-string v0, "}"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .end local v13    # "alertInfo":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;
    goto :goto_6

    .line 377
    .end local v20    # "pageName":Ljava/lang/String;
    .restart local v0    # "pageName":Ljava/lang/String;
    :cond_10
    move-object/from16 v20, v0

    .end local v0    # "pageName":Ljava/lang/String;
    .restart local v20    # "pageName":Ljava/lang/String;
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v20

    goto/16 :goto_4

    .line 401
    .end local v12    # "i":I
    .end local v20    # "pageName":Ljava/lang/String;
    .restart local v0    # "pageName":Ljava/lang/String;
    :cond_11
    move-object/from16 v20, v0

    .end local v0    # "pageName":Ljava/lang/String;
    .restart local v20    # "pageName":Ljava/lang/String;
    const-string v0, "]"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 402
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .end local v10    # "pageInfo":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;>;"
    goto :goto_7

    .line 405
    .end local v20    # "pageName":Ljava/lang/String;
    .restart local v0    # "pageName":Ljava/lang/String;
    :cond_12
    move-object/from16 v20, v0

    .end local v0    # "pageName":Ljava/lang/String;
    .restart local v20    # "pageName":Ljava/lang/String;
    :goto_7
    const-string v0, "}"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 406
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 411
    .end local v16    # "version":Ljava/lang/String;
    .end local v20    # "pageName":Ljava/lang/String;
    if-eqz v8, :cond_13

    .line 412
    :try_start_f
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_8

    .line 414
    :catch_7
    move-exception v0

    move-object v10, v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "SA.AbstractViewCrawler"

    const-string v11, "Can\'t close os."

    invoke-static {v10, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_9

    .line 416
    :cond_13
    :goto_8
    nop

    .line 418
    :goto_9
    if-eqz v7, :cond_14

    .line 419
    :try_start_10
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_a

    .line 421
    :catch_8
    move-exception v0

    move-object v10, v0

    .line 422
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, "SA.AbstractViewCrawler"

    const-string v11, "Can\'t close gos."

    invoke-static {v10, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 423
    :cond_14
    :goto_a
    nop

    .line 425
    :goto_b
    if-eqz v6, :cond_15

    .line 426
    :try_start_11
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_c

    .line 428
    :catch_9
    move-exception v0

    move-object v10, v0

    .line 429
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, "SA.AbstractViewCrawler"

    const-string v11, "Can\'t close payload_out."

    invoke-static {v10, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_d

    .line 430
    :cond_15
    :goto_c
    nop

    .line 432
    :goto_d
    :try_start_12
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 435
    :goto_e
    goto :goto_16

    .line 433
    :catch_a
    move-exception v0

    move-object v10, v0

    .line 434
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "SA.AbstractViewCrawler"

    const-string v11, "Can\'t close writer."

    invoke-static {v10, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_16

    .line 410
    :catchall_6
    move-exception v0

    move-object v10, v9

    move-object v9, v6

    move-object v6, v0

    goto :goto_17

    .line 407
    :catch_b
    move-exception v0

    .line 408
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_f
    :try_start_13
    const-string v10, "SA.AbstractViewCrawler"

    const-string v11, "Can\'t write snapshot request to server"

    invoke-static {v10, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 411
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v8, :cond_16

    .line 412
    :try_start_14
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_10

    .line 414
    :catch_c
    move-exception v0

    move-object v10, v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "SA.AbstractViewCrawler"

    const-string v11, "Can\'t close os."

    invoke-static {v10, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_11

    .line 416
    :cond_16
    :goto_10
    nop

    .line 418
    :goto_11
    if-eqz v7, :cond_17

    .line 419
    :try_start_15
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    goto :goto_12

    .line 421
    :catch_d
    move-exception v0

    move-object v10, v0

    .line 422
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, "SA.AbstractViewCrawler"

    const-string v11, "Can\'t close gos."

    invoke-static {v10, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_13

    .line 423
    :cond_17
    :goto_12
    nop

    .line 425
    :goto_13
    if-eqz v6, :cond_18

    .line 426
    :try_start_16
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    goto :goto_14

    .line 428
    :catch_e
    move-exception v0

    move-object v10, v0

    .line 429
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, "SA.AbstractViewCrawler"

    const-string v11, "Can\'t close payload_out."

    invoke-static {v10, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 430
    :cond_18
    :goto_14
    nop

    .line 432
    :goto_15
    :try_start_17
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    goto :goto_e

    .line 437
    :goto_16
    invoke-direct {v1, v9}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->onSnapFinished(Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;)V

    .line 438
    invoke-direct {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->postSnapshot(Ljava/io/ByteArrayOutputStream;)V

    .line 439
    return-void

    .line 410
    .end local v6    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .local v9, "payload_out":Ljava/io/ByteArrayOutputStream;
    .local v10, "info":Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;
    :goto_17
    nop

    .line 411
    if-eqz v8, :cond_19

    .line 412
    :try_start_18
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f

    goto :goto_18

    .line 414
    :catch_f
    move-exception v0

    move-object v11, v0

    .line 415
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "SA.AbstractViewCrawler"

    const-string v12, "Can\'t close os."

    invoke-static {v11, v12, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_19

    .line 416
    :cond_19
    :goto_18
    nop

    .line 418
    :goto_19
    if-eqz v7, :cond_1a

    .line 419
    :try_start_19
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    goto :goto_1a

    .line 421
    :catch_10
    move-exception v0

    move-object v11, v0

    .line 422
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "SA.AbstractViewCrawler"

    const-string v12, "Can\'t close gos."

    invoke-static {v11, v12, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1b

    .line 423
    :cond_1a
    :goto_1a
    nop

    .line 425
    :goto_1b
    if-eqz v9, :cond_1b

    .line 426
    :try_start_1a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_11

    goto :goto_1c

    .line 428
    :catch_11
    move-exception v0

    move-object v11, v0

    .line 429
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "SA.AbstractViewCrawler"

    const-string v12, "Can\'t close payload_out."

    invoke-static {v11, v12, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1d

    .line 430
    :cond_1b
    :goto_1c
    nop

    .line 432
    :goto_1d
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    .line 435
    goto :goto_1e

    .line 433
    :catch_12
    move-exception v0

    move-object v11, v0

    .line 434
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "SA.AbstractViewCrawler"

    const-string v12, "Can\'t close writer."

    invoke-static {v11, v12, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1e
    throw v6

    .line 244
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "writer":Ljava/io/OutputStream;
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "payload_out":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "info":Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;
    :catch_13
    move-exception v0

    .line 245
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;
    const-string v4, "SA.AbstractViewCrawler"

    const-string v5, "VisualizedAutoTrack server sent malformed message with snapshot request"

    invoke-static {v4, v5, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    return-void
.end method

.method private slurp(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 554
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 556
    .local v1, "data":[B
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v4, v2

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 557
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 561
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->sendSnapshot()V

    .line 230
    :goto_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 221
    return-void
.end method
