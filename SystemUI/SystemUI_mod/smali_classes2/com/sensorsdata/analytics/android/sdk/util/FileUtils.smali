.class public Lcom/sensorsdata/analytics/android/sdk/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "inFile"    # Ljava/io/File;

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 54
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v3

    .line 55
    const/16 v3, 0x400

    new-array v4, v3, [B

    .line 57
    .local v4, "b":[B
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v7, v6

    .local v7, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 58
    invoke-virtual {v0, v4, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 69
    goto :goto_1

    .line 67
    :catch_0
    move-exception v5

    .line 68
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 71
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 72
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_2

    .line 74
    :catch_1
    move-exception v5

    .line 75
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 76
    :goto_2
    nop

    .line 60
    :goto_3
    return-object v3

    .line 65
    .end local v4    # "b":[B
    .end local v7    # "len":I
    :catchall_0
    move-exception v3

    goto :goto_7

    .line 61
    :catch_2
    move-exception v3

    .line 62
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 63
    nop

    .line 66
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 69
    goto :goto_4

    .line 67
    :catch_3
    move-exception v4

    .line 68
    .local v4, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 71
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v0, :cond_1

    .line 72
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_5

    .line 74
    :catch_4
    move-exception v4

    .line 75
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 76
    :cond_1
    :goto_5
    nop

    .line 63
    :goto_6
    return-object v1

    .line 65
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7
    nop

    .line 66
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 69
    goto :goto_8

    .line 67
    :catch_5
    move-exception v4

    .line 68
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 71
    .end local v4    # "e":Ljava/io/IOException;
    :goto_8
    if-eqz v0, :cond_2

    .line 72
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_9

    .line 74
    :catch_6
    move-exception v4

    .line 75
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 76
    :cond_2
    :goto_9
    nop

    .line 77
    :goto_a
    throw v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 78
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 80
    return-object v1
.end method

.method public static writeToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "outFile"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    nop

    .line 41
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :goto_0
    goto :goto_1

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 36
    :catch_1
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 41
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 47
    :cond_0
    :goto_1
    return-void

    .line 39
    :goto_2
    if-eqz v0, :cond_1

    .line 41
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 44
    goto :goto_3

    .line 42
    :catch_2
    move-exception v2

    .line 43
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 46
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v1
.end method
