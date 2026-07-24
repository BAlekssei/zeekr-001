.class public final Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;
.super Ljava/lang/Object;
.source "UserIdentityAPI.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/internal/api/IUserIdentityAPI;


# static fields
.field private static final ANDROID_ID:Ljava/lang/String; = "$identity_android_id"

.field private static final ANDROID_UUID:Ljava/lang/String; = "$identity_android_uuid"

.field private static final ANONYMOUS_ID:Ljava/lang/String; = "$identity_anonymous_id"

.field private static final COOKIE_ID:Ljava/lang/String; = "$identity_cookie_id"

.field private static final IDENTITIES_KEY:Ljava/lang/String; = "identities"

.field private static final LOGIN_ID:Ljava/lang/String; = "$identity_login_id"

.field private static final TAG:Ljava/lang/String; = "UserIdentityAPI"


# instance fields
.field private LOGIN_ID_KEY:Ljava/lang/String;

.field private isResetAnonymousId:Z

.field private final mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

.field private mIdentities:Lorg/json/JSONObject;

.field private final mLoginIdLock:Ljava/lang/Object;

.field private mLoginIdValue:Ljava/lang/String;

.field private mLoginIdentities:Lorg/json/JSONObject;

.field private mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

.field private mUnbindIdentities:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V
    .locals 4
    .param p1, "contextManager"    # Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;
    .param p2, "saConfigOptions"    # Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "$identity_login_id"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdLock:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isResetAnonymousId:Z

    .line 67
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    .line 68
    const-string v0, "events_distinct_id"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    .line 70
    :try_start_0
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getLoginIDKey()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "loginIDKey":Ljava/lang/String;
    const-string v1, "$identity_login_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "UserIdentityAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The LoginIDKey \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is invalid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "loginIDKey":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->initIdentities()V

    .line 82
    return-void
.end method

