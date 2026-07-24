.class public Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;
.super Landroid/content/ContentProvider;
.source "SensorsDataContentProvider.java"


# static fields
.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private dbHelper:Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;

.field private mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 110
    const/4 v0, 0x0

    .line 113
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->dbHelper:Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 117
    nop

    .line 118
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 119
    array-length v2, p2

    .line 120
    .local v2, "numValues":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 121
    aget-object v3, p2, v1

    invoke-virtual {p0, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 128
    :cond_1
    nop

    .line 129
    return v2

    .line 125
    .end local v2    # "numValues":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    nop

    .line 125
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 116
    :cond_2
    return v1

    .line 125
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1
    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 128
    :cond_3
    throw v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "deletedCounts":I
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 68
    .local v1, "code":I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v2, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->deleteEvents(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2

    .line 70
    :cond_0
    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    const-string v3, "remove_key"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->removeSP(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 76
    .end local v1    # "code":I
    :cond_1
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 88
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 93
    .local v0, "code":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->insertEvent(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 95
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->insertChannelPersistent(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->insertPersistent(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-object p1

    .line 101
    .end local v0    # "code":I
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p1

    .line 89
    :cond_3
    :goto_0
    return-object p1
.end method

.method public onCreate()Z
    .locals 6

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 47
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .local v1, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 48
    .end local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string v2, "com.sensorsdata.analytics.android.sdk.test"

    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    move-object v1, v2

    .line 51
    .local v1, "packageName":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;

    invoke-direct {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->dbHelper:Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;

    .line 52
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->dbHelper:Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataDBHelper;

    invoke-direct {v2, v0, v3}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    .line 53
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".SensorsDataContentProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->appendUri(Landroid/content/UriMatcher;Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v2, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->migratingDB(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 137
    .local v1, "code":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 138
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    const-string v4, "events"

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->queryByTable(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 139
    :cond_0
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 140
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    const-string v4, "t_channel"

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->queryByTable(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SensorsDataContentProvider;->mProviderHelper:Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    invoke-virtual {v2, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->queryPersistent(ILandroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 146
    .end local v1    # "code":I
    :goto_0
    goto :goto_1

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    return v0
.end method
