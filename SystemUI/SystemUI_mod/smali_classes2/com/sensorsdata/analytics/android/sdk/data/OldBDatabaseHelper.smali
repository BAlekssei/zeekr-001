.class public Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OldBDatabaseHelper.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method


# virtual methods
.method getAllEvents(Landroid/database/sqlite/SQLiteDatabase;Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$QueryEventsListener;)V
    .locals 7
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "listener"    # Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$QueryEventsListener;

    .line 44
    const/4 v0, 0x0

    move-object v1, v0

    .line 46
    .local v1, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 47
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT * FROM %s ORDER BY %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "events"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "created_at"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 48
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "dataIndex":I
    const-string v3, "created_at"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 52
    .local v3, "createIndex":I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$QueryEventsListener;->insert(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v0    # "dataIndex":I
    .end local v3    # "createIndex":I
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;->close()V

    .line 60
    if-eqz v1, :cond_1

    .line 61
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;->close()V

    .line 60
    if-eqz v1, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    :goto_2
    return-void

    .line 58
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/OldBDatabaseHelper;->close()V

    .line 60
    if-eqz v1, :cond_2

    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_2
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 41
    return-void
.end method
