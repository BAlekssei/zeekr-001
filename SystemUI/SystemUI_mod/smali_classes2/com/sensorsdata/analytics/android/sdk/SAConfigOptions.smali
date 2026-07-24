.class public final Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
.super Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;
.source "SAConfigOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field mInvokeHeatMapEnabled:Z

.field mInvokeLog:Z

.field mInvokeVisualizedEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mServerUrl:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method protected clone()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 2

    .line 480
    move-object v0, p0

    .line 482
    .local v0, "copyObject":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 485
    goto :goto_0

    .line 483
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 486
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->clone()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    return-object v0
.end method

.method public disableDataCollect()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable:Z

    .line 341
    return-object p0
.end method

.method public disableDebugAssistant()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mDisableDebugAssistant:Z

    .line 184
    return-object p0
.end method

.method public disableDeviceId()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mDisableDeviceId:Z

    .line 466
    return-object p0
.end method

.method public disableRandomTimeRequestRemoteConfig()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mDisableRandomTimeRequestRemoteConfig:Z

    .line 174
    return-object p0
.end method

.method public disableSDK(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "disableSDK"    # Z

    .line 377
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK:Z

    .line 378
    return-object p0
.end method

.method public enableAutoAddChannelCallbackEvent(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "isAutoAddChannelCallbackEvent"    # Z

    .line 297
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isAutoAddChannelCallbackEvent:Z

    .line 298
    return-object p0
.end method

.method public enableEncrypt(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "enableEncrypt"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableEncrypt:Z

    .line 309
    return-object p0
.end method

.method public enableHeatMap(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "enableHeatMap"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mHeatMapEnabled:Z

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeHeatMapEnabled:Z

    .line 196
    return-object p0
.end method

.method public enableJavaScriptBridge(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "isSupportJellyBean"    # Z

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isAutoTrackWebView:Z

    .line 286
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isWebViewSupportJellyBean:Z

    .line 287
    return-object p0
.end method

.method public enableLog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "enableLog"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mLogEnabled:Z

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeLog:Z

    .line 231
    return-object p0
.end method

.method public enableSaveDeepLinkInfo(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "enableSave"    # Z

    .line 263
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableSaveDeepLinkInfo:Z

    .line 264
    return-object p0
.end method

.method public enableSession(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "enableSession"    # Z

    .line 496
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableSession:Z

    .line 497
    return-object p0
.end method

.method public enableSubProcessFlushData()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isSubProcessFlushData:Z

    .line 330
    return-object p0
.end method

.method public enableTrackAppCrash()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableTrackAppCrash:Z

    .line 103
    return-object p0
.end method

.method public enableTrackPageLeave(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "isTrackPageLeave"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableTrackPageLeave(ZZ)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    return-object v0
.end method

.method public enableTrackPageLeave(ZZ)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "isTrackPageLeave"    # Z
    .param p2, "isTrackFragmentPageLeave"    # Z

    .line 400
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mIsTrackPageLeave:Z

    .line 401
    iput-boolean p2, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mIsTrackFragmentPageLeave:Z

    .line 402
    return-object p0
.end method

.method public enableTrackPush(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "enableTrackPush"    # Z

    .line 366
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableTrackPush:Z

    .line 367
    return-object p0
.end method

.method public enableTrackScreenOrientation(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "enableScreenOrientation"    # Z

    .line 241
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mTrackScreenOrientationEnabled:Z

    .line 242
    return-object p0
.end method

.method public enableVisualizedAutoTrack(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "enableVisualizedAutoTrack"    # Z

    .line 217
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mVisualizedEnabled:Z

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeVisualizedEnabled:Z

    .line 219
    return-object p0
.end method

.method public enableVisualizedProperties(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "enableVisualizedProperties"    # Z

    .line 206
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mVisualizedPropertiesEnabled:Z

    .line 207
    return-object p0
.end method

.method public bridge synthetic getEncryptors()Ljava/util/List;
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getEncryptors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoginIDKey()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mLoginIDKey:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getStorePlugins()Ljava/util/List;
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getStorePlugins()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ignorePageLeave(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;"
        }
    .end annotation

    .line 412
    .local p1, "ignoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mIgnorePageLeave:Ljava/util/List;

    .line 413
    return-object p0
.end method

.method public isDataCollect()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable:Z

    return v0
.end method

.method public bridge synthetic isDataCollectEnable()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDataCollectEnable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDisableDeviceId()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableDeviceId()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDisableSDK()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableSDK()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnableSession()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isEnableSession()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnableTrackPush()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isEnableTrackPush()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMultiProcessFlush()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isMultiProcessFlush()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSaveDeepLinkInfo()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isSaveDeepLinkInfo()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTrackFragmentPageLeave()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isTrackFragmentPageLeave()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTrackPageLeave()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isTrackPageLeave()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVisualizedPropertiesEnabled()Z
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v0

    return v0
.end method

.method public persistentSecretKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "persistentSecretKey"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    .line 319
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    .line 320
    return-object p0
.end method

.method public registerEncryptor(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 2
    .param p1, "encryptListener"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    .line 423
    if-eqz p1, :cond_2

    .line 424
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->asymmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 425
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->symmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEncryptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEncryptors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 431
    :cond_1
    return-object p0

    .line 426
    :cond_2
    :goto_0
    return-object p0
.end method

.method public registerStorePlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "plugin"    # Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;

    .line 441
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mStorePlugins:Ljava/util/List;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mStorePlugins:Ljava/util/List;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mStorePlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    return-object p0
.end method

.method public setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "autoTrackEventType"    # I

    .line 92
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    .line 93
    return-object p0
.end method

.method public setFlushBulkSize(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "flushBulkSize"    # I

    .line 124
    const/16 v0, 0x32

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mFlushBulkSize:I

    .line 125
    return-object p0
.end method

.method public setFlushInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "flushInterval"    # I

    .line 113
    const/16 v0, 0x1388

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mFlushInterval:I

    .line 114
    return-object p0
.end method

.method public setLoginIDKey(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "loginIDKey"    # Ljava/lang/String;

    .line 455
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mLoginIDKey:Ljava/lang/String;

    .line 456
    return-object p0
.end method

.method public setMaxCacheSize(J)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 2
    .param p1, "maxCacheSize"    # J

    .line 135
    const-wide/32 v0, 0x1000000

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxCacheSize:J

    .line 136
    return-object p0
.end method

.method public setMaxRequestInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "maxRequestInterval"    # I

    .line 161
    if-lez p1, :cond_0

    .line 162
    const/16 v0, 0xa8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxRequestInterval:I

    .line 164
    :cond_0
    return-object p0
.end method

.method public setMinRequestInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1
    .param p1, "minRequestInterval"    # I

    .line 147
    if-lez p1, :cond_0

    .line 148
    const/16 v0, 0xa8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMinRequestInterval:I

    .line 150
    :cond_0
    return-object p0
.end method

.method public setNetworkTypePolicy(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "networkTypePolicy"    # I

    .line 252
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mNetworkTypePolicy:I

    .line 253
    return-object p0
.end method

.method public setRemoteConfigUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "remoteConfigUrl"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mRemoteConfigUrl:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "SSLSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 355
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 356
    return-object p0
.end method

.method public setServerUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mServerUrl:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public varargs setSourceChannels([Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0
    .param p1, "channels"    # [Ljava/lang/String;

    .line 274
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->setSourceChannelKeys([Ljava/lang/String;)V

    .line 275
    return-object p0
.end method
