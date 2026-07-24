.class Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;
.super Ljava/lang/Object;
.source "SAProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$URI_CODE;,
        Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$QueryEventsListener;
    }
.end annotation


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private isDbWritable:Z

.field private mAppStartTime:J

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mIsFlushDataState:Z

.field private mLoginIdKeyPersistent:Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

.field private mSessionTime:I

.field private mUserIdsPersistent:Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

.field private persistentAppEndData:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

.field private persistentLoginId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

.field private persistentRemoteSDKConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

.field private startActivityCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mIsFlushDataState:Z

    .line 56
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->startActivityCount:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mAppStartTime:J

    .line 58
    const/16 v0, 0x7530

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mSessionTime:I

    .line 62
    :try_start_0
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 63
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 65
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->initLoader(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    .line 66
    const-string v0, "app_end_data"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->persistentAppEndData:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    .line 67
    const-string v0, "events_login_id"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->persistentLoginId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    .line 68
    const-string v0, "sensorsdata_sdk_configuration"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->persistentRemoteSDKConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    .line 69
    const-string v0, "user_ids"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mUserIdsPersistent:Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    .line 70
    const-string v0, "login_id_key"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mLoginIdKeyPersistent:Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    .line 45
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    .line 45
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    return v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDBExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 372
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 378
    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 377
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    .line 379
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-object v0
.end method

.method private isDBExist()Z
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mContext:Landroid/content/Context;

    const-string v1, "sensorsdata"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendUri(Landroid/content/UriMatcher;Ljava/lang/String;)V
    .locals 2
    .param p1, "uriMatcher"    # Landroid/content/UriMatcher;
    .param p2, "authority"    # Ljava/lang/String;

    .line 134
    :try_start_0
    const-string v0, "events"

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    const-string v0, "activity_started_count"

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    const-string v0, "app_start_time"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    const-string v0, "app_end_data"

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    const-string v0, "session_interval_time"

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    const-string v0, "events_login_id"

    const/4 v1, 0x7

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    const-string v0, "t_channel"

    const/16 v1, 0x8

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    const-string v0, "sub_process_flush_data"

    const/16 v1, 0x9

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    const-string v0, "first_process_start"

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    const-string v0, "disable_SDK"

    const/16 v1, 0xb

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    const-string v0, "sensorsdata_sdk_configuration"

    const/16 v1, 0xc

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    const-string v0, "user_ids"

    const/16 v1, 0xd

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    const-string v0, "login_id_key"

    const/16 v1, 0xe

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    const-string v0, "push_key"

    const/16 v1, 0xf

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 151
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deleteEvents(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 183
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 184
    return v1

    .line 187
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 189
    const-string v2, "events"

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 194
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    .line 193
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 195
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1
.end method

.method public insertChannelPersistent(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 208
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    const-string v1, "event_name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    const-string v1, "t_channel"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 212
    .local v1, "d":J
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 209
    .end local v1    # "d":J
    :cond_1
    :goto_0
    return-object p1

    .line 213
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "exception":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 216
    .end local v0    # "exception":Ljava/lang/Exception;
    return-object p1
.end method

.method public insertEvent(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 163
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "created_at"

    .line 164
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    const-string v1, "events"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 168
    .local v1, "d":J
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 165
    .end local v1    # "d":J
    :cond_1
    :goto_0
    return-object p1

    .line 169
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    return-object p1
.end method

.method public insertPersistent(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 228
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 260
    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "push_key"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "push_value"

    .line 261
    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    goto/16 :goto_0

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mLoginIdKeyPersistent:Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    const-string v1, "login_id_key"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;->commit(Ljava/lang/Object;)V

    .line 258
    goto/16 :goto_0

    .line 253
    :pswitch_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mUserIdsPersistent:Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    const-string v2, "user_ids"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;->commit(Ljava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 255
    goto :goto_0

    .line 250
    :pswitch_4
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->persistentRemoteSDKConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    const-string v1, "sensorsdata_sdk_configuration"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;->commit(Ljava/lang/Object;)V

    .line 251
    goto :goto_0

    .line 247
    :pswitch_5
    const-string v0, "sub_process_flush_data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mIsFlushDataState:Z

    .line 248
    goto :goto_0

    .line 243
    :pswitch_6
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->persistentLoginId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    const-string v2, "events_login_id"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;->commit(Ljava/lang/Object;)V

    .line 244
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 245
    goto :goto_0

    .line 239
    :pswitch_7
    const-string v1, "session_interval_time"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mSessionTime:I

    .line 240
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 241
    goto :goto_0

    .line 236
    :pswitch_8
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->persistentAppEndData:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    const-string v1, "app_end_data"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;->commit(Ljava/lang/Object;)V

    .line 237
    goto :goto_0

    .line 233
    :pswitch_9
    const-string v0, "app_start_time"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mAppStartTime:J

    .line 234
    goto :goto_0

    .line 230
    :pswitch_a
    const-string v0, "activity_started_count"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->startActivityCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 268
    :goto_0
    nop

    .line 269
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public migratingDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 84
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sensorsdata.analytics.android.EnableMigratingDB"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    .local v0, "isMigrating":Z
    if-nez v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "isMigrating":Z
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryByTable(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 283
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 284
    return-object v1

    .line 286
    :cond_0
    move-object v0, v1

    .line 288
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 289
    .local v1, "liteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_1

    .line 290
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 295
    .end local v1    # "liteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->isDbWritable:Z

    .line 294
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 296
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-object v0
.end method

.method public queryPersistent(ILandroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "code"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "column":Ljava/lang/String;
    const/4 v1, 0x0

    .line 309
    .local v1, "data":Ljava/lang/Object;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 346
    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v2

    const-string v3, "push_key"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 347
    const-string v2, "push_key"

    move-object v0, v2

    .line 348
    goto/16 :goto_0

    .line 342
    :pswitch_2
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mLoginIdKeyPersistent:Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 343
    const-string v2, "login_id_key"

    move-object v0, v2

    .line 344
    goto/16 :goto_0

    .line 338
    :pswitch_3
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mUserIdsPersistent:Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 339
    const-string v2, "user_ids"

    move-object v0, v2

    .line 340
    goto :goto_0

    .line 335
    :pswitch_4
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->persistentRemoteSDKConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 336
    goto :goto_0

    .line 331
    :pswitch_5
    iget-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mIsFlushDataState:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 332
    const-string v2, "sub_process_flush_data"

    move-object v0, v2

    .line 333
    goto :goto_0

    .line 327
    :pswitch_6
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->persistentLoginId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 328
    const-string v2, "events_login_id"

    move-object v0, v2

    .line 329
    goto :goto_0

    .line 323
    :pswitch_7
    iget v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mSessionTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 324
    const-string v2, "session_interval_time"

    move-object v0, v2

    .line 325
    goto :goto_0

    .line 319
    :pswitch_8
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->persistentAppEndData:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 320
    const-string v2, "app_end_data"

    move-object v0, v2

    .line 321
    goto :goto_0

    .line 315
    :pswitch_9
    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->mAppStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v1, v2

    .line 316
    const-string v2, "app_start_time"

    move-object v0, v2

    .line 317
    goto :goto_0

    .line 311
    :pswitch_a
    iget v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->startActivityCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 312
    const-string v2, "activity_started_count"

    move-object v0, v2

    .line 313
    nop

    .line 353
    :goto_0
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 354
    .local v2, "matrixCursor":Landroid/database/MatrixCursor;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    return-object v2

    .line 356
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/Object;
    .end local v2    # "matrixCursor":Landroid/database/MatrixCursor;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeSP(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 387
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->remove(Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x1

    return v0
.end method
