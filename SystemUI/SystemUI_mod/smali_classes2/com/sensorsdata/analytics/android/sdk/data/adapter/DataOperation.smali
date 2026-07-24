.class abstract Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;
.super Ljava/lang/Object;
.source "DataOperation.java"


# instance fields
.field TAG:Ljava/lang/String;

.field contentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private final mDatabaseFile:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "EventDataOperation"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->TAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    .line 43
    const-string v0, "sensorsdata"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->mDatabaseFile:Ljava/io/File;

    .line 44
    return-void
.end method

.method private belowMemThreshold()Z
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->getMaxCacheSize(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 162
    :cond_1
    return v1
.end method

.method private getMaxCacheSize(Landroid/content/Context;)J
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getMaxCacheSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 154
    const-wide/32 v1, 0x2000000

    return-wide v1
.end method


# virtual methods
.method deleteData(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # Ljava/lang/String;

    .line 97
    :try_start_0
    const-string v0, "DB_DELETE_ALL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "_id <= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 105
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method deleteDataLowMemory(Landroid/net/Uri;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 133
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->belowMemThreshold()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->TAG:Ljava/lang/String;

    const-string v2, "There is not enough space left on the device to store events, so will delete 100 oldest events"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "eventsData":[Ljava/lang/String;
    const/4 v2, -0x2

    if-nez v0, :cond_0

    .line 137
    return v2

    .line 140
    :cond_0
    aget-object v3, v0, v1

    .line 141
    .local v3, "lastId":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryDataCount(Landroid/net/Uri;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 143
    return v2

    .line 146
    .end local v0    # "eventsData":[Ljava/lang/String;
    .end local v3    # "lastId":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method abstract insertData(Landroid/net/Uri;Landroid/content/ContentValues;)I
.end method

.method abstract insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
.end method

.method parseData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "keyData"    # Ljava/lang/String;

    .line 109
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 110
    :cond_0
    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "crc":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object p1, v2

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    :cond_1
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 121
    .end local v0    # "index":I
    .end local v1    # "crc":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 122
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object p1
.end method

.method abstract queryData(Landroid/net/Uri;I)[Ljava/lang/String;
.end method

.method queryDataCount(Landroid/net/Uri;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 68
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryDataCount(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method queryDataCount(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->contentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_0
    return v1

    .line 85
    :cond_1
    if-eqz v0, :cond_2

    .line 86
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 85
    :goto_2
    if-eqz v0, :cond_3

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_3
    throw v1
.end method
