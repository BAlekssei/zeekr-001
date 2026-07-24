.class Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;
.super Ljava/lang/Thread;
.source "SensorsDataDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendDebugIdThread"
.end annotation


# instance fields
.field private distinctId:Ljava/lang/String;

.field private infoId:Ljava/lang/String;

.field private serverUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverUrl"    # Ljava/lang/String;
    .param p2, "distinctId"    # Ljava/lang/String;
    .param p3, "infoId"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .line 538
    invoke-direct {p0, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 539
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->distinctId:Ljava/lang/String;

    .line 540
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->infoId:Ljava/lang/String;

    .line 541
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->serverUrl:Ljava/lang/String;

    .line 542
    return-void
.end method

.method private closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "out2"    # Ljava/io/OutputStream;
    .param p3, "bout"    # Ljava/io/BufferedOutputStream;
    .param p4, "connection"    # Ljava/net/HttpURLConnection;

    .line 602
    if-eqz p1, :cond_0

    .line 604
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 609
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 611
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 614
    goto :goto_1

    .line 612
    :catch_1
    move-exception v0

    .line 613
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 618
    :try_start_2
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 621
    goto :goto_2

    .line 619
    :catch_2
    move-exception v0

    .line 620
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 623
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    .line 625
    :try_start_3
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 628
    goto :goto_3

    .line 626
    :catch_3
    move-exception v0

    .line 627
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void
.end method

.method private sendHttpRequest(Ljava/lang/String;Z)V
    .locals 18
    .param p1, "serverUrl"    # Ljava/lang/String;
    .param p2, "isRedirects"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 551
    const/4 v3, 0x0

    .line 552
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 553
    .local v4, "out2":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 554
    .local v5, "bout":Ljava/io/BufferedOutputStream;
    const/4 v0, 0x0

    move-object v6, v0

    .line 556
    .local v6, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&info_id=%s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->infoId:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 557
    .local v7, "url":Ljava/net/URL;
    const-string v8, "SA.SensorsDataDialogUtils"

    const-string v10, "DebugMode URL:%s"

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    move-object v6, v8

    .line 559
    if-nez v6, :cond_0

    .line 560
    const-string v8, "SA.SensorsDataDialogUtils"

    const-string v10, "can not connect %s,shouldn\'t happen"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v12

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V

    .line 561
    return-void

    .line 563
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v8

    .line 564
    .local v8, "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    if-eqz v8, :cond_1

    iget-object v10, v8, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v10, :cond_1

    instance-of v10, v6, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v10, :cond_1

    .line 566
    move-object v10, v6

    check-cast v10, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v11, v8, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 568
    :cond_1
    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 569
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v10

    .line 570
    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-direct {v10, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 571
    .local v10, "writer":Ljava/io/OutputStreamWriter;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "{\"distinct_id\": \""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->distinctId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\"}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 572
    .local v11, "requestBody":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->flush()V

    .line 574
    const-string v13, "SA.SensorsDataDialogUtils"

    const-string v14, "DebugMode request body : %s"

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v11, v15, v12

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 576
    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 577
    const-string v13, "POST"

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 578
    const-string v13, "Content-type"

    const-string v14, "text/plain"

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    move-object v4, v13

    .line 581
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v13

    .line 582
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 583
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 584
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 585
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 586
    .local v13, "responseCode":I
    const-string v14, "SA.SensorsDataDialogUtils"

    sget-object v15, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v0, "DebugMode \u540e\u7aef\u7684\u54cd\u5e94\u7801\u662f:%d"

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v12, v16

    invoke-static {v15, v0, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v14, v0, v12}, Lcom/sensorsdata/analytics/android/sdk/SALog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 587
    if-nez p2, :cond_2

    invoke-static {v13}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->needRedirects(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-static {v6, v2}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->getLocation(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 590
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V

    .line 591
    invoke-direct {v1, v0, v9}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->sendHttpRequest(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "location":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .end local v10    # "writer":Ljava/io/OutputStreamWriter;
    .end local v11    # "requestBody":Ljava/lang/String;
    .end local v13    # "responseCode":I
    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V

    .line 598
    nop

    .line 599
    return-void

    .line 597
    :goto_1
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->closeStream(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;Ljava/io/BufferedOutputStream;Ljava/net/HttpURLConnection;)V

    .line 598
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 546
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 547
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->serverUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;->sendHttpRequest(Ljava/lang/String;Z)V

    .line 548
    return-void
.end method
