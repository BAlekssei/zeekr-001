.class abstract Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;
.super Ljava/lang/Object;
.source "AbstractSensorsDataAPI.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;


# static fields
.field static SHOW_DEBUG_INFO_VIEW:Z = false

.field protected static final TAG:Ljava/lang/String; = "SA.SensorsDataAPI"

.field static final VERSION:Ljava/lang/String; = "6.2.8"

.field protected static isChangeEnableNetworkFlag:Z

.field protected static mGPSLocation:Lcom/sensorsdata/analytics/android/sdk/SensorsDataGPSLocation;

.field static mIsMainProcess:Z

.field protected static mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

.field protected static final sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isTrackEventWithPluginVersion:Z

.field protected mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;

.field protected mAutoTrack:Z

.field protected mAutoTrackIgnoredActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mClearReferrerWhenAppEnd:Z

.field protected final mContext:Landroid/content/Context;

.field protected mCookie:Ljava/lang/String;

.field protected mCurrentScreenTitle:Ljava/lang/String;

.field protected mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

.field protected mDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

.field protected mDisableDefaultRemoteConfig:Z

.field protected mDisableTrackDeviceId:Z

.field protected mDynamicSuperPropertiesCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;

.field mEnableDeepLinkInstallSource:Z

.field protected mEnableNetworkRequest:Z

.field protected final mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

.field protected final mFirstStart:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

.field protected final mFirstTrackInstallation:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

.field protected final mFirstTrackInstallationWithCallback:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

.field protected mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

.field protected mHeatMapActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIgnoredViewTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsFirstDayDateFormat:Ljava/text/SimpleDateFormat;

.field protected mLastScreenTrackProperties:Lorg/json/JSONObject;

.field protected mLastScreenUrl:Ljava/lang/String;

.field protected final mLoginIdLock:Ljava/lang/Object;

.field protected mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

.field protected mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

.field protected mOriginServerUrl:Ljava/lang/String;

.field protected mReferrerScreenTitle:Ljava/lang/String;

.field mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

.field protected mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

.field private mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mSDKConfigInit:Z

.field mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

.field protected mServerUrl:Ljava/lang/String;

.field protected mSessionTime:I

.field protected mStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

.field protected final mSuperProperties:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

.field protected mTrackEventCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;

.field protected mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

.field protected mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

.field protected final mTrackTimer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

.field protected mVisualizedAutoTrackActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mIsMainProcess:Z

    .line 100
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->SHOW_DEBUG_INFO_VIEW:Z

    .line 137
    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isChangeEnableNetworkFlag:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mLoginIdLock:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mIgnoredViewTypeList:Ljava/util/List;

    .line 122
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mEnableNetworkRequest:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mClearReferrerWhenAppEnd:Z

    .line 135
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDisableDefaultRemoteConfig:Z

    .line 136
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDisableTrackDeviceId:Z

    .line 139
    const/16 v1, 0x7530

    iput v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSessionTime:I

    .line 157
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mEnableDeepLinkInstallSource:Z

    .line 162
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isTrackEventWithPluginVersion:Z

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    .line 230
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    .line 231
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSuperProperties:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    .line 232
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstStart:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    .line 233
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    .line 234
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstTrackInstallation:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    .line 235
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstTrackInstallationWithCallback:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    .line 236
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    .line 237
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configOptions"    # Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .param p3, "debugMode"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mLoginIdLock:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mIgnoredViewTypeList:Ljava/util/List;

    .line 122
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mEnableNetworkRequest:Z

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mClearReferrerWhenAppEnd:Z

    .line 135
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDisableDefaultRemoteConfig:Z

    .line 136
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDisableTrackDeviceId:Z

    .line 139
    const/16 v2, 0x7530

    iput v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSessionTime:I

    .line 157
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mEnableDeepLinkInstallSource:Z

    .line 162
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isTrackEventWithPluginVersion:Z

    .line 165
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->setDebugMode(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mHeatMapActivities:Ljava/util/List;

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mVisualizedAutoTrackActivities:Ljava/util/List;

    .line 171
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->initLoader(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    .line 172
    const-string v3, "super_properties"

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSuperProperties:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    .line 173
    const-string v3, "first_start"

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstStart:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    .line 174
    const-string v3, "first_track_installation"

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstTrackInstallation:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    .line 175
    const-string v3, "first_track_installation_with_callback"

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstTrackInstallationWithCallback:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    .line 176
    const-string v3, "first_day"

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    .line 177
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    .line 178
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;

    invoke-direct {v3}, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;-><init>()V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    .line 180
    :try_start_0
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->clone()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v3

    sput-object v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 181
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    .line 182
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getStorePlugins()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->registerPlugins(Ljava/util/List;Landroid/content/Context;)V

    .line 183
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mStoreManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->upgrade()V

    .line 184
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    .line 185
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    invoke-direct {v3}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;-><init>()V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    .line 186
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    const-string v5, "SA.TaskQueueThread"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 187
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->init()V

    .line 188
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mServerUrl:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->initSAConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    .line 190
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    move-object v4, p0

    check-cast v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->getInstance(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    move-result-object v3

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    .line 191
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;

    move-object v4, p0

    check-cast v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-direct {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    .line 193
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->applySDKConfigFromCache()V

    .line 195
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    move-object v5, p0

    check-cast v5, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->requestVisualConfig(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-eq v3, v4, :cond_1

    sget-boolean v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mIsMainProcess:Z

    if-eqz v3, :cond_1

    .line 200
    sget-boolean v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->SHOW_DEBUG_INFO_VIEW:Z

    if-eqz v3, :cond_1

    .line 201
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isSDKDisabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->showDebugModeWarning()V

    .line 207
    :cond_1
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-direct {v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;-><init>(Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    .line 208
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->registerLifecycleCallbacks()V

    .line 209
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->registerObserver()V

    .line 210
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK()Z

    move-result v3

    if-nez v3, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->delayInitTask()V

    .line 213
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    const-string v3, "SA.SensorsDataAPI"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "Initialized the instance of Sensors Analytics SDK with server url \'%s\', flush interval %d ms, debugMode: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mServerUrl:Ljava/lang/String;

    aput-object v7, v6, v1

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mFlushInterval:I

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object p3, v6, v0

    .line 214
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->initUniAppStatus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "SA.SensorsDataAPI"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->registerDefaultPropertiesPlugin()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;
    .param p1, "x1"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;
    .param p4, "x4"    # Lorg/json/JSONObject;
    .param p5, "x5"    # Lorg/json/JSONObject;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
        }
    .end annotation

    .line 93
    invoke-direct/range {p0 .. p9}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackEventInternal(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;)V

    return-void
.end method

.method private getCarrier(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "property"    # Lorg/json/JSONObject;

    .line 1695
    :try_start_0
    const-string v0, "$carrier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable:Z

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1697
    .local v0, "carrier":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1698
    const-string v1, "$carrier"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    .end local v0    # "carrier":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1704
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    .line 390
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    return-object v0
.end method

.method private getPluginVersion()Lorg/json/JSONArray;
    .locals 3

    .line 1596
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->ANDROID_PLUGIN_VERSION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1597
    const-string v0, "SA.SensorsDataAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android plugin version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->ANDROID_PLUGIN_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1599
    .local v0, "libPluginVersion":Lorg/json/JSONArray;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->ANDROID_PLUGIN_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    return-object v0

    .line 1604
    .end local v0    # "libPluginVersion":Lorg/json/JSONArray;
    :cond_0
    goto :goto_0

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1605
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isEnterDb(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventProperties"    # Lorg/json/JSONObject;

    .line 1215
    const/4 v0, 0x1

    .line 1216
    .local v0, "enterDb":Z
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackEventCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;

    if-eqz v1, :cond_2

    .line 1217
    const-string v1, "SA.SensorsDataAPI"

    const-string v2, "SDK have set trackEvent callBack"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackEventCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;

    invoke-interface {v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;->onTrackEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1222
    goto :goto_0

    .line 1220
    :catch_0
    move-exception v1

    .line 1221
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1223
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_2

    .line 1225
    :try_start_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1226
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1228
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1229
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Date;

    if-eqz v4, :cond_0

    .line 1230
    move-object v4, v3

    check-cast v4, Ljava/util/Date;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatDate(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1232
    :cond_0
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1234
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_2
    goto :goto_1

    .line 1237
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    goto :goto_3

    .line 1235
    :catch_1
    move-exception v1

    .line 1236
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1240
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return v0
.end method

.method private static isSDKDisableByLocal()Z
    .locals 2

    .line 275
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    if-nez v0, :cond_0

    .line 276
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "SAConfigOptions is null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x1

    return v0

    .line 279
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK:Z

    return v0
.end method

.method public static isSDKDisabled()Z
    .locals 1

    .line 288
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isSDKDisableByLocal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isSDKDisabledByRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSDKDisabledByRemote()Z
    .locals 3

    .line 262
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->isSDKDisabledByRemote()Z

    move-result v0

    .line 263
    .local v0, "isSDKDisabled":Z
    if-eqz v0, :cond_0

    .line 264
    const-string v1, "SA.SensorsDataAPI"

    const-string v2, "remote config: SDK is disabled"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    return v0
.end method

.method private mergerDynamicAndSuperProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "eventProperty"    # Lorg/json/JSONObject;
    .param p2, "dynamicProperty"    # Lorg/json/JSONObject;

    .line 1171
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getSuperProperties()Lorg/json/JSONObject;

    move-result-object v0

    .line 1172
    .local v0, "superProperties":Lorg/json/JSONObject;
    if-nez p2, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getDynamicProperty()Lorg/json/JSONObject;

    move-result-object p2

    .line 1175
    :cond_0
    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeSuperJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1176
    .local v1, "removeDuplicateSuperProperties":Lorg/json/JSONObject;
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1177
    return-void
.end method

.method private registerDefaultPropertiesPlugin()V
    .locals 5

    .line 225
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDisableTrackDeviceId:Z

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableDeviceId()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->registerPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    .line 226
    return-void
.end method

.method private registerLifecycleCallbacks()V
    .locals 7

    .line 1613
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 1614
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 1615
    .local v0, "app":Landroid/app/Application;
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks;-><init>()V

    .line 1616
    .local v1, "lifecycleCallbacks":Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1617
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;

    move-object v3, p0

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstStart:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;

    .line 1618
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks;->addActivityLifecycleCallbacks(Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V

    .line 1619
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->addExceptionListener(Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;)V

    .line 1620
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentViewScreenCallbacks;-><init>()V

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->addFragmentCallbacks(Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;)V

    .line 1622
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isTrackPageLeave()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1623
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mIgnorePageLeave:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;-><init>(Ljava/util/List;)V

    .line 1624
    .local v2, "pageLeaveCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;
    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks;->addActivityLifecycleCallbacks(Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V

    .line 1625
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->addExceptionListener(Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;)V

    .line 1626
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isTrackFragmentPageLeave()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1627
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-object v4, v4, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mIgnorePageLeave:Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;-><init>(Ljava/util/List;)V

    .line 1628
    .local v3, "fragmentPageLeaveCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->addFragmentCallbacks(Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;)V

    .line 1629
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->addExceptionListener(Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;)V

    .line 1632
    .end local v2    # "pageLeaveCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;
    .end local v3    # "fragmentPageLeaveCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;
    :cond_0
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableTrackPush()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1633
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushLifecycleCallbacks;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushLifecycleCallbacks;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks;->addActivityLifecycleCallbacks(Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V

    .line 1636
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    .end local v0    # "app":Landroid/app/Application;
    .end local v1    # "lifecycleCallbacks":Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks;
    :cond_2
    goto :goto_0

    .line 1638
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1641
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private registerObserver()V
    .locals 4

    .line 1648
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;-><init>(Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;)V

    .line 1649
    .local v0, "contentObserver":Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1650
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getDataCollectUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1651
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSessionTimeUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1652
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1653
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getDisableSDKUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1654
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEnableSDKUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1655
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getUserIdentities()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1656
    return-void
.end method

.method private showDebugModeWarning()V
    .locals 2

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-ne v0, v1, :cond_0

    .line 1182
    return-void

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mServerUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    return-void

    .line 1187
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1188
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$9;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$9;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    .end local v0    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private trackEventInternal(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;)V
    .locals 30
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "properties"    # Lorg/json/JSONObject;
    .param p4, "sendProperties"    # Lorg/json/JSONObject;
    .param p5, "identities"    # Lorg/json/JSONObject;
    .param p6, "distinctId"    # Ljava/lang/String;
    .param p7, "loginId"    # Ljava/lang/String;
    .param p8, "originalDistinctId"    # Ljava/lang/String;
    .param p9, "eventTimer"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 1245
    const/4 v6, 0x0

    .line 1246
    .local v6, "libDetail":Ljava/lang/String;
    const-string v7, "6.2.8"

    .line 1247
    .local v7, "lib_version":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1248
    .local v8, "appEnd_app_version":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1249
    .local v9, "eventTime":J
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v11, v0

    .line 1250
    .local v11, "libProperties":Lorg/json/JSONObject;
    if-eqz v4, :cond_9

    .line 1252
    :try_start_0
    const-string v0, "$lib_detail"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    const-string v0, "$lib_detail"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1254
    const-string v0, "$lib_detail"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :cond_0
    goto :goto_0

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    const-string v0, "$AppEnd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1262
    const-string v0, "event_time"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 1264
    .local v12, "appEndTime":J
    const-wide/16 v14, 0x7d0

    cmp-long v0, v12, v14

    if-lez v0, :cond_1

    .line 1265
    move-wide v9, v12

    .line 1267
    :cond_1
    const-string v0, "$lib_version"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "appEnd_lib_version":Ljava/lang/String;
    const-string v14, "$app_version"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 1269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1270
    move-object v7, v0

    goto :goto_1

    .line 1272
    :cond_2
    const-string v14, "$lib_version"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1275
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1276
    const-string v14, "$app_version"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1279
    :cond_3
    const-string v14, "event_time"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1280
    .end local v0    # "appEnd_lib_version":Ljava/lang/String;
    .end local v12    # "appEndTime":J
    goto :goto_2

    :cond_4
    const-string v0, "$AppStart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1281
    const-string v0, "event_time"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 1282
    .local v12, "appStartTime":J
    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_5

    .line 1283
    move-wide v9, v12

    .line 1285
    :cond_5
    const-string v0, "event_time"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1289
    .end local v12    # "appStartTime":J
    :cond_6
    :goto_2
    goto :goto_3

    .line 1287
    :catch_1
    move-exception v0

    .line 1288
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1290
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static/range {p3 .. p4}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1291
    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1292
    const-string v0, "autoTrack"

    const-string v12, "$lib_method"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1293
    const-string v0, "$lib_method"

    const-string v12, "autoTrack"

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 1295
    :cond_7
    const-string v0, "$lib_method"

    const-string v12, "code"

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1296
    const-string v0, "$lib_method"

    const-string v12, "code"

    invoke-virtual {v5, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 1299
    :cond_8
    const-string v0, "$lib_method"

    const-string v12, "code"

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 1302
    :cond_9
    const-string v0, "$lib_method"

    const-string v12, "code"

    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1303
    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1304
    const-string v0, "$lib_method"

    const-string v12, "code"

    invoke-virtual {v5, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1308
    :cond_a
    :goto_4
    if-eqz p9, :cond_c

    .line 1310
    :try_start_2
    invoke-virtual/range {p9 .. p9}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->duration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 1311
    .local v13, "duration":D
    const-wide/16 v15, 0x0

    cmpl-double v0, v13, v15

    if-lez v0, :cond_b

    .line 1312
    const-string v0, "event_duration"

    invoke-virtual {v5, v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1316
    .end local v13    # "duration":D
    :cond_b
    goto :goto_5

    .line 1314
    :catch_2
    move-exception v0

    .line 1315
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1319
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_5
    const-string v0, "$lib"

    const-string v13, "Android"

    invoke-virtual {v11, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1320
    const-string v0, "$lib_version"

    invoke-virtual {v11, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1321
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1322
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    const-string v13, "$app_version"

    invoke-virtual {v0, v11, v13}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->addKeyIfExist(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_6

    .line 1324
    :cond_d
    const-string v0, "$app_version"

    invoke-virtual {v11, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1328
    :goto_6
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSuperProperties:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/json/JSONObject;

    .line 1329
    .local v13, "superProperties":Lorg/json/JSONObject;
    if-eqz v13, :cond_e

    .line 1330
    const-string v0, "$app_version"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1331
    const-string v0, "$app_version"

    const-string v14, "$app_version"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1335
    :cond_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v14, v0

    .line 1338
    .local v14, "dataObj":Lorg/json/JSONObject;
    :try_start_3
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1339
    .local v0, "random":Ljava/security/SecureRandom;
    const-string v15, "_track_id"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v17, v6

    :try_start_4
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    .end local v6    # "libDetail":Ljava/lang/String;
    .local v17, "libDetail":Ljava/lang/String;
    invoke-virtual {v14, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1342
    .end local v0    # "random":Ljava/security/SecureRandom;
    goto :goto_7

    .line 1340
    :catch_3
    move-exception v0

    goto :goto_7

    .end local v17    # "libDetail":Ljava/lang/String;
    .restart local v6    # "libDetail":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v17, v6

    .line 1344
    .end local v6    # "libDetail":Ljava/lang/String;
    .restart local v17    # "libDetail":Ljava/lang/String;
    :goto_7
    const-string v0, "time"

    invoke-virtual {v14, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1345
    const-string v0, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->getEventType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1348
    .local v6, "anonymousId":Ljava/lang/String;
    :try_start_5
    const-string v0, "$project"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1349
    const-string v0, "project"

    const-string v15, "$project"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1350
    const-string v0, "$project"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1353
    :cond_f
    const-string v0, "$token"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1354
    const-string v0, "token"

    const-string v15, "$token"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1355
    const-string v0, "$token"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1358
    :cond_10
    const-string v0, "$time"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    if-eqz v0, :cond_12

    .line 1360
    :try_start_6
    const-string v0, "$time"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1361
    .local v0, "timeDate":Ljava/lang/Object;
    instance-of v15, v0, Ljava/util/Date;

    if-eqz v15, :cond_11

    .line 1362
    move-object v15, v0

    check-cast v15, Ljava/util/Date;

    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->isDateValid(Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1363
    move-object v15, v0

    check-cast v15, Ljava/util/Date;

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    move-wide v9, v15

    .line 1364
    const-string v15, "time"

    invoke-virtual {v14, v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1369
    .end local v0    # "timeDate":Ljava/lang/Object;
    :cond_11
    goto :goto_8

    .line 1367
    :catch_5
    move-exception v0

    .line 1368
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1370
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8
    const-string v0, "$time"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1374
    :cond_12
    const-string v0, "$PlanPopupDisplay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1375
    const-string v0, "$sf_internal_anonymous_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1376
    const-string v0, "$sf_internal_anonymous_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1377
    const-string v0, "$sf_internal_anonymous_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1380
    :cond_13
    const-string v0, "$sf_internal_login_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1381
    const-string v0, "$sf_internal_login_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-object v15, v0

    .line 1382
    .end local p7    # "loginId":Ljava/lang/String;
    .local v15, "loginId":Ljava/lang/String;
    :try_start_8
    const-string v0, "$sf_internal_login_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_9

    .line 1384
    .end local v15    # "loginId":Ljava/lang/String;
    .restart local p7    # "loginId":Ljava/lang/String;
    :cond_14
    move-object/from16 v15, p7

    .end local p7    # "loginId":Ljava/lang/String;
    .restart local v15    # "loginId":Ljava/lang/String;
    :goto_9
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-nez v0, :cond_15

    .line 1385
    move-object v0, v15

    .end local p6    # "distinctId":Ljava/lang/String;
    .local v0, "distinctId":Ljava/lang/String;
    :goto_a
    goto :goto_b

    .line 1387
    .end local v0    # "distinctId":Ljava/lang/String;
    .restart local p6    # "distinctId":Ljava/lang/String;
    :cond_15
    move-object v0, v6

    goto :goto_a

    .line 1390
    :catch_6
    move-exception v0

    goto :goto_c

    .line 1392
    .end local v15    # "loginId":Ljava/lang/String;
    .restart local p7    # "loginId":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p6

    move-object/from16 v15, p7

    .line 1394
    .end local p6    # "distinctId":Ljava/lang/String;
    .end local p7    # "loginId":Ljava/lang/String;
    .restart local v0    # "distinctId":Ljava/lang/String;
    .restart local v15    # "loginId":Ljava/lang/String;
    :goto_b
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-wide v7, v9

    move-object v9, v6

    move-object v6, v0

    goto :goto_d

    .line 1390
    .end local v0    # "distinctId":Ljava/lang/String;
    .end local v15    # "loginId":Ljava/lang/String;
    .restart local p6    # "distinctId":Ljava/lang/String;
    .restart local p7    # "loginId":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v15, p7

    .line 1391
    .end local p7    # "loginId":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "loginId":Ljava/lang/String;
    :goto_c
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1394
    .end local v0    # "e":Ljava/lang/Exception;
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-wide v7, v9

    move-object v9, v6

    move-object/from16 v6, p6

    .end local v8    # "appEnd_app_version":Ljava/lang/String;
    .end local p6    # "distinctId":Ljava/lang/String;
    .local v6, "distinctId":Ljava/lang/String;
    .local v7, "eventTime":J
    .local v9, "anonymousId":Ljava/lang/String;
    .local v18, "lib_version":Ljava/lang/String;
    .local v19, "appEnd_app_version":Ljava/lang/String;
    :goto_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1395
    const-string v0, "distinct_id"

    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_e

    .line 1397
    :cond_17
    const-string v0, "distinct_id"

    invoke-virtual {v14, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1400
    :goto_e
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1401
    const-string v0, "login_id"

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1403
    :cond_18
    const-string v0, "anonymous_id"

    invoke-virtual {v14, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1404
    const-string v0, "identities"

    move-object/from16 v10, p5

    invoke-virtual {v14, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1406
    const-string v0, "lib"

    invoke-virtual {v14, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1408
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-eq v2, v0, :cond_1b

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_BIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-eq v2, v0, :cond_1b

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v2, v0, :cond_19

    .line 1409
    move-object/from16 v20, v6

    move-object/from16 v6, p8

    goto :goto_10

    .line 1412
    :cond_19
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v2, v0, :cond_1a

    .line 1413
    const-string v0, "event"

    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1414
    const-string v0, "original_id"

    move-object/from16 v20, v6

    move-object/from16 v6, p8

    invoke-virtual {v14, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    .line 1417
    :cond_1a
    move-object/from16 v20, v6

    .end local v6    # "distinctId":Ljava/lang/String;
    .local v20, "distinctId":Ljava/lang/String;
    :goto_f
    goto :goto_11

    .line 1409
    .end local v20    # "distinctId":Ljava/lang/String;
    .restart local v6    # "distinctId":Ljava/lang/String;
    :cond_1b
    move-object/from16 v20, v6

    move-object/from16 v6, p8

    .end local v6    # "distinctId":Ljava/lang/String;
    .restart local v20    # "distinctId":Ljava/lang/String;
    :goto_10
    const-string v0, "event"

    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1411
    const-string v0, "$is_first_day"

    invoke-virtual {v1, v7, v8}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isFirstDay(J)Z

    move-result v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1417
    :goto_11
    iget-boolean v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mAutoTrack:Z

    const/16 v16, 0x2

    const/16 v22, 0x0

    if-eqz v0, :cond_1c

    if-eqz v4, :cond_1c

    .line 1418
    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->isAutoTrackType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1419
    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->autoTrackEventTypeFromEventName(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    move-result-object v0

    .line 1420
    .local v0, "trackEventType":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;
    if-eqz v0, :cond_1c

    .line 1421
    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v23

    if-nez v23, :cond_1c

    .line 1422
    const-string v6, "$screen_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1423
    const-string v6, "$screen_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1424
    .local v6, "screenName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1c

    .line 1425
    move-object/from16 v24, v0

    const-string v0, "\\|"

    .end local v0    # "trackEventType":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;
    .local v24, "trackEventType":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "screenNameArray":[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_1c

    .line 1427
    const-string v4, "%s##%s##%s##%s"

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    const/4 v6, 0x4

    new-array v9, v6, [Ljava/lang/Object;

    .end local v6    # "screenName":Ljava/lang/String;
    .end local v9    # "anonymousId":Ljava/lang/String;
    .local v25, "screenName":Ljava/lang/String;
    .local v26, "anonymousId":Ljava/lang/String;
    aget-object v6, v0, v22

    aput-object v6, v9, v22

    const-string v6, ""

    const/16 v23, 0x1

    aput-object v6, v9, v23

    const-string v6, ""

    aput-object v6, v9, v16

    const-string v6, ""

    const/16 v21, 0x3

    aput-object v6, v9, v21

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .end local v0    # "screenNameArray":[Ljava/lang/String;
    .end local v17    # "libDetail":Ljava/lang/String;
    .end local v24    # "trackEventType":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;
    .end local v25    # "screenName":Ljava/lang/String;
    .local v6, "libDetail":Ljava/lang/String;
    goto :goto_12

    .line 1436
    .end local v6    # "libDetail":Ljava/lang/String;
    .end local v26    # "anonymousId":Ljava/lang/String;
    .restart local v9    # "anonymousId":Ljava/lang/String;
    .restart local v17    # "libDetail":Ljava/lang/String;
    :cond_1c
    move-object/from16 v26, v9

    .end local v9    # "anonymousId":Ljava/lang/String;
    .restart local v26    # "anonymousId":Ljava/lang/String;
    move-object/from16 v6, v17

    .end local v17    # "libDetail":Ljava/lang/String;
    .restart local v6    # "libDetail":Ljava/lang/String;
    :goto_12
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1437
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1438
    .local v0, "trace":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    const/4 v9, 0x1

    if-le v4, v9, :cond_1d

    .line 1439
    aget-object v4, v0, v22

    .line 1440
    .local v4, "traceElement":Ljava/lang/StackTraceElement;
    const-string v9, "%s##%s##%s##%s"

    move-object/from16 v27, v0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1441
    .end local v0    # "trace":[Ljava/lang/StackTraceElement;
    .local v27, "trace":[Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v22

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v17

    const/16 v22, 0x1

    aput-object v17, v0, v22

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v0, v16

    .line 1442
    move-object/from16 v28, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    .end local v6    # "libDetail":Ljava/lang/String;
    .local v28, "libDetail":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x3

    aput-object v6, v0, v16

    .line 1440
    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .end local v4    # "traceElement":Ljava/lang/StackTraceElement;
    .end local v27    # "trace":[Ljava/lang/StackTraceElement;
    .end local v28    # "libDetail":Ljava/lang/String;
    .restart local v6    # "libDetail":Ljava/lang/String;
    goto :goto_13

    .line 1446
    :cond_1d
    move-object/from16 v28, v6

    .end local v6    # "libDetail":Ljava/lang/String;
    .restart local v28    # "libDetail":Ljava/lang/String;
    move-object/from16 v6, v28

    .end local v28    # "libDetail":Ljava/lang/String;
    .restart local v6    # "libDetail":Ljava/lang/String;
    :goto_13
    const-string v0, "$lib_detail"

    invoke-virtual {v11, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1448
    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1449
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1451
    const-string v0, "$anonymization_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1452
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    const-string v4, "$anonymization_id"

    invoke-virtual {v0, v5, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->addKeyIfExist(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1454
    :cond_1e
    const-string v0, "$device_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_14

    .line 1456
    :cond_1f
    const-string v0, "$device_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1457
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    const-string v4, "$device_id"

    invoke-virtual {v0, v5, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->addKeyIfExist(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1459
    :cond_20
    const-string v0, "$anonymization_id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1463
    :goto_14
    :try_start_9
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->handleEventOfSession(Ljava/lang/String;Lorg/json/JSONObject;J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1466
    goto :goto_15

    .line 1464
    :catch_8
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1467
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    invoke-direct {v1, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isEnterDb(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v4

    .line 1468
    .local v4, "isEnterDb":Z
    if-nez v4, :cond_21

    .line 1469
    const-string v0, "SA.SensorsDataAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v29, v4

    const-string v4, " event can not enter database"

    .end local v4    # "isEnterDb":Z
    .local v29, "isEnterDb":Z
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    return-void

    .line 1472
    .end local v29    # "isEnterDb":Z
    .restart local v4    # "isEnterDb":Z
    :cond_21
    move/from16 v29, v4

    .end local v4    # "isEnterDb":Z
    .restart local v29    # "isEnterDb":Z
    iget-boolean v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isTrackEventWithPluginVersion:Z

    if-nez v0, :cond_23

    const-string v0, "$lib_plugin_version"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1473
    invoke-direct/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getPluginVersion()Lorg/json/JSONArray;

    move-result-object v4

    .line 1474
    .local v4, "libPluginVersion":Lorg/json/JSONArray;
    if-nez v4, :cond_22

    .line 1475
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isTrackEventWithPluginVersion:Z

    goto :goto_16

    .line 1478
    :cond_22
    const/4 v9, 0x1

    :try_start_a
    const-string v0, "$lib_plugin_version"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1479
    iput-boolean v9, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isTrackEventWithPluginVersion:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 1482
    goto :goto_16

    .line 1480
    :catch_9
    move-exception v0

    .line 1481
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1486
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "libPluginVersion":Lorg/json/JSONArray;
    .end local v29    # "isEnterDb":Z
    :cond_23
    :goto_16
    invoke-static/range {p4 .. p4}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyTypes(Lorg/json/JSONObject;)V

    .line 1487
    const-string v0, "properties"

    invoke-virtual {v14, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1490
    :try_start_b
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1491
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    .line 1492
    .local v4, "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    invoke-interface {v4, v14}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->trackEvent(Lorg/json/JSONObject;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 1493
    .end local v4    # "eventListener":Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;
    goto :goto_17

    .line 1497
    :cond_24
    goto :goto_18

    .line 1495
    :catch_a
    move-exception v0

    .line 1496
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1500
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1501
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callTrack(Lorg/json/JSONObject;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 1505
    :cond_25
    goto :goto_19

    .line 1503
    :catch_b
    move-exception v0

    .line 1504
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1507
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v14}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->enqueueEventMessage(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1508
    const-string v0, "$AppStart"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1509
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->setAppStartSuccess(Z)V

    .line 1511
    :cond_26
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1512
    const-string v0, "SA.SensorsDataAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "track event:\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    :cond_27
    return-void
.end method

.method private transformEventTaskQueue(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;)V
    .locals 16
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "properties"    # Lorg/json/JSONObject;
    .param p4, "sendProperties"    # Lorg/json/JSONObject;
    .param p5, "identities"    # Lorg/json/JSONObject;
    .param p6, "distinctId"    # Ljava/lang/String;
    .param p7, "loginId"    # Ljava/lang/String;
    .param p8, "originalDistinctId"    # Ljava/lang/String;
    .param p9, "eventTimer"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    .line 1522
    :try_start_0
    const-string v0, "$time"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$AppStart"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "$AppEnd"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    const-string v0, "$time"

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    :cond_0
    goto :goto_0

    .line 1525
    :catch_0
    move-exception v0

    .line 1526
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1528
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v15, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;

    move-object v1, v15

    move-object v2, v14

    move-object/from16 v3, p1

    move-object v4, v12

    move-object/from16 v5, p3

    move-object v6, v13

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->transformTaskQueue(Ljava/lang/Runnable;)V

    .line 1551
    return-void
.end method

.method private transformH5TaskQueue(Ljava/lang/String;)V
    .locals 5
    .param p1, "eventInfo"    # Ljava/lang/String;

    .line 1555
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1556
    .local v0, "eventObject":Lorg/json/JSONObject;
    const-string v1, "properties"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1557
    .local v1, "propertiesObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v2, "$time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1558
    const-string v2, "$time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1560
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1561
    const-string v2, "SA.SensorsDataAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "track H5, isDataCollectEnable = false, eventInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    :cond_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$11;

    invoke-direct {v3, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$11;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->transformTaskQueue(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    .end local v0    # "eventObject":Lorg/json/JSONObject;
    .end local v1    # "propertiesObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1576
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private transformItemTaskQueue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 13
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "eventType"    # Ljava/lang/String;
    .param p4, "time"    # J
    .param p6, "properties"    # Lorg/json/JSONObject;

    .line 1579
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    const-string v0, "SA.SensorsDataAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track item, isDataCollectEnable = false, itemType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",itemId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, p2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1582
    :cond_0
    move-object v2, p1

    move-object v11, p2

    :goto_0
    move-object v0, p0

    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v12, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$12;

    move-object v3, v12

    move-object v4, v0

    move-object v5, v2

    move-object v6, v11

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$12;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {v1, v12}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->transformTaskQueue(Ljava/lang/Runnable;)V

    .line 1592
    return-void
.end method


# virtual methods
.method _trackEventFromH5(Ljava/lang/String;)Z
    .locals 6
    .param p1, "eventInfo"    # Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    return v0

    .line 410
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, "eventObject":Lorg/json/JSONObject;
    const-string v2, "server_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "serverUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 414
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;

    invoke-direct {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mServerUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->check(Lcom/sensorsdata/analytics/android/sdk/ServerUrl;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 415
    return v0

    .line 417
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackEventFromH5(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v0, 0x1

    return v0

    .line 422
    .end local v1    # "eventObject":Lorg/json/JSONObject;
    .end local v2    # "serverUrl":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 423
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    .line 297
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V

    .line 298
    return-void
.end method

.method public addFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V
    .locals 2
    .param p1, "functionListener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;

    .line 363
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$1;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method public addSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_1
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected addTimeProperty(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 623
    const-string v0, "$time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    :try_start_0
    const-string v0, "$time"

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 630
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-void
.end method

.method public appBecomeActive()V
    .locals 6

    .line 509
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    monitor-enter v0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 512
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;>;"
    if-eqz v2, :cond_0

    .line 513
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;

    .line 514
    .local v3, "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    if-eqz v3, :cond_0

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->setStartTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;>;"
    .end local v3    # "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    :cond_0
    goto :goto_0

    .line 521
    :cond_1
    goto :goto_1

    .line 522
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SA.SensorsDataAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appBecomeActive error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public appEnterBackground()V
    .locals 8

    .line 531
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 534
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;>;"
    if-eqz v2, :cond_1

    .line 535
    const-string v3, "$AppEnd"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    goto :goto_0

    .line 538
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;

    .line 539
    .local v3, "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->isPaused()Z

    move-result v4

    if-nez v4, :cond_1

    .line 540
    nop

    .line 541
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->getEventAccumulatedDuration()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getSessionIntervalTime()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 542
    .local v4, "eventAccumulatedDuration":J
    invoke-virtual {v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->setEventAccumulatedDuration(J)V

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->setStartTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;>;"
    .end local v3    # "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    .end local v4    # "eventAccumulatedDuration":J
    :cond_1
    goto :goto_0

    .line 549
    :cond_2
    goto :goto_1

    .line 550
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SA.SensorsDataAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appEnterBackground error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected applySAConfigOptions()V
    .locals 3

    .line 1099
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableTrackAppCrash:Z

    if-eqz v0, :cond_0

    .line 1100
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->enableAppCrash()V

    .line 1103
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1104
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mAutoTrack:Z

    .line 1107
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeLog:Z

    if-eqz v0, :cond_2

    .line 1108
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mLogEnabled:Z

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->enableLog(Z)V

    .line 1111
    :cond_2
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mTrackScreenOrientationEnabled:Z

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->enableTrackScreenOrientation(Z)V

    .line 1114
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mVisualizedEnabled:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mVisualizedPropertiesEnabled:Z

    if-eqz v0, :cond_3

    .line 1115
    const-string v0, "SA.SensorsDataAPI"

    const-string v2, "\u5f53\u524d\u5df2\u5f00\u542f\u53ef\u89c6\u5316\u5168\u57cb\u70b9\u81ea\u5b9a\u4e49\u5c5e\u6027\uff08enableVisualizedProperties\uff09\uff0c\u53ef\u89c6\u5316\u5168\u57cb\u70b9\u91c7\u96c6\u5f00\u5173\u5df2\u5931\u6548\uff01"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableVisualizedAutoTrack(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 1118
    :cond_3
    return-void
.end method

.method protected delayExecution(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 246
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 248
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 249
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mActivityLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 251
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const-string v0, "SA.SensorsDataAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK init success by\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_1
    return-void
.end method

.method protected delayInitTask()V
    .locals 2

    .line 1671
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$13;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$13;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1686
    return-void
.end method

.method enableAutoTrack(I)V
    .locals 2
    .param p1, "autoTrackEventType"    # I

    .line 478
    if-lez p1, :cond_1

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 481
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mAutoTrack:Z

    .line 482
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 486
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 479
    :cond_1
    :goto_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDebugMode()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    return-object v0
.end method

.method public getDeepLinkCallback()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    return-object v0
.end method

.method protected getDynamicProperty()Lorg/json/JSONObject;
    .locals 2

    .line 1152
    const/4 v0, 0x0

    .line 1154
    .local v0, "dynamicProperty":Lorg/json/JSONObject;
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDynamicSuperPropertiesCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;

    if-eqz v1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDynamicSuperPropertiesCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;

    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;->getDynamicSuperProperties()Lorg/json/JSONObject;

    move-result-object v1

    move-object v0, v1

    .line 1156
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyTypes(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :cond_0
    goto :goto_0

    .line 1158
    :catch_0
    move-exception v1

    .line 1159
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1161
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    return-object v0
.end method

.method public getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    return-object v0
.end method

.method public getSensorsDataEncrypt()Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    return-object v0
.end method

.method handleJsMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 3
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 343
    .local p1, "view":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    .line 346
    .local v1, "listener":Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;
    if-eqz v1, :cond_0

    .line 347
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;->onReceiveJSMessage(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v1    # "listener":Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 351
    .restart local v1    # "listener":Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;
    :cond_0
    :goto_1
    nop

    .line 352
    .end local v1    # "listener":Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;
    :goto_2
    goto :goto_0

    .line 354
    :cond_1
    return-void
.end method

.method protected initSAConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "serverURL"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 1019
    .local v0, "configBundle":Landroid/os/Bundle;
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1020
    iput-boolean v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSDKConfigInit:Z

    .line 1021
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-direct {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    goto :goto_0

    .line 1023
    :cond_0
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSDKConfigInit:Z

    .line 1026
    :goto_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableEncrypt:Z

    if-eqz v1, :cond_1

    .line 1027
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-object v5, v5, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getEncryptors()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;-><init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    .line 1030
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    invoke-static {v1, p2, v4}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    .line 1031
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v4, v4, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable:Z

    invoke-virtual {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->setDataCollectEnable(Z)V

    .line 1033
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeLog:Z

    if-eqz v1, :cond_2

    .line 1034
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mLogEnabled:Z

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->enableLog(Z)V

    goto :goto_2

    .line 1036
    :cond_2
    const-string v1, "com.sensorsdata.analytics.android.EnableLogging"

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-eq v4, v5, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->enableLog(Z)V

    .line 1039
    :goto_2
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK:Z

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->setDisableSDK(Z)V

    .line 1041
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->setServerUrl(Ljava/lang/String;)V

    .line 1042
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableTrackAppCrash:Z

    if-eqz v1, :cond_4

    .line 1043
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->enableAppCrash()V

    .line 1046
    :cond_4
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mFlushInterval:I

    if-nez v1, :cond_5

    .line 1047
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const-string v4, "com.sensorsdata.analytics.android.FlushInterval"

    const/16 v5, 0x3a98

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setFlushInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 1051
    :cond_5
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mFlushBulkSize:I

    if-nez v1, :cond_6

    .line 1052
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const-string v4, "com.sensorsdata.analytics.android.FlushBulkSize"

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setFlushBulkSize(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 1056
    :cond_6
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-wide v4, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxCacheSize:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    .line 1057
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const-wide/32 v4, 0x2000000

    invoke-virtual {v1, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setMaxCacheSize(J)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 1060
    :cond_7
    const-string v1, "com.sensorsdata.analytics.android.AutoTrack"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mAutoTrack:Z

    .line 1062
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    if-eqz v1, :cond_8

    .line 1063
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->enableAutoTrack(I)V

    .line 1064
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mAutoTrack:Z

    .line 1067
    :cond_8
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeHeatMapEnabled:Z

    if-nez v1, :cond_9

    .line 1068
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const-string v4, "com.sensorsdata.analytics.android.HeatMap"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mHeatMapEnabled:Z

    .line 1072
    :cond_9
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeVisualizedEnabled:Z

    if-nez v1, :cond_a

    .line 1073
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const-string v4, "com.sensorsdata.analytics.android.VisualizedAutoTrack"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mVisualizedEnabled:Z

    .line 1077
    :cond_a
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mTrackScreenOrientationEnabled:Z

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->enableTrackScreenOrientation(Z)V

    .line 1079
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK:Z

    if-eqz v1, :cond_b

    .line 1080
    iput-boolean v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mEnableNetworkRequest:Z

    .line 1081
    sput-boolean v2, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isChangeEnableNetworkFlag:Z

    .line 1084
    :cond_b
    const-string v1, "com.sensorsdata.analytics.android.ShowDebugInfoView"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->SHOW_DEBUG_INFO_VIEW:Z

    .line 1087
    const-string v1, "com.sensorsdata.analytics.android.DisableDefaultRemoteConfig"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDisableDefaultRemoteConfig:Z

    .line 1090
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable:Z

    if-eqz v1, :cond_c

    .line 1091
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->isMainProcess(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    sput-boolean v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mIsMainProcess:Z

    .line 1094
    :cond_c
    const-string v1, "com.sensorsdata.analytics.android.DisableTrackDeviceId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDisableTrackDeviceId:Z

    .line 1096
    return-void
.end method

.method public isDeepLinkInstallSource()Z
    .locals 1

    .line 1664
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mEnableDeepLinkInstallSource:Z

    return v0
.end method

.method public isDisableDefaultRemoteConfig()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDisableDefaultRemoteConfig:Z

    return v0
.end method

.method protected isFirstDay(J)Z
    .locals 5
    .param p1, "eventTime"    # J

    .line 633
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 634
    .local v0, "firstDay":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 635
    return v1

    .line 638
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mIsFirstDayDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_1

    .line 639
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mIsFirstDayDateFormat:Ljava/text/SimpleDateFormat;

    .line 641
    :cond_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mIsFirstDayDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "current":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 643
    .end local v2    # "current":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 644
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 646
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method isSaveDeepLinkInfo()Z
    .locals 1

    .line 398
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableSaveDeepLinkInfo:Z

    return v0
.end method

.method registerNetworkListener()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$5;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$5;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method public removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    .line 306
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V

    .line 307
    return-void
.end method

.method public removeFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V
    .locals 2
    .param p1, "functionListener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$2;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 387
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public removeSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAJSListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_0
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setDebugMode(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V
    .locals 1
    .param p1, "debugMode"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 464
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 465
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-ne p1, v0, :cond_0

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->enableLog(Z)V

    .line 467
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->setDebug(Z)V

    .line 468
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mOriginServerUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mServerUrl:Ljava/lang/String;

    goto :goto_0

    .line 470
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->enableLog(Z)V

    .line 471
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->setDebug(Z)V

    .line 472
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mOriginServerUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->setServerUrl(Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void
.end method

.method public setRemoteManager(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;)V
    .locals 0
    .param p1, "remoteManager"    # Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    .line 493
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    .line 494
    return-void
.end method

.method public trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V

    .line 586
    return-void
.end method

.method trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;
    .param p3, "viewNode"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    .line 596
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->appendLibMethodAutoTrack(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 597
    .local v0, "eventProperties":Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v0, p3}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V

    .line 598
    return-void
.end method

.method trackChannelDebugInstallation()V
    .locals 2

    .line 554
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 555
    .local v0, "_properties":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->addTimeProperty(Lorg/json/JSONObject;)V

    .line 556
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$4;

    invoke-direct {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$4;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->transformTaskQueue(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method protected trackEvent(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "properties"    # Lorg/json/JSONObject;
    .param p4, "originalDistinctId"    # Ljava/lang/String;

    .line 712
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getDistinctId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getLoginId()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method protected trackEvent(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "properties"    # Lorg/json/JSONObject;
    .param p4, "dynamicProperty"    # Lorg/json/JSONObject;
    .param p5, "distinctId"    # Ljava/lang/String;
    .param p6, "loginId"    # Ljava/lang/String;
    .param p7, "originalDistinctId"    # Ljava/lang/String;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v1, p2

    .line 718
    const/4 v2, 0x0

    .line 719
    .local v2, "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v3, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 721
    :try_start_1
    iget-object v0, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;

    move-object v2, v0

    .line 722
    iget-object v0, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :try_start_2
    const-string v0, "_SATimer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x2d

    if-le v0, v3, :cond_0

    .line 726
    const/4 v0, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 730
    .end local p2    # "eventName":Ljava/lang/String;
    .local v0, "eventName":Ljava/lang/String;
    move-object v14, v0

    goto :goto_0

    .line 723
    .end local v0    # "eventName":Ljava/lang/String;
    .restart local p2    # "eventName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 730
    :cond_0
    move-object v14, v1

    .end local v2    # "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    .end local p2    # "eventName":Ljava/lang/String;
    .local v13, "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    .local v14, "eventName":Ljava/lang/String;
    :goto_0
    move-object v13, v2

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    invoke-static {v14}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertEventName(Ljava/lang/String;)V

    .line 733
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    .line 734
    invoke-virtual {v0, v14}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->ignoreEvent(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v0, :cond_1

    .line 735
    return-void

    .line 740
    :cond_1
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 741
    .local v0, "sendProperties":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 743
    invoke-direct {v11, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getCarrier(Lorg/json/JSONObject;)V

    .line 744
    const-string v1, "$AppEnd"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "$AppDeeplinkLaunch"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 746
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getLatestUtmProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 752
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;

    move-result-object v1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v15, p3

    :try_start_7
    invoke-virtual {v1, v14, v12, v15}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->properties(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 751
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeSuperJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v10, v1

    .line 755
    .end local v0    # "sendProperties":Lorg/json/JSONObject;
    .local v10, "sendProperties":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 756
    move-object/from16 v9, p4

    invoke-direct {v11, v10, v9}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mergerDynamicAndSuperProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 758
    iget-object v0, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mReferrerScreenTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 759
    const-string v0, "$referrer_title"

    iget-object v1, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mReferrerScreenTitle:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 763
    :cond_3
    iget-object v0, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 764
    .local v1, "networkType":Ljava/lang/String;
    const-string v0, "$wifi"

    const-string v2, "WIFI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 765
    const-string v0, "$network_type"

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 769
    :try_start_8
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mGPSLocation:Lcom/sensorsdata/analytics/android/sdk/SensorsDataGPSLocation;

    if-eqz v0, :cond_4

    .line 770
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mGPSLocation:Lcom/sensorsdata/analytics/android/sdk/SensorsDataGPSLocation;

    invoke-virtual {v0, v10}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataGPSLocation;->toJSON(Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    .line 774
    :cond_4
    goto :goto_1

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 778
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getScreenOrientation()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "screenOrientation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 780
    const-string v2, "$screen_orientation"

    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    .line 784
    .end local v0    # "screenOrientation":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 782
    :catch_1
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 785
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "networkType":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 786
    :cond_6
    move-object/from16 v9, p4

    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isProfile()Z

    move-result v0

    if-nez v0, :cond_7

    .line 787
    return-void

    .line 792
    :cond_7
    :goto_3
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable:Z

    if-nez v0, :cond_9

    .line 793
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 794
    const-string v0, "SA.SensorsDataAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track event, isDataCollectEnable = false, eventName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",property = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 796
    :cond_8
    const/4 v0, 0x0

    move-object v1, v0

    .line 798
    .local v1, "identitiesJson":Lorg/json/JSONObject;
    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-virtual {v2, v12}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3

    .line 801
    .end local v1    # "identitiesJson":Lorg/json/JSONObject;
    .local v0, "identitiesJson":Lorg/json/JSONObject;
    goto :goto_4

    .line 799
    .end local v0    # "identitiesJson":Lorg/json/JSONObject;
    .restart local v1    # "identitiesJson":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 803
    .end local v0    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "identitiesJson":Lorg/json/JSONObject;
    .local v0, "identitiesJson":Lorg/json/JSONObject;
    :goto_4
    move-object v1, v11

    move-object v2, v12

    move-object v3, v14

    move-object v4, v15

    move-object v5, v10

    move-object v6, v0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v16, v10

    move-object v10, v13

    .end local v10    # "sendProperties":Lorg/json/JSONObject;
    .local v16, "sendProperties":Lorg/json/JSONObject;
    invoke-direct/range {v1 .. v10}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->transformEventTaskQueue(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;)V

    .line 804
    return-void

    .line 806
    .end local v0    # "identitiesJson":Lorg/json/JSONObject;
    .end local v16    # "sendProperties":Lorg/json/JSONObject;
    .restart local v10    # "sendProperties":Lorg/json/JSONObject;
    :cond_9
    move-object/from16 v16, v10

    .end local v10    # "sendProperties":Lorg/json/JSONObject;
    .restart local v16    # "sendProperties":Lorg/json/JSONObject;
    iget-object v0, v11, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-virtual {v0, v12}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Lorg/json/JSONObject;

    move-result-object v6

    move-object v1, v11

    move-object v2, v12

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackEventInternal(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 809
    .end local v16    # "sendProperties":Lorg/json/JSONObject;
    nop

    .line 812
    .end local v13    # "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    goto :goto_7

    .line 807
    .restart local v13    # "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v15, p3

    .line 808
    .local v0, "e":Lorg/json/JSONException;
    :goto_5
    :try_start_e
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;

    const-string v2, "Unexpected property"

    invoke-direct {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 810
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v13    # "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v15, p3

    goto :goto_6

    .end local v14    # "eventName":Ljava/lang/String;
    .restart local p2    # "eventName":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v15, p3

    move-object v14, v1

    .line 811
    .end local p2    # "eventName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v14    # "eventName":Ljava/lang/String;
    :goto_6
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 813
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method protected trackEventH5(Ljava/lang/String;)V
    .locals 14
    .param p1, "eventInfo"    # Ljava/lang/String;

    .line 822
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    return-void

    .line 827
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable:Z

    if-nez v0, :cond_1

    .line 828
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->transformH5TaskQueue(Ljava/lang/String;)V

    .line 829
    return-void

    .line 832
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 833
    .local v0, "eventObject":Lorg/json/JSONObject;
    const-string v1, "_hybrid_h5"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 834
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "type":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->valueOf(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    move-result-object v3

    .line 837
    .local v3, "eventType":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    const-string v4, "distinct_id"

    .line 838
    .local v4, "distinctIdKey":Ljava/lang/String;
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v3, v5, :cond_2

    .line 839
    const-string v5, "original_id"

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 841
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getLoginId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 843
    :cond_3
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 845
    :goto_0
    const-string v5, "anonymous_id"

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 847
    .local v5, "eventTime":J
    const-string v7, "time"

    invoke-virtual {v0, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 850
    :try_start_1
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 851
    .local v7, "secureRandom":Ljava/security/SecureRandom;
    const-string v8, "_track_id"

    invoke-virtual {v7}, Ljava/security/SecureRandom;->nextInt()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 854
    .end local v7    # "secureRandom":Ljava/security/SecureRandom;
    goto :goto_1

    .line 852
    :catch_0
    move-exception v7

    .line 856
    :goto_1
    :try_start_2
    const-string v7, "properties"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 858
    .local v7, "propertiesObject":Lorg/json/JSONObject;
    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyTypes(Lorg/json/JSONObject;)V

    .line 859
    if-nez v7, :cond_4

    .line 860
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v8

    .line 863
    :cond_4
    const-string v8, "lib"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 864
    .local v8, "libObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_5

    .line 865
    iget-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    const-string v10, "$app_version"

    invoke-virtual {v9, v8, v10}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->addKeyIfExist(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 867
    iget-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSuperProperties:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    invoke-virtual {v9}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 868
    .local v9, "superProperties":Lorg/json/JSONObject;
    if-eqz v9, :cond_5

    .line 869
    const-string v10, "$app_version"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 870
    const-string v10, "$app_version"

    const-string v11, "$app_version"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    .end local v9    # "superProperties":Lorg/json/JSONObject;
    :cond_5
    const-string v9, "event"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 876
    .local v9, "eventName":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v3, v11}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->properties(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    .line 877
    .local v10, "deviceInfo":Lorg/json/JSONObject;
    if-eqz v10, :cond_9

    .line 878
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 879
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 880
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 881
    .local v12, "key":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 882
    const-string v13, "$lib"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "$lib_version"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 883
    goto :goto_2

    .line 885
    :cond_7
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    .end local v12    # "key":Ljava/lang/String;
    :cond_8
    goto :goto_2

    .line 889
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 891
    invoke-direct {p0, v7}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getCarrier(Lorg/json/JSONObject;)V

    .line 893
    iget-object v11, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 894
    .local v11, "networkType":Ljava/lang/String;
    const-string v12, "$wifi"

    const-string v13, "WIFI"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 895
    const-string v12, "$network_type"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 898
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getDynamicProperty()Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {p0, v7, v12}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mergerDynamicAndSuperProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 901
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 902
    const-string v12, "$is_first_day"

    invoke-virtual {p0, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isFirstDay(J)Z

    move-result v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 904
    :cond_a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getLatestUtmProperties()Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 907
    .end local v11    # "networkType":Ljava/lang/String;
    :cond_b
    const-string v11, "_nocache"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 908
    const-string v11, "_nocache"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 911
    :cond_c
    const-string v11, "server_url"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 912
    const-string v11, "server_url"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 915
    :cond_d
    const-string v11, "_flush_time"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 916
    const-string v11, "_flush_time"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 919
    :cond_e
    const-string v11, "$project"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 920
    const-string v11, "project"

    const-string v12, "$project"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 921
    const-string v11, "$project"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 924
    :cond_f
    const-string v11, "$token"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 925
    const-string v11, "token"

    const-string v12, "$token"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    const-string v11, "$token"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 929
    :cond_10
    const-string v11, "$time"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v11, :cond_12

    .line 931
    :try_start_3
    const-string v11, "$time"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 932
    .local v11, "time":J
    invoke-static {v11, v12}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->isDateValid(J)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 933
    move-wide v5, v11

    .line 934
    const-string v13, "time"

    invoke-virtual {v0, v13, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 938
    .end local v11    # "time":J
    :cond_11
    goto :goto_3

    .line 936
    :catch_1
    move-exception v11

    .line 937
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v11}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 939
    .end local v11    # "ex":Ljava/lang/Exception;
    :goto_3
    const-string v11, "$time"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 942
    :cond_12
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 944
    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertEventName(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 946
    :try_start_5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;

    move-result-object v11

    invoke-virtual {v11, v9, v7, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->handleEventOfSession(Ljava/lang/String;Lorg/json/JSONObject;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 949
    goto :goto_4

    .line 947
    :catch_2
    move-exception v11

    .line 948
    .local v11, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v11}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 950
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-direct {p0, v9, v7}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isEnterDb(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v11

    .line 951
    .local v11, "enterDb":Z
    if-nez v11, :cond_13

    .line 952
    const-string v2, "SA.SensorsDataAPI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " event can not enter database"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    return-void

    .line 956
    :cond_13
    iget-boolean v12, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isTrackEventWithPluginVersion:Z

    if-nez v12, :cond_15

    const-string v12, "$lib_plugin_version"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 957
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getPluginVersion()Lorg/json/JSONArray;

    move-result-object v12

    .line 958
    .local v12, "libPluginVersion":Lorg/json/JSONArray;
    if-nez v12, :cond_14

    .line 959
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isTrackEventWithPluginVersion:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 962
    :cond_14
    :try_start_7
    const-string v13, "$lib_plugin_version"

    invoke-virtual {v7, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 963
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isTrackEventWithPluginVersion:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 966
    goto :goto_5

    .line 964
    :catch_3
    move-exception v2

    .line 965
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 970
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v11    # "enterDb":Z
    .end local v12    # "libPluginVersion":Lorg/json/JSONArray;
    :cond_15
    :goto_5
    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyTypes(Lorg/json/JSONObject;)V

    .line 971
    const-string v2, "properties"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 973
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne v3, v2, :cond_17

    .line 974
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mLoginIdLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 975
    :try_start_9
    iget-object v11, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-virtual {v11, v3, v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mergeH5Identities(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)V

    .line 976
    iget-object v11, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-virtual {v11, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->enqueueEventMessage(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 977
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 978
    const-string v11, "SA.SensorsDataAPI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "track event:\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_16
    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception v11

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v11

    .line 982
    :cond_17
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 983
    const-string v2, "login_id"

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getLoginId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 985
    :cond_18
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-virtual {v2, v3, v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->mergeH5Identities(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)V

    .line 986
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-virtual {v2, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->enqueueEventMessage(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 987
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 988
    const-string v2, "SA.SensorsDataAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "track event from H5:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 994
    .end local v0    # "eventObject":Lorg/json/JSONObject;
    .end local v1    # "type":Ljava/lang/String;
    .end local v3    # "eventType":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .end local v4    # "distinctIdKey":Ljava/lang/String;
    .end local v5    # "eventTime":J
    .end local v7    # "propertiesObject":Lorg/json/JSONObject;
    .end local v8    # "libObject":Lorg/json/JSONObject;
    .end local v9    # "eventName":Ljava/lang/String;
    .end local v10    # "deviceInfo":Lorg/json/JSONObject;
    :cond_19
    :goto_6
    goto :goto_7

    .line 991
    :catch_4
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 995
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method public trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V

    .line 434
    return-void
.end method

.method public trackInternal(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;
    .param p3, "viewNode"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    .line 444
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$3;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$3;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method protected trackItemEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 16
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "eventType"    # Ljava/lang/String;
    .param p4, "time"    # J
    .param p6, "properties"    # Lorg/json/JSONObject;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 651
    move-object/from16 v3, p6

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyKey(Ljava/lang/String;)Z

    move-result v0

    .line 652
    .local v0, "isItemTypeValid":Z
    invoke-static/range {p6 .. p6}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyTypes(Lorg/json/JSONObject;)V

    .line 653
    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertItemId(Ljava/lang/String;)V

    .line 655
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v4, v4, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable:Z

    if-nez v4, :cond_0

    .line 656
    invoke-direct/range {p0 .. p6}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->transformItemTaskQueue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    .line 657
    return-void

    .line 660
    :cond_0
    const/4 v4, 0x0

    .line 661
    .local v4, "eventProject":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, "$project"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 662
    const-string v5, "$project"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 663
    const-string v5, "$project"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 666
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 667
    .local v5, "libProperties":Lorg/json/JSONObject;
    const-string v6, "$lib"

    const-string v7, "Android"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 668
    const-string v6, "$lib_version"

    const-string v7, "6.2.8"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string v6, "$lib_method"

    const-string v7, "code"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    iget-object v6, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    const-string v7, "$app_version"

    invoke-virtual {v6, v5, v7}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->addKeyIfExist(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 672
    iget-object v6, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSuperProperties:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 673
    .local v6, "superProperties":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 674
    const-string v7, "$app_version"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 675
    const-string v7, "$app_version"

    const-string v8, "$app_version"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 679
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 680
    .local v7, "trace":[Ljava/lang/StackTraceElement;
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 681
    const/4 v8, 0x0

    aget-object v10, v7, v8

    .line 682
    .local v10, "traceElement":Ljava/lang/StackTraceElement;
    const-string v11, "%s##%s##%s##%s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    .line 683
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v12, v9

    const/4 v8, 0x2

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v8

    const/4 v8, 0x3

    .line 684
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v8

    .line 682
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 685
    .local v8, "libDetail":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 686
    const-string v9, "$lib_detail"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 690
    .end local v8    # "libDetail":Ljava/lang/String;
    .end local v10    # "traceElement":Ljava/lang/StackTraceElement;
    :cond_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 691
    .local v8, "eventProperties":Lorg/json/JSONObject;
    if-eqz v0, :cond_4

    .line 692
    const-string v9, "item_type"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 694
    :cond_4
    move-object/from16 v10, p1

    :goto_0
    const-string v9, "item_id"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v11, p2

    :try_start_2
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 695
    const-string v9, "type"

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    const-string v9, "time"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v12, p4

    :try_start_3
    invoke-virtual {v8, v9, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 697
    const-string v9, "properties"

    invoke-static/range {p6 .. p6}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatDate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v8, v9, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    const-string v9, "lib"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 701
    const-string v9, "project"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    :cond_5
    iget-object v9, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-virtual {v9, v2, v8}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->enqueueEventMessage(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 704
    const-string v9, "SA.SensorsDataAPI"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "track event:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 707
    .end local v0    # "isItemTypeValid":Z
    .end local v4    # "eventProject":Ljava/lang/String;
    .end local v5    # "libProperties":Lorg/json/JSONObject;
    .end local v6    # "superProperties":Lorg/json/JSONObject;
    .end local v7    # "trace":[Ljava/lang/StackTraceElement;
    .end local v8    # "eventProperties":Lorg/json/JSONObject;
    goto :goto_4

    .line 705
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v10, p1

    :goto_1
    move-object/from16 v11, p2

    :goto_2
    move-wide/from16 v12, p4

    .line 706
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 708
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method protected trackTimerState(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "isPause"    # Z

    .line 1127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1128
    .local v6, "startTime":J
    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$8;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$8;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Ljava/lang/String;ZJ)V

    invoke-virtual {v8, v9}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1144
    return-void
.end method

.method public transformTaskQueue(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1004
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable:Z

    if-nez v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$7;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$7;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1011
    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1015
    return-void
.end method

.method unregisterNetworkListener()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$6;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$6;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 620
    return-void
.end method