.method private clearIdentities(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 507
    .local p1, "whiteListKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 509
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 514
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitIdentities(Ljava/lang/String;)V

    .line 516
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private initIdentities()V
    .locals 9

    .line 446
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    .line 447
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdentities:Lorg/json/JSONObject;

    .line 449
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getIdentitiesFromLocal()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "cacheIdentities":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    .line 452
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    const-string v2, "$identity_anonymous_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 453
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    const-string v2, "$identity_anonymous_id"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->isExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    const-string v2, "$identity_anonymous_id"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollect()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isValidAndroidId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    const-string v2, "$identity_android_id"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getAndroidId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    const-string v2, "$identity_android_uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getLoginIdFromLocal()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "loginIdValue":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getLoginIdKeyFromLocal()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "oldLoginKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 473
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    .line 474
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v3, :cond_5

    .line 475
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "oldLoginValue":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 477
    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v8, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "$identity_android_id"

    aput-object v8, v7, v6

    const-string v6, "$identity_android_uuid"

    aput-object v6, v7, v5

    aput-object v2, v7, v4

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->clearIdentities(Ljava/util/List;)V

    .line 480
    .end local v3    # "oldLoginValue":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 481
    :cond_5
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v3

    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitLoginIdKey(Ljava/lang/String;)V

    .line 483
    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "$identity_android_id"

    aput-object v7, v3, v6

    const-string v6, "$identity_android_uuid"

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->clearIdentities(Ljava/util/List;)V

    goto :goto_1

    .line 487
    :cond_6
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 488
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    .line 489
    const-string v3, "$identity_android_id"

    const-string v4, "$identity_android_uuid"

    const-string v5, "$identity_anonymous_id"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->clearIdentities(Ljava/util/List;)V

    .line 491
    :cond_7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitLoginIdKey(Ljava/lang/String;)V

    .line 493
    :goto_1
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "identities":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdentities:Lorg/json/JSONObject;

    .line 495
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitIdentities(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v0    # "cacheIdentities":Ljava/lang/String;
    .end local v1    # "loginIdValue":Ljava/lang/String;
    .end local v2    # "oldLoginKey":Ljava/lang/String;
    .end local v3    # "identities":Ljava/lang/String;
    goto :goto_2

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 499
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private isKeyValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 624
    const-string v0, "$identity_anonymous_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$identity_android_uuid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$identity_android_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    .line 625
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$identity_login_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$BindID"

    .line 626
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$UnbindID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 624
    :goto_0
    return v0
.end method

.method private mergeBindH5(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "eventObject"    # Lorg/json/JSONObject;
    .param p2, "identityJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 552
    if-nez p2, :cond_0

    .line 553
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object p2, v0

    goto :goto_1

    .line 555
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 557
    .local v0, "iteratorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 559
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 560
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    const-string v2, "$identity_cookie_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 565
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitIdentities(Ljava/lang/String;)V

    .line 568
    .end local v0    # "iteratorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-static {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 569
    const-string v0, "identities"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    return-void
.end method

.method private mergeSignUpH5(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "eventObject"    # Lorg/json/JSONObject;
    .param p2, "identityJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
        }
    .end annotation

    .line 520
    const/4 v0, 0x1

    .line 521
    .local v0, "isH5IdentityHasLoginId":Z
    if-eqz p2, :cond_0

    .line 522
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "loginId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    .end local v1    # "loginId":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object p2, v1

    .line 528
    const-string v1, "distinct_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .restart local v1    # "loginId":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 533
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-static {v2, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 534
    const-string v2, "identities"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 535
    return-void

    .line 539
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isLoginIdValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 542
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertDistinctId(Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-static {v2, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 546
    const-string v2, "identities"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string v2, "login_id"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->login(Ljava/lang/String;)V

    .line 549
    return-void

    .line 540
    :cond_3
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private mergeTrackH5(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "eventObject"    # Lorg/json/JSONObject;
    .param p2, "identityJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 591
    if-nez p2, :cond_0

    .line 592
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object p2, v0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    goto :goto_1

    .line 595
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-static {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 596
    const-string v0, "identities"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    goto :goto_2

    .line 597
    :goto_1
    nop

    .line 598
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 602
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 605
    .local v1, "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_start_2
    invoke-interface {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->trackEvent(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 608
    goto :goto_4

    .line 606
    :catch_1
    move-exception v2

    .line 607
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 609
    .end local v1    # "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_3

    .line 613
    :cond_1
    goto :goto_5

    .line 611
    :catch_2
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callTrack(Lorg/json/JSONObject;)V

    .line 615
    return-void
.end method

.method private mergeUnbindH5(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "eventObject"    # Lorg/json/JSONObject;
    .param p2, "identityJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 573
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 574
    .local v0, "iteratorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 575
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 577
    .local v1, "key":Ljava/lang/String;
    const-string v2, "$identity_anonymous_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "$identity_android_uuid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "$identity_android_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    goto :goto_0

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 582
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 584
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 585
    :cond_3
    const-string v1, "identities"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitIdentities(Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method private updateIdentities(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitIdentities(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 439
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
        }
    .end annotation

    .line 258
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isKeyValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertDistinctId(Ljava/lang/String;)V

    .line 263
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->updateIdentities(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 267
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind key is invalid, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableDataCollect(Ljava/lang/String;)V
    .locals 4
    .param p1, "androidId"    # Ljava/lang/String;

    .line 320
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isValidAndroidId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isResetAnonymousId:Z

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->commit(Ljava/lang/Object;)V

    .line 324
    :cond_1
    const-string v0, "$identity_android_id"

    .line 325
    .local v0, "key":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 327
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 328
    .local v1, "uuid":Ljava/lang/String;
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isResetAnonymousId:Z

    if-eqz v0, :cond_4

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->commit(Ljava/lang/Object;)V

    .line 331
    :cond_4
    const-string v0, "$identity_android_uuid"

    .line 332
    .restart local v0    # "key":Ljava/lang/String;
    nop

    .line 334
    .local v1, "value":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    const-string v3, "$identity_anonymous_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isResetAnonymousId:Z

    if-eqz v2, :cond_5

    .line 335
    const-string v2, "$identity_anonymous_id"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->updateIdentities(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_5
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitIdentities(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    goto :goto_1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public getAnonymousId()Ljava/lang/String;
    .locals 2

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 110
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 2

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->getLoginId()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "loginId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 92
    .end local v0    # "loginId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 95
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getIdentities(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 294
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v0, p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdentities:Lorg/json/JSONObject;

    return-object v0

    .line 296
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v0, p1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mUnbindIdentities:Lorg/json/JSONObject;

    return-object v0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    .line 158
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->isTaskExecuteThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getLoginId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public identify(Ljava/lang/String;)V
    .locals 4
    .param p1, "distinctId"    # Ljava/lang/String;

    .line 167
    :try_start_0
    const-string v0, "UserIdentityAPI"

    const-string v1, "identify is called"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->commit(Ljava/lang/Object;)V

    .line 171
    const-string v1, "$identity_anonymous_id"

    invoke-direct {p0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->updateIdentities(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .local v2, "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_start_2
    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->identify()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    goto :goto_1

    .line 177
    :catch_0
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 180
    .end local v2    # "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 182
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callIdentify(Ljava/lang/String;)V

    .line 184
    :cond_1
    monitor-exit v0

    .line 187
    goto :goto_2

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 188
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public isLoginIdValid(Ljava/lang/String;)Z
    .locals 3
    .param p1, "loginId"    # Ljava/lang/String;

    .line 420
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "anonymousId":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getLoginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getLoginIdKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 421
    :goto_0
    return v1
.end method

.method public loadIdentitiesFromFile()V
    .locals 2

    .line 407
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getIdentities()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 411
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public login(Ljava/lang/String;)V
    .locals 1
    .param p1, "loginId"    # Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->login(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 193
    return-void
.end method

.method public login(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 198
    :try_start_0
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitLoginId(Ljava/lang/String;)V

    .line 201
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getIdentities()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdentities:Lorg/json/JSONObject;

    .line 202
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitLoginIdKey(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->updateIdentities(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "$identity_android_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "$identity_android_uuid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->LOGIN_ID_KEY:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->clearIdentities(Ljava/util/List;)V

    .line 207
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .local v1, "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_start_1
    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->login()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    goto :goto_1

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 214
    .end local v1    # "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callLogin(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 219
    goto :goto_2

    .line 217
    :catch_1
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 220
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public logout()V
    .locals 4

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 226
    :try_start_1
    const-string v1, "UserIdentityAPI"

    const-string v2, "logout is called"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->getLoginId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 229
    :try_start_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitLoginId(Ljava/lang/String;)V

    .line 230
    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 236
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    .local v2, "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_start_4
    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->logout()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    goto :goto_2

    .line 240
    :catch_1
    move-exception v3

    .line 241
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 243
    .end local v2    # "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 245
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callLogout()V

    .line 246
    const-string v1, "UserIdentityAPI"

    const-string v2, "Clean loginId"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitLoginIdKey(Ljava/lang/String;)V

    .line 249
    const-string v1, "$identity_android_id"

    const-string v2, "$identity_android_uuid"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->clearIdentities(Ljava/util/List;)V

    .line 250
    monitor-exit v0

    .line 253
    goto :goto_3

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 251
    :catch_2
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 254
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public mergeH5Identities(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .param p2, "eventObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "identityJson":Lorg/json/JSONObject;
    const-string v1, "identities"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "identities":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 379
    const-string v2, "$identity_android_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    const-string v2, "$identity_anonymous_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    const-string v2, "$identity_android_uuid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    goto :goto_0

    .line 383
    :catch_0
    move-exception v2

    .line 384
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 388
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v2, p1, :cond_1

    .line 389
    invoke-direct {p0, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mergeSignUpH5(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 390
    :cond_1
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_BIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v2, p1, :cond_2

    .line 391
    invoke-direct {p0, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mergeBindH5(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 392
    :cond_2
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v2, p1, :cond_3

    if-eqz v0, :cond_3

    .line 393
    invoke-direct {p0, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mergeUnbindH5(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 395
    :cond_3
    invoke-direct {p0, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mergeTrackH5(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    :goto_1
    goto :goto_2

    .line 397
    :catch_1
    move-exception v2

    .line 398
    .local v2, "exception":Lorg/json/JSONException;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 400
    .end local v2    # "exception":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public resetAnonymousId()V
    .locals 6

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :try_start_1
    const-string v1, "UserIdentityAPI"

    const-string v2, "resetAnonymousId is called"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "androidId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "UserIdentityAPI"

    const-string v3, "DistinctId not change"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    monitor-exit v0

    return-void

    .line 124
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isResetAnonymousId:Z

    .line 125
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    monitor-exit v0

    return-void

    .line 129
    :cond_1
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isValidAndroidId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    move-object v2, v1

    .local v2, "newDistinctId":Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v2    # "newDistinctId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2    # "newDistinctId":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->commit(Ljava/lang/Object;)V

    .line 135
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    const-string v4, "$identity_anonymous_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    const-string v3, "$identity_anonymous_id"

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->updateIdentities(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_3
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 141
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .local v4, "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    :try_start_2
    invoke-interface {v4}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->resetAnonymousId()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    goto :goto_2

    .line 144
    :catch_0
    move-exception v5

    .line 145
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 147
    .end local v4    # "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 149
    :cond_4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callResetAnonymousId(Ljava/lang/String;)V

    .line 150
    .end local v1    # "androidId":Ljava/lang/String;
    .end local v2    # "newDistinctId":Ljava/lang/String;
    monitor-exit v0

    .line 153
    goto :goto_3

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 151
    :catch_1
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 154
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public unbind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isKeyValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertDistinctId(Ljava/lang/String;)V

    .line 276
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mUnbindIdentities:Lorg/json/JSONObject;

    .line 277
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mUnbindIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitIdentities(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 285
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 272
    :cond_1
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind key is invalid, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateIdentities(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "identitiesJson"    # Lorg/json/JSONObject;

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isValidAndroidId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "$identity_android_id"

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 355
    :cond_0
    const-string v0, "$identity_android_uuid"

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mIdentities:Lorg/json/JSONObject;

    const-string v1, "$identity_anonymous_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->isResetAnonymousId:Z

    if-eqz v0, :cond_1

    .line 358
    const-string v0, "$identity_anonymous_id"

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mDistinctId:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_1
    goto :goto_1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public updateLoginId(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginId"    # Ljava/lang/String;

    .line 309
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mLoginIdValue:Ljava/lang/String;

    .line 310
    return-void
.end method
