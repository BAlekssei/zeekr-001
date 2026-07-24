.class abstract Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;
.super Ljava/lang/Object;
.source "AbstractSAConfigOptions.java"


# instance fields
.field isAutoAddChannelCallbackEvent:Z

.field isAutoTrackWebView:Z

.field isDataCollectEnable:Z

.field isDisableSDK:Z

.field isSubProcessFlushData:Z

.field isWebViewSupportJellyBean:Z

.field mAutoTrackEventType:I

.field public mDisableDebugAssistant:Z

.field mDisableDeviceId:Z

.field public mDisableRandomTimeRequestRemoteConfig:Z

.field mEnableEncrypt:Z

.field mEnableSaveDeepLinkInfo:Z

.field mEnableSession:Z

.field mEnableTrackAppCrash:Z

.field public mEnableTrackPush:Z

.field mEncryptListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;",
            ">;"
        }
    .end annotation
.end field

.field mEncryptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;",
            ">;"
        }
    .end annotation
.end field

.field mFlushBulkSize:I

.field mFlushInterval:I

.field mHeatMapEnabled:Z

.field mIgnorePageLeave:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected mIsTrackFragmentPageLeave:Z

.field protected mIsTrackPageLeave:Z

.field mLogEnabled:Z

.field mLoginIDKey:Ljava/lang/String;

.field mMaxCacheSize:J

.field public mMaxRequestInterval:I

.field public mMinRequestInterval:I

.field mNetworkTypePolicy:I

.field mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

.field public mRemoteConfigUrl:Ljava/lang/String;

.field public mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field mServerUrl:Ljava/lang/String;

.field mStorePlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;",
            ">;"
        }
    .end annotation
.end field

.field mTrackScreenOrientationEnabled:Z

.field mVisualizedEnabled:Z

.field mVisualizedPropertiesEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x18

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMinRequestInterval:I

    .line 46
    const/16 v0, 0x30

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxRequestInterval:I

    .line 96
    const-wide/32 v0, 0x2000000

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxCacheSize:J

    .line 126
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mNetworkTypePolicy:I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSaveDeepLinkInfo:Z

    .line 151
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isSubProcessFlushData:Z

    .line 156
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableEncrypt:Z

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDataCollectEnable:Z

    .line 171
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableSDK:Z

    .line 176
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSession:Z

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEncryptors:Ljava/util/List;

    .line 191
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackPageLeave:Z

    .line 196
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackFragmentPageLeave:Z

    .line 211
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableDeviceId:Z

    .line 318
    const-string v0, "$identity_login_id"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mLoginIDKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEncryptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEncryptors:Ljava/util/List;

    return-object v0
.end method

.method public getStorePlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mStorePlugins:Ljava/util/List;

    return-object v0
.end method

.method public isDataCollectEnable()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDataCollectEnable:Z

    return v0
.end method

.method public isDisableDeviceId()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableDeviceId:Z

    return v0
.end method

.method public isDisableSDK()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableSDK:Z

    return v0
.end method

.method public isEnableSession()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSession:Z

    return v0
.end method

.method public isEnableTrackPush()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableTrackPush:Z

    return v0
.end method

.method public isMultiProcessFlush()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isSubProcessFlushData:Z

    return v0
.end method

.method public isSaveDeepLinkInfo()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSaveDeepLinkInfo:Z

    return v0
.end method

.method public isTrackFragmentPageLeave()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackPageLeave:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackFragmentPageLeave:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrackPageLeave()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackPageLeave:Z

    return v0
.end method

.method public isVisualizedPropertiesEnabled()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mVisualizedPropertiesEnabled:Z

    return v0
.end method
