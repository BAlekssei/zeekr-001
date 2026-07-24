.class public Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;
.super Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
.source "SensorsDataRemoteManager.java"


# static fields
.field private static final SHARED_PREF_REQUEST_TIME:Ljava/lang/String; = "sensorsdata.request.time"

.field private static final SHARED_PREF_REQUEST_TIME_RANDOM:Ljava/lang/String; = "sensorsdata.request.time.random"

.field private static final TAG:Ljava/lang/String; = "SA.SensorsDataRemoteManager"


# instance fields
.field private volatile mIsInit:Z

.field private mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

.field private final mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V
    .locals 2
    .param p1, "sensorsDataAPI"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 49
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mIsInit:Z

    .line 50
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    .line 51
    const-string v0, "SA.SensorsDataRemoteManager"

    const-string v1, "Construct a SensorsDataRemoteManager"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private cleanRemoteRequestRandomTime()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v1, "sensorsdata.request.time"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->remove(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v1, "sensorsdata.request.time.random"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->remove(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private isRequestValid()Z
    .locals 8

    .line 60
    const/4 v0, 0x1

    .line 62
    .local v0, "isRequestValid":Z
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v2, "sensorsdata.request.time"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 63
    .local v1, "lastRequestTime":J
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v6, "sensorsdata.request.time.random"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInteger(Ljava/lang/String;I)I

    move-result v5

    .line 64
    .local v5, "randomTime":I
    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v3, v1

    long-to-float v3, v3

    .line 67
    .local v3, "requestInterval":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v4, v3, v4

    mul-int/lit16 v6, v5, 0xe10

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 73
    .end local v1    # "lastRequestTime":J
    .end local v3    # "requestInterval":F
    .end local v5    # "randomTime":I
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 74
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private writeRemoteRequestRandomTime()V
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMinRequestInterval:I

    .line 86
    .local v0, "randomTime":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 88
    .local v1, "currentTime":J
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxRequestInterval:I

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v4, v4, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMinRequestInterval:I

    if-le v3, v4, :cond_1

    .line 89
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v4, v4, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxRequestInterval:I

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v5, v5, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMinRequestInterval:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v4, "sensorsdata.request.time"

    invoke-virtual {v3, v4, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->setLong(Ljava/lang/String;J)V

    .line 92
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v4, "sensorsdata.request.time.random"

    invoke-virtual {v3, v4, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->setInteger(Ljava/lang/String;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public applySDKConfigFromCache()V
    .locals 5

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mIsInit:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getRemoteConfigFromLocal()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "remoteConfig":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mIsInit:Z

    goto :goto_0

    .line 256
    .end local v0    # "remoteConfig":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getRemoteConfig()Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0    # "remoteConfig":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->toSDKRemoteConfig(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;

    move-result-object v1

    .line 259
    .local v1, "sdkRemoteConfig":Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    const-string v2, "SA.SensorsDataRemoteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache remote config is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    if-eqz v2, :cond_3

    .line 264
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->isDisableDebugMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setDebugMode(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    .line 266
    const-string v2, "SA.SensorsDataRemoteManager"

    const-string v3, "Set DebugOff Mode"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_2
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->isDisableSDK()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    .line 271
    :try_start_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V

    .line 272
    const-string v2, "SA.SensorsDataRemoteManager"

    const-string v3, "DisableSDK is true"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    goto :goto_1

    .line 273
    :catch_0
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 278
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSDKRemoteConfig:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    .end local v0    # "remoteConfig":Ljava/lang/String;
    .end local v1    # "sdkRemoteConfig":Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;
    goto :goto_2

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public pullSDKConfigFromServer()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    if-nez v0, :cond_0

    .line 106
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mDisableRandomTimeRequestRemoteConfig:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMinRequestInterval:I

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v2, v2, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxRequestInterval:I

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->isPublicSecretKeyNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;->RandomTimeTypeWrite:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V

    .line 120
    const-string v0, "SA.SensorsDataRemoteManager"

    const-string v1, "remote config: Request remote config because encrypt key is null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->isRequestValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;->RandomTimeTypeWrite:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V

    .line 127
    const-string v0, "SA.SensorsDataRemoteManager"

    const-string v1, "remote config: Request remote config because satisfy the random request condition"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_3
    return-void

    .line 112
    :cond_4
    :goto_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;->RandomTimeTypeClean:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V

    .line 113
    const-string v0, "SA.SensorsDataRemoteManager"

    const-string v1, "remote config: Request remote config because disableRandomTimeRequestRemoteConfig or minHourInterval greater than maxHourInterval"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V
    .locals 8
    .param p1, "randomTimeType"    # Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;
    .param p2, "enableConfigV"    # Z

    .line 133
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const-string v0, "SA.SensorsDataRemoteManager"

    const-string v1, "Close network request"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mDisableDefaultRemoteConfig:Z

    if-eqz v0, :cond_1

    .line 139
    const-string v0, "SA.SensorsDataRemoteManager"

    const-string v1, "disableDefaultRemoteConfig is true"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 143
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$2;->$SwitchMap$com$sensorsdata$analytics$android$sdk$remote$BaseSensorsDataSDKRemoteManager$RandomTimeType:[I

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->cleanRemoteRequestRandomTime()V

    .line 149
    goto :goto_0

    .line 145
    :pswitch_1
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->writeRemoteRequestRandomTime()V

    .line 146
    nop

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    .line 159
    :cond_2
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;

    const-wide/32 v3, 0x15f90

    const-wide/16 v5, 0x7530

    move-object v1, v0

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;JJZ)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    .line 203
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 204
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetPullSDKConfigTimer()V
    .locals 2

    .line 209
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    .line 216
    goto :goto_1

    .line 215
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 217
    :goto_1
    return-void

    .line 215
    :goto_2
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    .line 216
    throw v1
.end method

.method protected setSDKRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;)V
    .locals 4
    .param p1, "sdkRemoteConfig"    # Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;

    .line 228
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v0, "eventProperties":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "remoteConfigString":Ljava/lang/String;
    const-string v2, "$app_remote_config"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    const-string v3, "$AppRemoteConfigChanged"

    invoke-virtual {v2, v3, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 232
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V

    .line 233
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitRemoteConfig(Ljava/lang/String;)V

    .line 234
    const-string v2, "SA.SensorsDataRemoteManager"

    const-string v3, "Save remote data"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->getEffectMode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->applySDKConfigFromCache()V

    .line 238
    const-string v2, "SA.SensorsDataRemoteManager"

    const-string v3, "The remote configuration takes effect immediately"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "eventProperties":Lorg/json/JSONObject;
    .end local v1    # "remoteConfigString":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
