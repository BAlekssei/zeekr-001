.class public Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
.super Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;
.source "SensorsDataAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$NetworkType;,
        Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;,
        Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;
    }
.end annotation


# static fields
.field static ANDROID_PLUGIN_VERSION:Ljava/lang/String; = null

.field static final MIN_PLUGIN_VERSION:Ljava/lang/String; = "3.4.0"

.field static final VERSION:Ljava/lang/String; = "6.2.8"

.field public static final VTRACK_SUPPORTED_MIN_API:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->ANDROID_PLUGIN_VERSION:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;-><init>()V

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configOptions"    # Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .param p3, "debugMode"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;-><init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    .line 90
    return-void
.end method

.method public static disableSDK()V
    .locals 7

    .line 179
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "call static function disableSDK"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    .line 182
    .local v0, "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    instance-of v1, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-nez v1, :cond_3

    .line 183
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 184
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    sget-boolean v1, Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;->isDisableFromObserver:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 188
    .local v1, "isFromObserver":Z
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$1;

    invoke-direct {v3, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$1;-><init>(ZLcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->transformTaskQueue(Ljava/lang/Runnable;)V

    .line 197
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 198
    invoke-virtual {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->enableNetworkRequest(Z)V

    .line 199
    sput-boolean v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isChangeEnableNetworkFlag:Z

    goto :goto_0

    .line 201
    :cond_1
    sput-boolean v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isChangeEnableNetworkFlag:Z

    .line 204
    :goto_0
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->unregisterNetworkListener()V

    .line 205
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->clearTrackTimer()V

    .line 206
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitAppStartTime(J)V

    .line 207
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->disableSDK(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 209
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->setDisableSDK(Z)V

    .line 210
    sget-boolean v2, Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;->isDisableFromObserver:Z

    if-nez v2, :cond_2

    .line 211
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getDisableSDKUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 213
    :cond_2
    sput-boolean v4, Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;->isDisableFromObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    .end local v1    # "isFromObserver":Z
    goto :goto_2

    .line 185
    .restart local v0    # "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    :cond_3
    :goto_1
    return-void

    .line 214
    .end local v0    # "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static enableSDK()V
    .locals 6

    .line 223
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "call static function enableSDK"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSDKInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    .line 226
    .local v0, "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    instance-of v1, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-nez v1, :cond_5

    .line 227
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 228
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 231
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->disableSDK(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :try_start_1
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->setDisableSDK(Z)V

    .line 235
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->enableLog(Z)V

    .line 236
    const-string v1, "SA.SensorsDataAPI"

    const-string v3, "enableSDK, enable log"

    invoke-static {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 238
    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "yyyy-MM-dd"

    invoke-static {v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;->commit(Ljava/lang/Object;)V

    .line 240
    :cond_1
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->delayInitTask()V

    .line 242
    sget-boolean v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isChangeEnableNetworkFlag:Z

    if-eqz v1, :cond_2

    .line 243
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->enableNetworkRequest(Z)V

    .line 244
    sput-boolean v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isChangeEnableNetworkFlag:Z

    .line 247
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->requestVisualConfig()V

    .line 251
    :cond_3
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->pullSDKConfigFromServer()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 256
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-boolean v1, Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;->isEnableFromObserver:Z

    if-nez v1, :cond_4

    .line 257
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEnableSDKUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 259
    :cond_4
    sput-boolean v2, Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;->isEnableFromObserver:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    .end local v0    # "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    goto :goto_2

    .line 229
    .restart local v0    # "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    :cond_5
    :goto_1
    return-void

    .line 260
    .end local v0    # "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private static getInstance(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "debugMode"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;
    .param p2, "saConfigOptions"    # Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;-><init>()V

    return-object v0

    .line 141
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    .local v1, "appContext":Landroid/content/Context;
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 144
    .local v2, "instance":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    if-nez v2, :cond_1

    .line 145
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-direct {v3, v1, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;-><init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    move-object v2, v3

    .line 146
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 148
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->delayExecution(Landroid/app/Activity;)V

    .line 151
    :cond_1
    monitor-exit v0

    return-object v2

    .line 152
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "instance":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSDKInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    .locals 3

    .line 156
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 158
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 159
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    monitor-exit v0

    return-object v2

    .line 163
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;>;"
    :cond_0
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;-><init>()V

    monitor-exit v0

    return-object v1

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    .locals 1

    .line 168
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isSDKDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;-><init>()V

    return-object v0

    .line 172
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSDKInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    return-object v0
.end method

.method public static sharedInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isSDKDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;-><init>()V

    return-object v0

    .line 103
    :cond_0
    if-nez p0, :cond_1

    .line 104
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;-><init>()V

    return-object v0

    .line 107
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    .local v1, "appContext":Landroid/content/Context;
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 111
    .local v2, "instance":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    if-nez v2, :cond_2

    .line 112
    const-string v3, "SA.SensorsDataAPI"

    const-string v4, "The static method sharedInstance(context, serverURL, debugMode) should be called before calling sharedInstance()"

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    invoke-direct {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;-><init>()V

    monitor-exit v0

    return-object v3

    .line 115
    :cond_2
    monitor-exit v0

    return-object v2

    .line 116
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "instance":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static startWithConfigOptions(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "saConfigOptions"    # Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 126
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 129
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    invoke-static {p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getInstance(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    .line 130
    .local v0, "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    iget-boolean v1, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSDKConfigInit:Z

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->applySAConfigOptions()V

    .line 133
    :cond_0
    return-void

    .line 127
    .end local v0    # "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context\u3001SAConfigOptions \u4e0d\u53ef\u4ee5\u4e3a null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V

    return-void
.end method

.method public bridge synthetic addFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->addFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V

    return-void
.end method

.method public addHeatMapActivities(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 1057
    .local p1, "activitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1061
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1062
    .local v1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 1063
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 1064
    .local v2, "hashCode":I
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mHeatMapActivities:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1065
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mHeatMapActivities:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    .end local v1    # "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "hashCode":I
    :cond_1
    goto :goto_0

    .line 1071
    :cond_2
    goto :goto_1

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1072
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1058
    :cond_3
    :goto_2
    return-void
.end method

.method public addHeatMapActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1044
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 1045
    return-void

    .line 1048
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mHeatMapActivities:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    goto :goto_0

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1052
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public bridge synthetic addSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->addSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V

    return-void
.end method

.method public addVisualizedAutoTrackActivities(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 1001
    .local p1, "activitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1005
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1006
    .local v1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 1007
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 1008
    .local v2, "hashCode":I
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mVisualizedAutoTrackActivities:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1009
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mVisualizedAutoTrackActivities:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    .end local v1    # "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "hashCode":I
    :cond_1
    goto :goto_0

    .line 1015
    :cond_2
    goto :goto_1

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1016
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1002
    :cond_3
    :goto_2
    return-void
.end method

.method public addVisualizedAutoTrackActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 989
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 990
    return-void

    .line 992
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mVisualizedAutoTrackActivities:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    goto :goto_0

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 996
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public bridge synthetic appBecomeActive()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->appBecomeActive()V

    return-void
.end method

.method public bridge synthetic appEnterBackground()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->appEnterBackground()V

    return-void
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1203
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    goto :goto_0

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1217
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public clearGPSLocation()V
    .locals 2

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$3;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$3;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public clearLastScreenUrl()V
    .locals 1

    .line 1576
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mClearReferrerWhenAppEnd:Z

    if-eqz v0, :cond_0

    .line 1577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mLastScreenUrl:Ljava/lang/String;

    .line 1579
    :cond_0
    return-void
.end method

.method public clearReferrerWhenAppEnd()V
    .locals 1

    .line 1571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mClearReferrerWhenAppEnd:Z

    .line 1572
    return-void
.end method

.method public clearSuperProperties()V
    .locals 2

    .line 1927
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$26;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$26;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1935
    return-void
.end method

.method public clearTrackTimer()V
    .locals 2

    .line 1550
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$17;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$17;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1562
    return-void
.end method

.method public deleteAll()V
    .locals 2

    .line 1862
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$23;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$23;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1868
    return-void
.end method

.method public disableAutoTrack(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)V
    .locals 4
    .param p1, "autoTrackEventType"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    .line 517
    if-nez p1, :cond_0

    .line 518
    return-void

    .line 521
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    if-nez v0, :cond_1

    .line 522
    return-void

    .line 525
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->access$000(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)I

    move-result v1

    or-int/2addr v0, v1

    .line 526
    .local v0, "union":I
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->access$000(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 527
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    goto :goto_0

    .line 529
    :cond_2
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->access$000(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)I

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 532
    :goto_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    if-nez v1, :cond_3

    .line 533
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrack:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v0    # "union":I
    :cond_3
    goto :goto_1

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 538
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public disableAutoTrack(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;",
            ">;)V"
        }
    .end annotation

    .line 492
    .local p1, "eventTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;>;"
    if-nez p1, :cond_0

    .line 493
    return-void

    .line 496
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    if-nez v0, :cond_1

    .line 497
    return-void

    .line 500
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    .line 501
    .local v1, "autoTrackEventType":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v2, v2, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->access$000(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    if-ne v2, v3, :cond_2

    .line 502
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->access$000(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)I

    move-result v4

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 504
    .end local v1    # "autoTrackEventType":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;
    :cond_2
    goto :goto_0

    .line 506
    :cond_3
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    if-nez v0, :cond_4

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrack:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_4
    goto :goto_1

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 512
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public enableAutoTrack(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p1, "eventTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;>;"
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 480
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrack:Z

    .line 481
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    .line 482
    .local v1, "autoTrackEventType":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->access$000(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v1    # "autoTrackEventType":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;
    goto :goto_0

    .line 486
    :cond_1
    goto :goto_1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 487
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 478
    :cond_2
    :goto_2
    return-void
.end method

.method public enableAutoTrackFragment(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 733
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;->enableAutoTrackFragment(Ljava/lang/Class;)V

    .line 734
    return-void
.end method

.method public enableAutoTrackFragments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 738
    .local p1, "fragmentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;->enableAutoTrackFragments(Ljava/util/List;)V

    .line 739
    return-void
.end method

.method public enableDataCollect()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1832
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$22;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$22;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1854
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1857
    goto :goto_0

    .line 1855
    :catch_0
    move-exception v0

    .line 1856
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1858
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public enableDeepLinkInstallSource(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 2285
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mEnableDeepLinkInstallSource:Z

    .line 2286
    return-void
.end method

.method public enableLog(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 284
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->setEnableLog(Z)V

    .line 285
    return-void
.end method

.method public enableNetworkRequest(Z)V
    .locals 0
    .param p1, "isRequest"    # Z

    .line 2109
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mEnableNetworkRequest:Z

    .line 2110
    return-void
.end method

.method public enableTrackScreenOrientation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 396
    if-eqz p1, :cond_1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->enable()V

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    goto :goto_1

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->disable()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_2
    :goto_0
    goto :goto_2

    .line 407
    :goto_1
    nop

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1767
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$21;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$21;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1777
    return-void
.end method

.method public flushScheduled()V
    .locals 1

    .line 1790
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->flushScheduled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    goto :goto_0

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1794
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public flushSync()V
    .locals 0

    .line 1784
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V

    .line 1785
    return-void
.end method

.method public getAnonymousId()Ljava/lang/String;
    .locals 1

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1096
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCookie(Z)Ljava/lang/String;
    .locals 2
    .param p1, "decode"    # Z

    .line 462
    if-eqz p1, :cond_0

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mCookie:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 467
    :catch_0
    move-exception v0

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mCookie:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 467
    :goto_0
    nop

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 469
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic getDebugMode()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getDebugMode()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeepLinkCallback()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getDeepLinkCallback()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    move-result-object v0

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->getDistinctId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1086
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getFlushBulkSize()I
    .locals 1

    .line 318
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mFlushBulkSize:I

    return v0
.end method

.method public getFlushInterval()I
    .locals 1

    .line 308
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mFlushInterval:I

    return v0
.end method

.method getFlushNetworkPolicy()I
    .locals 1

    .line 303
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mNetworkTypePolicy:I

    return v0
.end method

.method public getIgnoredViewTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mIgnoredViewTypeList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mIgnoredViewTypeList:Ljava/util/List;

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mIgnoredViewTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getLastScreenTrackProperties()Lorg/json/JSONObject;
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mLastScreenTrackProperties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLastScreenUrl()Ljava/lang/String;
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mLastScreenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->getLoginId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1120
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getMaxCacheSize()J
    .locals 2

    .line 289
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-wide v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxCacheSize:J

    return-wide v0
.end method

.method public getPresetProperties()Lorg/json/JSONObject;
    .locals 4

    .line 272
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 274
    .local v0, "properties":Lorg/json/JSONObject;
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getPresetProperties()Lorg/json/JSONObject;

    move-result-object v1

    move-object v0, v1

    .line 275
    const-string v1, "$is_first_day"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isFirstDay(J)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 279
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 2335
    const-string v0, "6.2.8"

    return-object v0
.end method

.method public getScreenOrientation()Ljava/lang/String;
    .locals 1

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->getOrientation()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 442
    :cond_0
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 443
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getSensorsDataEncrypt()Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getSensorsDataEncrypt()Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    move-result-object v0

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 2295
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionIntervalTime()I
    .locals 1

    .line 331
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSessionTime:I

    return v0
.end method

.method public getSuperProperties()Lorg/json/JSONObject;
    .locals 3

    .line 1872
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSuperProperties:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    monitor-enter v0

    .line 1874
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSuperProperties:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    .line 1879
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1875
    :catch_0
    move-exception v1

    .line 1876
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1877
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    monitor-exit v0

    return-object v2

    .line 1879
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public identify(Ljava/lang/String;)V
    .locals 2
    .param p1, "distinctId"    # Ljava/lang/String;

    .line 1126
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertDistinctId(Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$5;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$5;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public ignoreAutoTrackActivities(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 647
    .local p1, "activitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_1

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 656
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 657
    .local v1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 658
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 659
    .local v2, "hashCode":I
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 660
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    .end local v1    # "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "hashCode":I
    :cond_2
    goto :goto_0

    .line 664
    :cond_3
    return-void

    .line 648
    :cond_4
    :goto_1
    return-void
.end method

.method public ignoreAutoTrackActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 693
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 694
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_1

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 702
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 703
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 704
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    .end local v0    # "hashCode":I
    :cond_2
    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 709
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public ignoreAutoTrackFragment(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 770
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;->ignoreAutoTrackFragment(Ljava/lang/Class;)V

    .line 771
    return-void
.end method

.method public ignoreAutoTrackFragments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 765
    .local p1, "fragmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;->ignoreAutoTrackFragments(Ljava/util/List;)V

    .line 766
    return-void
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 923
    if-eqz p1, :cond_0

    .line 924
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_ignored:I

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 926
    :cond_0
    return-void
.end method

.method public ignoreView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ignore"    # Z

    .line 930
    if-eqz p1, :cond_1

    .line 931
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_ignored:I

    if-eqz p2, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 933
    :cond_1
    return-void
.end method

.method public ignoreViewType(Ljava/lang/Class;)V
    .locals 1
    .param p1, "viewType"    # Ljava/lang/Class;

    .line 955
    if-nez p1, :cond_0

    .line 956
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mIgnoredViewTypeList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mIgnoredViewTypeList:Ljava/util/List;

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mIgnoredViewTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mIgnoredViewTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_2
    return-void
.end method

.method public isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 785
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 786
    return v0

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 789
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    return v2

    .line 793
    :cond_1
    const-class v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreenAndAppClick;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 794
    return v2

    .line 797
    :cond_2
    const-class v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppClick;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0
.end method

.method public isActivityAutoTrackAppViewScreenIgnored(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 743
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 744
    return v0

    .line 746
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 747
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    return v2

    .line 751
    :cond_1
    const-class v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreenAndAppClick;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 752
    return v2

    .line 755
    :cond_2
    const-class v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0
.end method

.method public isAutoTrackEnabled()Z
    .locals 2

    .line 542
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isSDKDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->isAutoTrackEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 548
    .local v0, "isAutoTrackEnabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 552
    .end local v0    # "isAutoTrackEnabled":Ljava/lang/Boolean;
    :cond_1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrack:Z

    return v0
.end method

.method public isAutoTrackEventTypeIgnored(I)Z
    .locals 4
    .param p1, "autoTrackEventType"    # I

    .line 811
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->isAutoTrackEventTypeIgnored(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 813
    .local v0, "isIgnored":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    const-string v1, "SA.SensorsDataAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->autoTrackEventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is ignored by remote config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 821
    .end local v0    # "isIgnored":Ljava/lang/Boolean;
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    or-int/2addr v0, p1

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z
    .locals 1
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    .line 803
    if-nez p1, :cond_0

    .line 804
    const/4 v0, 0x0

    return v0

    .line 806
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->access$000(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(I)Z

    move-result v0

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .line 2099
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDeepLinkInstallSource()Z
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isDeepLinkInstallSource()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDisableDefaultRemoteConfig()Z
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isDisableDefaultRemoteConfig()Z

    move-result v0

    return v0
.end method

.method public isFragmentAutoTrackAppViewScreen(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 760
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;->isFragmentAutoTrackAppViewScreen(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isHeatMapActivity(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1026
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1027
    return v0

    .line 1029
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mHeatMapActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1030
    return v2

    .line 1032
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mHeatMapActivities:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 1033
    return v2

    .line 1037
    :cond_2
    goto :goto_0

    .line 1035
    :catch_0
    move-exception v1

    .line 1036
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1038
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isHeatMapEnabled()Z
    .locals 1

    .line 1076
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mHeatMapEnabled:Z

    return v0
.end method

.method public isNetworkRequestEnable()Z
    .locals 1

    .line 2104
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mEnableNetworkRequest:Z

    return v0
.end method

.method public isTrackFragmentAppViewScreenEnabled()Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;->isTrackFragmentAppViewScreenEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisualizedAutoTrackActivity(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 971
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 972
    return v0

    .line 974
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mVisualizedAutoTrackActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 975
    return v2

    .line 977
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mVisualizedAutoTrackActivities:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 978
    return v2

    .line 982
    :cond_2
    goto :goto_0

    .line 980
    :catch_0
    move-exception v1

    .line 981
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 983
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isVisualizedAutoTrackEnabled()Z
    .locals 1

    .line 1020
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mVisualizedEnabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mVisualizedPropertiesEnabled:Z

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

.method public itemDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;

    .line 2275
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$42;

    invoke-direct {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$42;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2281
    return-void
.end method

.method public itemSet(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "properties"    # Lorg/json/JSONObject;

    .line 2261
    :try_start_0
    invoke-static {p3}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2262
    .local v0, "cloneProperties":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$41;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$41;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2270
    .end local v0    # "cloneProperties":Lorg/json/JSONObject;
    goto :goto_0

    .line 2268
    :catch_0
    move-exception v0

    .line 2269
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 2271
    .end local v0    # "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    :goto_0
    return-void
.end method

.method public login(Ljava/lang/String;)V
    .locals 1
    .param p1, "loginId"    # Ljava/lang/String;

    .line 1144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->login(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1145
    return-void
.end method

.method public login(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 1150
    :try_start_0
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1151
    .local v0, "cloneProperties":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertDistinctId(Ljava/lang/String;)V

    .line 1152
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mLoginIdLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :try_start_1
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    invoke-virtual {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->updateLoginId(Ljava/lang/String;)V

    .line 1155
    sget-boolean v2, Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;->isLoginFromObserver:Z

    if-eqz v2, :cond_0

    .line 1156
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sensorsdata/analytics/android/sdk/internal/rpc/SensorsDataContentObserver;->isLoginFromObserver:Z

    .line 1157
    monitor-exit v1

    return-void

    .line 1159
    :cond_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$6;

    invoke-direct {v3, p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$6;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1175
    :cond_1
    monitor-exit v1

    .line 1178
    .end local v0    # "cloneProperties":Lorg/json/JSONObject;
    goto :goto_0

    .line 1175
    .restart local v0    # "cloneProperties":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1176
    .end local v0    # "cloneProperties":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1179
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public logout()V
    .locals 2

    .line 1184
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->updateLoginId(Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    goto :goto_0

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public profileAppend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2033
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$33;

    invoke-direct {v1, p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$33;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2047
    return-void
.end method

.method public profileAppend(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2051
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$34;

    invoke-direct {v1, p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$34;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/util/Set;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2067
    return-void
.end method

.method public profileDelete()V
    .locals 2

    .line 2085
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$36;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$36;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2095
    return-void
.end method

.method public profileIncrement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 2019
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$32;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2029
    return-void
.end method

.method public profileIncrement(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 2005
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Number;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$31;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$31;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2015
    return-void
.end method

.method public profilePushId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pushTypeKey"    # Ljava/lang/String;
    .param p2, "pushId"    # Ljava/lang/String;

    .line 2213
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$39;

    invoke-direct {v0, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$39;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->transformTaskQueue(Ljava/lang/Runnable;)V

    .line 2232
    return-void
.end method

.method public profileSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1958
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$28;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1968
    return-void
.end method

.method public profileSet(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 1940
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1941
    .local v0, "cloneProperties":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$27;

    invoke-direct {v2, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$27;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    .end local v0    # "cloneProperties":Lorg/json/JSONObject;
    goto :goto_0

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1954
    .end local v0    # "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    :goto_0
    return-void
.end method

.method public profileSetOnce(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1991
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$30;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2001
    return-void
.end method

.method public profileSetOnce(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 1973
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1974
    .local v0, "cloneProperties":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$29;

    invoke-direct {v2, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$29;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1986
    .end local v0    # "cloneProperties":Lorg/json/JSONObject;
    goto :goto_0

    .line 1984
    :catch_0
    move-exception v0

    .line 1985
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1987
    .end local v0    # "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    :goto_0
    return-void
.end method

.method public profileUnset(Ljava/lang/String;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .line 2071
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$35;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$35;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2081
    return-void
.end method

.method public profileUnsetPushId(Ljava/lang/String;)V
    .locals 1
    .param p1, "pushTypeKey"    # Ljava/lang/String;

    .line 2236
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$40;

    invoke-direct {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$40;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->transformTaskQueue(Ljava/lang/Runnable;)V

    .line 2256
    return-void
.end method

.method public registerDynamicSuperProperties(Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;)V
    .locals 0
    .param p1, "dynamicSuperProperties"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;

    .line 1798
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mDynamicSuperPropertiesCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;

    .line 1799
    return-void
.end method

.method public registerSuperProperties(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "superProperties"    # Lorg/json/JSONObject;

    .line 1885
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1886
    .local v0, "cloneSuperProperties":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$24;

    invoke-direct {v2, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$24;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    .end local v0    # "cloneSuperProperties":Lorg/json/JSONObject;
    goto :goto_0

    .line 1902
    :catch_0
    move-exception v0

    .line 1903
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1905
    .end local v0    # "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    :goto_0
    return-void
.end method

.method public bridge synthetic removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V

    return-void
.end method

.method public bridge synthetic removeFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->removeFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V

    return-void
.end method

.method public bridge synthetic removeSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->removeSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V

    return-void
.end method

.method public removeTimer(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;

    .line 1476
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1489
    return-void
.end method

.method public resetAnonymousId()V
    .locals 2

    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$4;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$4;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    goto :goto_0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public resumeAutoTrackActivities(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 668
    .local p1, "activitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_1

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 678
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 679
    .local v1, "activity":Ljava/lang/Class;
    if-eqz v1, :cond_2

    .line 680
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 681
    .local v2, "hashCode":I
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v1    # "activity":Ljava/lang/Class;
    .end local v2    # "hashCode":I
    :cond_2
    goto :goto_0

    .line 688
    :cond_3
    goto :goto_1

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 689
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 669
    :cond_4
    :goto_2
    return-void
.end method

.method public resumeAutoTrackActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 713
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 714
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_1

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    .line 722
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 723
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v0    # "hashCode":I
    :cond_2
    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 729
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public resumeIgnoredAutoTrackFragment(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 780
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;->resumeIgnoredAutoTrackFragment(Ljava/lang/Class;)V

    .line 781
    return-void
.end method

.method public resumeIgnoredAutoTrackFragments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 775
    .local p1, "fragmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;->resumeIgnoredAutoTrackFragments(Ljava/util/List;)V

    .line 776
    return-void
.end method

.method public resumeTrackScreenOrientation()V
    .locals 1

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->enable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_0
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCookie(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "encode"    # Z

    .line 449
    if-eqz p2, :cond_0

    .line 450
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mCookie:Ljava/lang/String;

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    goto :goto_1

    .line 452
    :cond_0
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mCookie:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    goto :goto_2

    .line 454
    :goto_1
    nop

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public bridge synthetic setDebugMode(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->setDebugMode(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    return-void
.end method

.method public setDeepLinkCallback(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;)V
    .locals 0
    .param p1, "deepLinkCallback"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    .line 1808
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    .line 1809
    return-void
.end method

.method public setFlushBulkSize(I)V
    .locals 2
    .param p1, "flushBulkSize"    # I

    .line 323
    if-gez p1, :cond_0

    .line 324
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "The value of flushBulkSize is invalid"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setFlushBulkSize(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 327
    return-void
.end method

.method public setFlushInterval(I)V
    .locals 1
    .param p1, "flushInterval"    # I

    .line 313
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setFlushInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 314
    return-void
.end method

.method public setFlushNetworkPolicy(I)V
    .locals 1
    .param p1, "networkType"    # I

    .line 299
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setNetworkTypePolicy(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 300
    return-void
.end method

.method public setGPSLocation(DD)V
    .locals 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 353
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setGPSLocation(DDLjava/lang/String;)V

    .line 354
    return-void
.end method

.method public setGPSLocation(DDLjava/lang/String;)V
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "coordinate"    # Ljava/lang/String;

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v8, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$2;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;DDLjava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setMaxCacheSize(J)V
    .locals 1
    .param p1, "maxCacheSize"    # J

    .line 294
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setMaxCacheSize(J)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 295
    return-void
.end method

.method public bridge synthetic setRemoteManager(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->setRemoteManager(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;)V

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 2114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setServerUrl(Ljava/lang/String;Z)V

    .line 2115
    return-void
.end method

.method public setServerUrl(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "serverUrl"    # Ljava/lang/String;
    .param p2, "isRequestRemoteConfig"    # Z

    .line 2121
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 2123
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;->RandomTimeTypeWrite:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;

    invoke-virtual {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2126
    goto :goto_0

    .line 2124
    :catch_0
    move-exception v1

    .line 2125
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2171
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 2129
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOriginServerUrl:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_1

    .line 2131
    :try_start_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->requestVisualConfig()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2134
    goto :goto_1

    .line 2132
    :catch_2
    move-exception v1

    .line 2133
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 2137
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOriginServerUrl:Ljava/lang/String;

    .line 2138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2139
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mServerUrl:Ljava/lang/String;

    .line 2140
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "Server url is null or empty."

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    return-void

    .line 2144
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2145
    .local v1, "serverURI":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$37;

    invoke-direct {v3, p0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$37;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2156
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mDebugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-eq v2, v3, :cond_5

    .line 2157
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2158
    .local v2, "uriPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2159
    return-void

    .line 2162
    :cond_3
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2163
    .local v3, "pathPrefix":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 2164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/debug"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2166
    .local v0, "newPath":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mServerUrl:Ljava/lang/String;

    .line 2168
    .end local v0    # "newPath":Ljava/lang/String;
    .end local v2    # "uriPath":Ljava/lang/String;
    .end local v3    # "pathPrefix":I
    :cond_4
    goto :goto_2

    .line 2169
    :cond_5
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mServerUrl:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2173
    .end local v1    # "serverURI":Landroid/net/Uri;
    :goto_2
    goto :goto_4

    .line 2171
    :goto_3
    nop

    .line 2172
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 2174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public setSessionIntervalTime(I)V
    .locals 3
    .param p1, "sessionIntervalTime"    # I

    .line 336
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "The static method sharedInstance(context, serverURL, debugMode) should be called before calling sharedInstance()"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 341
    :cond_0
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_3

    const v0, 0x493e0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 345
    :cond_1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSessionTime:I

    if-eq p1, v0, :cond_2

    .line 346
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSessionTime:I

    .line 347
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitSessionIntervalTime(I)V

    .line 349
    :cond_2
    return-void

    .line 342
    :cond_3
    :goto_0
    const-string v0, "SA.SensorsDataAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionIntervalTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid, session interval time is between 10s and 300s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public setTrackEventCallBack(Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;)V
    .locals 0
    .param p1, "trackEventCallBack"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;

    .line 1803
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackEventCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;

    .line 1804
    return-void
.end method

.method public setViewActivity(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 900
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 903
    :cond_0
    :try_start_0
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_activity:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 907
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 901
    :cond_1
    :goto_1
    return-void
.end method

.method public setViewFragmentName(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fragmentName"    # Ljava/lang/String;

    .line 912
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 915
    :cond_0
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name2:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 919
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 913
    :cond_1
    :goto_1
    return-void
.end method

.method public setViewID(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/app/Dialog;
    .param p2, "viewID"    # Ljava/lang/String;

    .line 834
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 841
    :cond_0
    :goto_0
    nop

    .line 842
    :goto_1
    return-void
.end method

.method public setViewID(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewID"    # Ljava/lang/String;

    .line 826
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 829
    :cond_0
    return-void
.end method

.method public setViewID(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "alertDialog"    # Ljava/lang/Object;
    .param p2, "viewID"    # Ljava/lang/String;

    .line 847
    if-nez p1, :cond_0

    .line 848
    return-void

    .line 852
    :cond_0
    const/4 v0, 0x0

    .line 853
    .local v0, "supportAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 856
    .local v1, "androidXAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "android.support.v7.app.AlertDialog"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 859
    goto :goto_0

    .line 857
    :catch_0
    move-exception v2

    .line 862
    :goto_0
    :try_start_1
    const-string v2, "androidx.appcompat.app.AlertDialog"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 865
    goto :goto_1

    .line 863
    :catch_1
    move-exception v2

    .line 867
    :goto_1
    if-eqz v0, :cond_1

    .line 868
    move-object v2, v0

    .local v2, "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 870
    .end local v2    # "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object v2, v1

    .line 873
    .restart local v2    # "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-nez v2, :cond_2

    .line 874
    return-void

    .line 877
    :cond_2
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 878
    return-void

    .line 881
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 882
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getWindow"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 883
    .local v3, "getWindowMethod":Ljava/lang/reflect/Method;
    if-nez v3, :cond_4

    .line 884
    return-void

    .line 887
    :cond_4
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Window;

    .line 888
    .local v4, "window":Landroid/view/Window;
    if-eqz v4, :cond_5

    .line 889
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {v5, v6, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 894
    .end local v0    # "supportAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "androidXAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getWindowMethod":Ljava/lang/reflect/Method;
    .end local v4    # "window":Landroid/view/Window;
    :cond_5
    goto :goto_3

    .line 892
    :catch_2
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 895
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 937
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 941
    :cond_0
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 942
    return-void

    .line 938
    :cond_1
    :goto_0
    return-void
.end method

.method public showUpWebView(Landroid/webkit/WebView;Lorg/json/JSONObject;ZZ)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "properties"    # Lorg/json/JSONObject;
    .param p3, "isSupportJellyBean"    # Z
    .param p4, "enableVerify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 578
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    if-nez p3, :cond_0

    .line 579
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "For applications targeted to API level JELLY_BEAN or below, this feature NOT SUPPORTED"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void

    .line 583
    :cond_0
    if-eqz p1, :cond_1

    .line 584
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 585
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/AppWebViewInterface;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p4, p1}, Lcom/sensorsdata/analytics/android/sdk/AppWebViewInterface;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLandroid/view/View;)V

    const-string v1, "SensorsData_APP_JS_Bridge"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->addWebViewVisualInterface(Landroid/view/View;)V

    .line 588
    :cond_1
    return-void
.end method

.method public showUpWebView(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "isSupportJellyBean"    # Z

    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->showUpWebView(Landroid/webkit/WebView;ZLorg/json/JSONObject;)V

    .line 568
    return-void
.end method

.method public showUpWebView(Landroid/webkit/WebView;ZLorg/json/JSONObject;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "isSupportJellyBean"    # Z
    .param p3, "properties"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->showUpWebView(Landroid/webkit/WebView;Lorg/json/JSONObject;ZZ)V

    .line 594
    return-void
.end method

.method public showUpWebView(Landroid/webkit/WebView;ZZ)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "isSupportJellyBean"    # Z
    .param p3, "enableVerify"    # Z

    .line 572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->showUpWebView(Landroid/webkit/WebView;Lorg/json/JSONObject;ZZ)V

    .line 573
    return-void
.end method

.method public showUpX5WebView(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x5WebView"    # Ljava/lang/Object;

    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->showUpX5WebView(Ljava/lang/Object;Z)V

    .line 643
    return-void
.end method

.method public showUpX5WebView(Ljava/lang/Object;Lorg/json/JSONObject;ZZ)V
    .locals 7
    .param p1, "x5WebView"    # Ljava/lang/Object;
    .param p2, "properties"    # Lorg/json/JSONObject;
    .param p3, "isSupportJellyBean"    # Z
    .param p4, "enableVerify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    if-nez p3, :cond_0

    .line 601
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "For applications targeted to API level JELLY_BEAN or below, this feature NOT SUPPORTED"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void

    .line 605
    :cond_0
    if-nez p1, :cond_1

    .line 606
    return-void

    .line 609
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 610
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "addJavascriptInterface"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 611
    .local v1, "addJavascriptInterface":Ljava/lang/reflect/Method;
    if-nez v1, :cond_2

    .line 612
    return-void

    .line 614
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/AppWebViewInterface;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2, p4}, Lcom/sensorsdata/analytics/android/sdk/AppWebViewInterface;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    aput-object v3, v2, v5

    const-string v3, "SensorsData_APP_JS_Bridge"

    aput-object v3, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->addWebViewVisualInterface(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "addJavascriptInterface":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 619
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public showUpX5WebView(Ljava/lang/Object;Z)V
    .locals 9
    .param p1, "x5WebView"    # Ljava/lang/Object;
    .param p2, "enableVerify"    # Z

    .line 624
    if-nez p1, :cond_0

    .line 625
    return-void

    .line 628
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 629
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "addJavascriptInterface"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 630
    .local v1, "addJavascriptInterface":Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 631
    return-void

    .line 633
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/AppWebViewInterface;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v8, p1

    check-cast v8, Landroid/view/View;

    invoke-direct {v3, v4, v7, p2, v8}, Lcom/sensorsdata/analytics/android/sdk/AppWebViewInterface;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLandroid/view/View;)V

    aput-object v3, v2, v5

    const-string v3, "SensorsData_APP_JS_Bridge"

    aput-object v3, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->addWebViewVisualInterface(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "addJavascriptInterface":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startTrackThread()V
    .locals 2

    .line 1821
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1822
    :cond_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    .line 1823
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1824
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "Data collection thread has been started"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_1
    return-void
.end method

.method public stopTrackScreenOrientation()V
    .locals 1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->disable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopTrackThread()V
    .locals 2

    .line 1813
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManagerThread;->stop()V

    .line 1815
    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "Data collection thread has been stopped"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    :cond_0
    return-void
.end method

.method public track(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .line 1452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1453
    return-void
.end method

.method public track(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 1436
    :try_start_0
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1437
    .local v0, "cloneProperties":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getDynamicProperty()Lorg/json/JSONObject;

    move-result-object v1

    .line 1438
    .local v1, "dynamicProperty":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    .end local v0    # "cloneProperties":Lorg/json/JSONObject;
    .end local v1    # "dynamicProperty":Lorg/json/JSONObject;
    goto :goto_0

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1448
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public trackAppInstall()V
    .locals 2

    .line 1352
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAppInstall(Lorg/json/JSONObject;Z)V

    .line 1353
    return-void
.end method

.method public trackAppInstall(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 1347
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAppInstall(Lorg/json/JSONObject;Z)V

    .line 1348
    return-void
.end method

.method public trackAppInstall(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "properties"    # Lorg/json/JSONObject;
    .param p2, "disableCallback"    # Z

    .line 1342
    const-string v0, "$AppInstall"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 1343
    return-void
.end method

.method public bridge synthetic trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method trackChannelDebugInstallation()V
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$11;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$11;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1379
    return-void
.end method

.method public trackChannelEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .line 1383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackChannelEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1384
    return-void
.end method

.method public trackChannelEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 1388
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isAutoAddChannelCallbackEvent:Z

    if-eqz v0, :cond_0

    .line 1389
    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1390
    return-void

    .line 1392
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1393
    .local v0, "eventProperties":Lorg/json/JSONObject;
    if-eqz p2, :cond_1

    .line 1394
    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1396
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->addTimeProperty(Lorg/json/JSONObject;)V

    .line 1397
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$12;

    invoke-direct {v1, p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$12;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->transformTaskQueue(Ljava/lang/Runnable;)V

    .line 1431
    return-void
.end method

.method public trackDeepLinkLaunch(Ljava/lang/String;)V
    .locals 1
    .param p1, "deepLinkUrl"    # Ljava/lang/String;

    .line 2300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackDeepLinkLaunch(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    return-void
.end method

.method public trackDeepLinkLaunch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "deepLinkUrl"    # Ljava/lang/String;
    .param p2, "oaid"    # Ljava/lang/String;

    .line 2305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2306
    .local v0, "properties":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDeepLinkInstallSource()Z

    move-result v1

    .line 2308
    .local v1, "isDeepLinkInstallSource":Z
    :try_start_0
    const-string v2, "$deeplink_url"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2309
    const-string v2, "$time"

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2312
    goto :goto_0

    .line 2310
    :catch_0
    move-exception v2

    .line 2311
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 2313
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;

    invoke-direct {v3, p0, v1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;ZLorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->transformTaskQueue(Ljava/lang/Runnable;)V

    .line 2327
    return-void
.end method

.method public trackEventFromH5(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventInfo"    # Ljava/lang/String;

    .line 2203
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$38;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$38;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 2209
    return-void
.end method

.method public trackEventFromH5(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "eventInfo"    # Ljava/lang/String;
    .param p2, "enableVerify"    # Z

    .line 2179
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2180
    return-void

    .line 2183
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2184
    .local v0, "eventObject":Lorg/json/JSONObject;
    if-eqz p2, :cond_2

    .line 2185
    const-string v1, "server_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2186
    .local v1, "serverUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2187
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;

    invoke-direct {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mServerUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->check(Lcom/sensorsdata/analytics/android/sdk/ServerUrl;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2188
    return-void

    .line 2192
    :cond_1
    return-void

    .line 2195
    .end local v1    # "serverUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackEventFromH5(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2198
    .end local v0    # "eventObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 2196
    :catch_0
    move-exception v0

    .line 2197
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 2199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public trackFragmentAppViewScreen()V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mFragmentAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;->trackFragmentAppViewScreen()V

    .line 558
    return-void
.end method

.method public trackInstallation(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;

    .line 1337
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 1338
    return-void
.end method

.method public trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 1332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 1333
    return-void
.end method

.method public trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 8
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;
    .param p3, "disableCallback"    # Z

    .line 1242
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1243
    .local v0, "eventProperties":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    .line 1244
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1246
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->addTimeProperty(Lorg/json/JSONObject;)V

    .line 1247
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getLoginId()Ljava/lang/String;

    move-result-object v6

    .line 1248
    .local v6, "loginId":Ljava/lang/String;
    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$10;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->transformTaskQueue(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    .end local v0    # "eventProperties":Lorg/json/JSONObject;
    .end local v6    # "loginId":Ljava/lang/String;
    goto :goto_0

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1328
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public bridge synthetic trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic trackInternal(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V

    return-void
.end method

.method public trackTimer(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)V
    .locals 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1459
    .local v6, "startTime":J
    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$14;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$14;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;J)V

    invoke-virtual {v8, v9}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1472
    return-void
.end method

.method public trackTimerEnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .line 1545
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerEnd(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1546
    return-void
.end method

.method public trackTimerEnd(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 1516
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1518
    .local v3, "endTime":J
    :try_start_0
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1519
    .local v5, "cloneProperties":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    .end local v5    # "cloneProperties":Lorg/json/JSONObject;
    goto :goto_0

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1541
    .end local v0    # "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    :goto_0
    return-void
.end method

.method public trackTimerPause(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .line 1506
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerState(Ljava/lang/String;Z)V

    .line 1507
    return-void
.end method

.method public trackTimerResume(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .line 1511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerState(Ljava/lang/String;Z)V

    .line 1512
    return-void
.end method

.method public trackTimerStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "eventName"    # Ljava/lang/String;

    .line 1494
    :try_start_0
    const-string v0, "%s_%s_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "SATimer"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1495
    .local v0, "eventNameRegex":Ljava/lang/String;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimer(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)V

    .line 1496
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimer(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    return-object v0

    .line 1498
    .end local v0    # "eventNameRegex":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1499
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1501
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public trackViewAppClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1743
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackViewAppClick(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 1744
    return-void
.end method

.method public trackViewAppClick(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 1748
    if-nez p1, :cond_0

    .line 1749
    return-void

    .line 1752
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1753
    .local v0, "cloneProperties":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 1754
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1756
    :cond_1
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->injectClickInfo(Landroid/view/View;Lorg/json/JSONObject;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1757
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1758
    .local v1, "activity":Landroid/app/Activity;
    const-string v2, "$AppClick"

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_0
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    .end local v0    # "cloneProperties":Lorg/json/JSONObject;
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_2
    goto :goto_0

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1763
    .end local v0    # "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    :goto_0
    return-void
.end method

.method public trackViewScreen(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1634
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$19;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$19;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1648
    return-void
.end method

.method public trackViewScreen(Ljava/lang/Object;)V
    .locals 5
    .param p1, "fragment"    # Ljava/lang/Object;

    .line 1652
    if-nez p1, :cond_0

    .line 1653
    return-void

    .line 1656
    :cond_0
    const/4 v0, 0x0

    .line 1657
    .local v0, "supportFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1658
    .local v1, "appFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 1662
    .local v2, "androidXFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "android.support.v4.app.Fragment"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1665
    goto :goto_0

    .line 1663
    :catch_0
    move-exception v3

    .line 1668
    :goto_0
    :try_start_1
    const-string v3, "android.app.Fragment"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 1671
    goto :goto_1

    .line 1669
    :catch_1
    move-exception v3

    .line 1674
    :goto_1
    :try_start_2
    const-string v3, "androidx.fragment.app.Fragment"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 1677
    goto :goto_2

    .line 1675
    :catch_2
    move-exception v3

    .line 1680
    :goto_2
    nop

    .line 1682
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    .line 1683
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    .line 1684
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 1688
    :cond_3
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;

    invoke-direct {v4, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1739
    return-void

    .line 1685
    :cond_4
    :goto_3
    return-void
.end method

.method public trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1590
    :try_start_0
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1591
    .local v0, "cloneProperties":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;

    invoke-direct {v2, p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    .end local v0    # "cloneProperties":Lorg/json/JSONObject;
    goto :goto_0

    .line 1627
    :catch_0
    move-exception v0

    .line 1628
    .local v0, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1630
    .end local v0    # "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    :goto_0
    return-void
.end method

.method public bridge synthetic transformTaskQueue(Ljava/lang/Runnable;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->transformTaskQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unbind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1222
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$9;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public unregisterSuperProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "superPropertyName"    # Ljava/lang/String;

    .line 1909
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$25;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$25;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    .line 1923
    return-void
.end method
