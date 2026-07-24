.class Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;
.super Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;
.source "EncryptDataOperation.java"


# instance fields
.field private final mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorsDataEncrypt"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    .line 40
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    .line 42
    return-void
.end method


# virtual methods
.method deleteData(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # Ljava/lang/String;

    .line 155
    invoke-super {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method insertData(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 64
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->deleteDataLowMemory(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, -0x2

    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->deleteDataLowMemory(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, -0x2

    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    invoke-virtual {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->encryptTrackData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    move-object p2, v0

    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
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

    .line 53
    const-string v1, "created_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "cv":Landroid/content/ContentValues;
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method queryData(Landroid/net/Uri;I)[Ljava/lang/String;
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "limit"    # I

    move-object/from16 v1, p0

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 78
    .local v3, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 79
    .local v4, "last_id":Ljava/lang/String;
    const-string v0, "9"

    move-object v5, v0

    .line 81
    .local v5, "gzipType":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    .line 82
    .local v8, "dataEncryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONArray;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v9, v0

    .line 83
    .local v9, "dataJsonArray":Lorg/json/JSONArray;
    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->contentResolver:Landroid/content/ContentResolver;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "created_at ASC LIMIT "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p2

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p1

    move-object v15, v0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 84
    if-eqz v2, :cond_8

    .line 87
    const-string v0, "ekey"

    move-object v10, v0

    .line 88
    .local v10, "EKEY":Ljava/lang/String;
    const-string v0, "pkv"

    move-object v11, v0

    .line 89
    .local v11, "KEY_VER":Ljava/lang/String;
    const-string v0, "payloads"

    .local v0, "PAYLOADS":Ljava/lang/String;
    :goto_0
    move-object v12, v0

    .line 90
    .end local v0    # "PAYLOADS":Ljava/lang/String;
    .local v12, "PAYLOADS":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v4    # "last_id":Ljava/lang/String;
    .local v0, "last_id":Ljava/lang/String;
    move-object v4, v0

    .end local v0    # "last_id":Ljava/lang/String;
    .restart local v4    # "last_id":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v0, "data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "keyData":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->parseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 98
    goto/16 :goto_3

    .line 101
    :cond_1
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v13, "jsonObject":Lorg/json/JSONObject;
    const-string v14, "ekey"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    .line 103
    .local v14, "isHasEkey":Z
    if-nez v14, :cond_2

    .line 104
    iget-object v15, v1, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    invoke-virtual {v15, v13}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->encryptTrackData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v15

    move-object v13, v15

    .line 107
    :cond_2
    const-string v15, "ekey"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 108
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ekey"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "pkv"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 110
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONArray;

    const-string v7, "payloads"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 112
    :cond_3
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 113
    .local v7, "jsonArray":Lorg/json/JSONArray;
    const-string v15, "payloads"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    nop

    .line 122
    move-object/from16 v16, v0

    goto :goto_2

    .line 117
    :cond_4
    const-string v6, "_flush_time"

    move-object/from16 v16, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .end local v0    # "keyData":Ljava/lang/String;
    .local v16, "keyData":Ljava/lang/String;
    invoke-virtual {v13, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v14    # "isHasEkey":Z
    goto :goto_2

    .line 120
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "keyData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 89
    :goto_3
    move-object v0, v12

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 124
    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 125
    .local v0, "dataEncryptJsonArray":Lorg/json/JSONArray;
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 126
    .restart local v6    # "key":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v13, "ekey"

    const-string v14, "$"

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v13, "pkv"

    const-string v14, "$"

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v13, "payloads"

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v13, "flush_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v7, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_4

    .line 133
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 134
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_5

    .line 136
    :cond_7
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 137
    const-string v1, "1"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v1

    .line 143
    .end local v0    # "dataEncryptJsonArray":Lorg/json/JSONArray;
    .end local v8    # "dataEncryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/json/JSONArray;>;"
    .end local v9    # "dataJsonArray":Lorg/json/JSONArray;
    .end local v10    # "EKEY":Ljava/lang/String;
    .end local v11    # "KEY_VER":Ljava/lang/String;
    .end local v12    # "PAYLOADS":Ljava/lang/String;
    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    .line 144
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 143
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 140
    :catch_1
    move-exception v0

    .line 141
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .end local v0    # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_9

    goto :goto_6

    .line 147
    :cond_9
    :goto_7
    if-eqz v4, :cond_a

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v5, v0, v1

    return-object v0

    .line 150
    :cond_a
    const/4 v0, 0x0

    return-object v0

    .line 143
    :goto_8
    if-eqz v2, :cond_b

    .line 144
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_b
    throw v0
.end method
