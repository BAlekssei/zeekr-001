.class Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;
.super Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;
.source "PersistentDataOperation.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private handleInsertUri(Landroid/net/Uri;Lorg/json/JSONObject;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .line 53
    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 56
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v2, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 59
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "sub_process_flush_data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "push_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    goto :goto_1

    :sswitch_2
    const-string v5, "app_end_data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :sswitch_3
    const-string v4, "sensorsdata_sdk_configuration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_4
    const-string v4, "app_start_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string v4, "user_ids"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_6
    const-string v4, "login_id_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    goto :goto_1

    :sswitch_7
    const-string v4, "first_process_start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_8
    const-string v4, "session_interval_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_9
    const-string v4, "events_login_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_a
    const-string v4, "activity_started_count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v0

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 96
    return v0

    .line 92
    :pswitch_0
    const-string v0, "push_key"

    const-string v4, "push_key"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "push_value"

    const-string v4, "push_value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    goto/16 :goto_2

    .line 89
    :pswitch_1
    const-string v0, "login_id_key"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    goto/16 :goto_2

    .line 86
    :pswitch_2
    const-string v0, "user_ids"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    goto/16 :goto_2

    .line 83
    :pswitch_3
    const-string v0, "sensorsdata_sdk_configuration"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    goto :goto_2

    .line 80
    :pswitch_4
    const-string v0, "first_process_start"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    goto :goto_2

    .line 77
    :pswitch_5
    const-string v0, "sub_process_flush_data"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 78
    goto :goto_2

    .line 74
    :pswitch_6
    const-string v0, "events_login_id"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    goto :goto_2

    .line 71
    :pswitch_7
    const-string v0, "session_interval_time"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    goto :goto_2

    .line 68
    :pswitch_8
    const-string v0, "app_start_time"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    goto :goto_2

    .line 65
    :pswitch_9
    const-string v0, "app_end_data"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_2

    .line 62
    :pswitch_a
    const-string v0, "activity_started_count"

    const-string v4, "value"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    nop

    .line 98
    :goto_2
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v2    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "path":Ljava/lang/String;
    :cond_2
    goto :goto_3

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x55ad715f -> :sswitch_a
        -0x5598a5e9 -> :sswitch_9
        -0x45f28fe2 -> :sswitch_8
        -0x422858bd -> :sswitch_7
        -0x1b3a952f -> :sswitch_6
        -0xfdd2bbc -> :sswitch_5
        0x2f2ea168 -> :sswitch_4
        0x38750b95 -> :sswitch_3
        0x5ab6fcec -> :sswitch_2
        0x69e05fba -> :sswitch_1
        0x751c3c34 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleQueryUri(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 107
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 110
    :cond_1
    move-object v2, v0

    .line 112
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 113
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;->contentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 114
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 115
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 116
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "sub_process_flush_data"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v3

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "push_key"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x8

    goto :goto_0

    :sswitch_2
    const-string v5, "app_end_data"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v5, "sensorsdata_sdk_configuration"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_4
    const-string v5, "app_start_time"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0xa

    goto :goto_0

    :sswitch_5
    const-string v5, "user_ids"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_6
    const-string v5, "login_id_key"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_7
    const-string v5, "first_process_start"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_8
    const-string v5, "session_interval_time"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x9

    goto :goto_0

    :sswitch_9
    const-string v5, "events_login_id"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_a
    const-string v5, "activity_started_count"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    move v4, v6

    :cond_2
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 132
    nop

    .line 138
    if-eqz v2, :cond_6

    .line 139
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 130
    :pswitch_0
    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-eqz v2, :cond_3

    .line 139
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_3
    return-object v3

    .line 127
    :pswitch_1
    :try_start_2
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    if-eqz v2, :cond_4

    .line 139
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_4
    return-object v3

    .line 120
    :pswitch_2
    :try_start_3
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    if-eqz v2, :cond_5

    .line 139
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_5
    return-object v3

    .line 132
    :cond_6
    :goto_1
    return-object v0

    .line 138
    :cond_7
    if-eqz v2, :cond_8

    .line 139
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 138
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    .end local v3    # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_8

    goto :goto_2

    .line 142
    :cond_8
    :goto_3
    return-object v0

    .line 138
    :goto_4
    if-eqz v2, :cond_9

    .line 139
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_9
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x55ad715f -> :sswitch_a
        -0x5598a5e9 -> :sswitch_9
        -0x45f28fe2 -> :sswitch_8
        -0x422858bd -> :sswitch_7
        -0x1b3a952f -> :sswitch_6
        -0xfdd2bbc -> :sswitch_5
        0x2f2ea168 -> :sswitch_4
        0x38750b95 -> :sswitch_3
        0x5ab6fcec -> :sswitch_2
        0x69e05fba -> :sswitch_1
        0x751c3c34 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method deleteData(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_key"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method insertData(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 48
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;->handleInsertUri(Landroid/net/Uri;Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method queryData(Landroid/net/Uri;I)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "limit"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;->handleQueryUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
