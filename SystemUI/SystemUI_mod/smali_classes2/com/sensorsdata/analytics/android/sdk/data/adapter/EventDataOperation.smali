.class Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;
.super Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;
.source "EventDataOperation.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "EventDataOperation"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method deleteData(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # Ljava/lang/String;

    .line 118
    invoke-super {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method insertData(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 57
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->deleteDataLowMemory(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, -0x2

    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .line 41
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->deleteDataLowMemory(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, -0x2

    return v0

    .line 44
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "created_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "cv":Landroid/content/ContentValues;
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method queryData(Landroid/net/Uri;I)[Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "limit"    # I

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 71
    .local v1, "data":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 73
    .local v3, "last_id":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->contentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "created_at ASC LIMIT "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v0, v6

    .line 74
    if-eqz v0, :cond_3

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v6, "dataBuilder":Ljava/lang/StringBuilder;
    const-string v7, ",\"_flush_time\":"

    .line 77
    .local v7, "flush_time":Ljava/lang/String;
    const-string v8, ","

    .line 78
    .local v8, "suffix":Ljava/lang/String;
    const-string v9, "["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 81
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 82
    const-string v9, "]"

    move-object v8, v9

    .line 83
    const-string v9, "_id"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v9

    .line 86
    :cond_0
    :try_start_1
    const-string v9, "data"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "keyData":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->parseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 88
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 89
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {v6, v9, v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v10, ",\"_flush_time\":"

    .line 90
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "}"

    .line 92
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 94
    .end local v9    # "keyData":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 95
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 96
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v9

    .line 105
    .end local v6    # "dataBuilder":Ljava/lang/StringBuilder;
    .end local v7    # "flush_time":Ljava/lang/String;
    .end local v8    # "suffix":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 106
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 105
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 100
    :catch_1
    move-exception v6

    .line 101
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;->TAG:Ljava/lang/String;

    const-string v8, "Could not pull records for SensorsData out of database events. Waiting to send."

    invoke-static {v7, v8, v6}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v1, 0x0

    .line 105
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v0, :cond_4

    goto :goto_2

    .line 110
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 111
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v1, v2, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v2, v4

    return-object v2

    .line 113
    :cond_5
    return-object v2

    .line 105
    :goto_4
    if-eqz v0, :cond_6

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_6
    throw v2
.end method
