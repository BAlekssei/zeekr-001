.class public Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;
.super Ljava/lang/Object;
.source "DbAdapter.java"


# static fields
.field private static instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;


# instance fields
.field private final mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

.field private mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

.field private mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sensorsDataEncrypt"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    .line 43
    if-eqz p3, :cond_0

    .line 44
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EncryptDataOperation;-><init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/EventDataOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    .line 48
    :goto_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/PersistentDataOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    .line 49
    return-void
.end method

.method private decodeIdentities(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "identities"    # Ljava/lang/String;

    .line 369
    if-nez p1, :cond_0

    .line 370
    const/4 v0, 0x0

    return-object v0

    .line 372
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;
    .locals 2

    .line 60
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The static method getInstance(Context context, String packageName) should be called before calling getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sensorsDataEncrypt"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    .line 53
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    .line 56
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->instance:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    return-object v0
.end method


# virtual methods
.method public addChannelEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .line 284
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "event_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getChannelPersistentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v0    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public addJSON(Lorg/json/JSONObject;)I
    .locals 3
    .param p1, "j"    # Lorg/json/JSONObject;

    .line 75
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I

    move-result v0

    .line 76
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryDataCount(Landroid/net/Uri;)I

    move-result v1

    return v1

    .line 79
    :cond_0
    return v0
.end method

.method public cleanupEvents(Ljava/lang/String;)I
    .locals 2
    .param p1, "last_id"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryDataCount(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public commitActivityCount(I)V
    .locals 4
    .param p1, "activityCount"    # I

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getActivityStartCountUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 111
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public commitAppEndData(Ljava/lang/String;)V
    .locals 4
    .param p1, "appEndData"    # Ljava/lang/String;

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getAppEndDataUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 167
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public commitAppStartTime(J)V
    .locals 4
    .param p1, "appStartTime"    # J

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getAppStartTimeUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 137
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public commitIdentities(Ljava/lang/String;)V
    .locals 5
    .param p1, "identities"    # Ljava/lang/String;

    .line 329
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Base64:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "encodeIdentities":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getUserIdentities()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "value"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "encodeIdentities":Ljava/lang/String;
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 334
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public commitLoginId(Ljava/lang/String;)V
    .locals 4
    .param p1, "loginId"    # Ljava/lang/String;

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 197
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public commitLoginIdKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "loginIdKey"    # Ljava/lang/String;

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdKeyUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 386
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public commitPushID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pushId"    # Ljava/lang/String;

    .line 467
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "push_key"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "push_value"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 468
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getPushIdUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 472
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public commitRemoteConfig(Ljava/lang/String;)V
    .locals 4
    .param p1, "config"    # Ljava/lang/String;

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getRemoteConfigUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 431
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public commitSessionIntervalTime(I)V
    .locals 4
    .param p1, "sessionIntervalTime"    # I

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSessionTimeUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 242
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public commitSubProcessFlushState(Z)V
    .locals 4
    .param p1, "flushState"    # Z

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSubProcessUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->insertData(Landroid/net/Uri;Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 303
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public deleteAllEvents()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "DB_DELETE_ALL"

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public generateDataString(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEventUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 505
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivityCount()I
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getActivityStartCountUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 121
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 123
    :cond_0
    return v1
.end method

.method public getAppEndData()Ljava/lang/String;
    .locals 3

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getAppEndDataUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "values":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 178
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 182
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppStartTime()J
    .locals 3

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getAppStartTimeUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "values":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 148
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 152
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 153
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIdentities()Ljava/lang/String;
    .locals 3

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getUserIdentities()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "values":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 345
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->decodeIdentities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 349
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 350
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdentitiesFromLocal()Ljava/lang/String;
    .locals 2

    .line 360
    :try_start_0
    const-string v0, "user_ids"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    .line 361
    .local v0, "userPersistent":Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->decodeIdentities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 362
    .end local v0    # "userPersistent":Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 3

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "values":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 208
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 212
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getLoginIdFromLocal()Ljava/lang/String;
    .locals 2

    .line 223
    :try_start_0
    const-string v0, "events_login_id"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    .line 224
    .local v0, "persistentLoginId":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 225
    .end local v0    # "persistentLoginId":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getLoginIdKey()Ljava/lang/String;
    .locals 3

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdKeyUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "values":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 397
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 401
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getLoginIdKeyFromLocal()Ljava/lang/String;
    .locals 2

    .line 412
    :try_start_0
    const-string v0, "login_id_key"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    .line 413
    .local v0, "loginIdKeyPersistent":Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 414
    .end local v0    # "loginIdKeyPersistent":Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getPushId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getPushIdUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "push_key"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "values":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 479
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 483
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getRemoteConfig()Ljava/lang/String;
    .locals 3

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getRemoteConfigUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "values":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 442
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 446
    .end local v0    # "values":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getRemoteConfigFromLocal()Ljava/lang/String;
    .locals 2

    .line 457
    :try_start_0
    const-string v0, "sensorsdata_sdk_configuration"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    .line 458
    .local v0, "persistentRemoteSDKConfig":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 459
    .end local v0    # "persistentRemoteSDKConfig":Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getSessionIntervalTime()I
    .locals 4

    .line 251
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSessionTimeUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "values":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 253
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 257
    .end local v1    # "values":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 258
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isFirstChannelEvent([Ljava/lang/String;)Z
    .locals 7
    .param p1, "eventName"    # [Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mTrackEventOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getChannelPersistentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "event_name = ? or event_name = ? "

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryDataCount(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public isSubProcessFlushing()Z
    .locals 4

    .line 312
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSubProcessUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->queryData(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "values":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 314
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    .line 318
    .end local v1    # "values":[Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 319
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public removePushId(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mPersistentOperation:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->mDbParams:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getPushIdUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DataOperation;->deleteData(Landroid/net/Uri;Ljava/lang/String;)V

    .line 490
    return-void
.end method
