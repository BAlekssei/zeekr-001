.class public Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;
.super Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
.source "SensorsDataAPIEmptyImplementation.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public addHeatMapActivities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 316
    .local p1, "activitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    return-void
.end method

.method public addHeatMapActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 311
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public addSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    .line 748
    return-void
.end method

.method public addVisualizedAutoTrackActivities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 710
    .local p1, "activitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    return-void
.end method

.method public addVisualizedAutoTrackActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 705
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public appBecomeActive()V
    .locals 0

    .line 645
    return-void
.end method

.method public appEnterBackground()V
    .locals 0

    .line 640
    return-void
.end method

.method public clearGPSLocation()V
    .locals 0

    .line 660
    return-void
.end method

.method public clearLastScreenUrl()V
    .locals 0

    .line 460
    return-void
.end method

.method public clearReferrerWhenAppEnd()V
    .locals 0

    .line 455
    return-void
.end method

.method public clearSuperProperties()V
    .locals 0

    .line 545
    return-void
.end method

.method public clearTrackTimer()V
    .locals 0

    .line 445
    return-void
.end method

.method public deleteAll()V
    .locals 0

    .line 525
    return-void
.end method

.method public disableAutoTrack(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)V
    .locals 0
    .param p1, "autoTrackEventType"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    .line 163
    return-void
.end method

.method public disableAutoTrack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "eventTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;>;"
    return-void
.end method

.method enableAutoTrack(I)V
    .locals 0
    .param p1, "autoTrackEventType"    # I

    .line 635
    return-void
.end method

.method public enableAutoTrack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p1, "eventTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;>;"
    return-void
.end method

.method public enableAutoTrackFragment(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 49
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public enableAutoTrackFragments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 53
    .local p1, "fragmentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    return-void
.end method

.method public enableDataCollect()V
    .locals 0

    .line 743
    return-void
.end method

.method public enableDeepLinkInstallSource(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 772
    return-void
.end method

.method public enableLog(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 98
    return-void
.end method

.method public enableNetworkRequest(Z)V
    .locals 0
    .param p1, "isRequest"    # Z

    .line 728
    return-void
.end method

.method public enableTrackScreenOrientation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 665
    return-void
.end method

.method public flush()V
    .locals 0

    .line 495
    return-void
.end method

.method public flushScheduled()V
    .locals 0

    .line 505
    return-void
.end method

.method public flushSync()V
    .locals 0

    .line 500
    return-void
.end method

.method public getAnonymousId()Ljava/lang/String;
    .locals 1

    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCookie(Z)Ljava/lang/String;
    .locals 1
    .param p1, "decode"    # Z

    .line 684
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlushBulkSize()I
    .locals 1

    .line 133
    const/16 v0, 0x64

    return v0
.end method

.method public getFlushInterval()I
    .locals 1

    .line 123
    const/16 v0, 0x3a98

    return v0
.end method

.method getFlushNetworkPolicy()I
    .locals 1

    .line 752
    const/4 v0, 0x0

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

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLastScreenTrackProperties()Lorg/json/JSONObject;
    .locals 1

    .line 464
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getLastScreenUrl()Ljava/lang/String;
    .locals 1

    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxCacheSize()J
    .locals 2

    .line 108
    const-wide/32 v0, 0x2000000

    return-wide v0
.end method

.method public getPresetProperties()Lorg/json/JSONObject;
    .locals 1

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public getScreenOrientation()Ljava/lang/String;
    .locals 1

    .line 757
    const-string v0, ""

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionIntervalTime()I
    .locals 1

    .line 143
    const/16 v0, 0x7530

    return v0
.end method

.method public getSuperProperties()Lorg/json/JSONObject;
    .locals 1

    .line 529
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public identify(Ljava/lang/String;)V
    .locals 0
    .param p1, "distinctId"    # Ljava/lang/String;

    .line 346
    return-void
.end method

.method public ignoreAutoTrackActivities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 221
    .local p1, "activitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    return-void
.end method

.method public ignoreAutoTrackActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 231
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public ignoreAutoTrackFragment(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 63
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public ignoreAutoTrackFragments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 58
    .local p1, "fragmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    return-void
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 281
    return-void
.end method

.method public ignoreView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ignore"    # Z

    .line 286
    return-void
.end method

.method public ignoreViewType(Ljava/lang/Class;)V
    .locals 0
    .param p1, "viewType"    # Ljava/lang/Class;

    .line 301
    return-void
.end method

.method public isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 245
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isActivityAutoTrackAppViewScreenIgnored(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 240
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoTrackEnabled()Z
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoTrackEventTypeIgnored(I)Z
    .locals 1
    .param p1, "autoTrackEventType"    # I

    .line 624
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z
    .locals 1
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .line 102
    const/4 v0, 0x0

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

    .line 77
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isHeatMapActivity(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 305
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isHeatMapEnabled()Z
    .locals 1

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRequestEnable()Z
    .locals 1

    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public isTrackFragmentAppViewScreenEnabled()Z
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isVisualizedAutoTrackActivity(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 699
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isVisualizedAutoTrackEnabled()Z
    .locals 1

    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public itemDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;

    .line 723
    return-void
.end method

.method public itemSet(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "properties"    # Lorg/json/JSONObject;

    .line 719
    return-void
.end method

.method public login(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginId"    # Ljava/lang/String;

    .line 351
    return-void
.end method

.method public login(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 356
    return-void
.end method

.method public logout()V
    .locals 0

    .line 361
    return-void
.end method

.method public profileAppend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 580
    return-void
.end method

.method public profileAppend(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
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

    .line 585
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public profileDelete()V
    .locals 0

    .line 595
    return-void
.end method

.method public profileIncrement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 575
    return-void
.end method

.method public profileIncrement(Ljava/util/Map;)V
    .locals 0
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

    .line 570
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Number;>;"
    return-void
.end method

.method public profilePushId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pushTypeKey"    # Ljava/lang/String;
    .param p2, "pushId"    # Ljava/lang/String;

    .line 690
    return-void
.end method

.method public profileSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 555
    return-void
.end method

.method public profileSet(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 550
    return-void
.end method

.method public profileSetOnce(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 565
    return-void
.end method

.method public profileSetOnce(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 560
    return-void
.end method

.method public profileUnset(Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;

    .line 590
    return-void
.end method

.method public profileUnsetPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushTypeKey"    # Ljava/lang/String;

    .line 695
    return-void
.end method

.method public registerDynamicSuperProperties(Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;)V
    .locals 0
    .param p1, "dynamicSuperProperties"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;

    .line 510
    return-void
.end method

.method public registerSuperProperties(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "superProperties"    # Lorg/json/JSONObject;

    .line 535
    return-void
.end method

.method public removeTimer(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 425
    return-void
.end method

.method public resetAnonymousId()V
    .locals 0

    .line 336
    return-void
.end method

.method public resumeAutoTrackActivities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 226
    .local p1, "activitiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    return-void
.end method

.method public resumeAutoTrackActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 236
    .local p1, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public resumeIgnoredAutoTrackFragment(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 73
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public resumeIgnoredAutoTrackFragments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 68
    .local p1, "fragmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    return-void
.end method

.method public resumeTrackScreenOrientation()V
    .locals 0

    .line 670
    return-void
.end method

.method public setCookie(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;
    .param p2, "encode"    # Z

    .line 680
    return-void
.end method

.method public setDebugMode(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V
    .locals 0
    .param p1, "debugMode"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 630
    return-void
.end method

.method public setDeepLinkCallback(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;)V
    .locals 0
    .param p1, "deepLinkCallback"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    .line 520
    return-void
.end method

.method public setFlushBulkSize(I)V
    .locals 0
    .param p1, "flushBulkSize"    # I

    .line 139
    return-void
.end method

.method public setFlushInterval(I)V
    .locals 0
    .param p1, "flushInterval"    # I

    .line 129
    return-void
.end method

.method public setFlushNetworkPolicy(I)V
    .locals 0
    .param p1, "networkType"    # I

    .line 119
    return-void
.end method

.method public setGPSLocation(DD)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 650
    return-void
.end method

.method public setGPSLocation(DDLjava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "coordinate"    # Ljava/lang/String;

    .line 655
    return-void
.end method

.method public setMaxCacheSize(J)V
    .locals 0
    .param p1, "maxCacheSize"    # J

    .line 114
    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setServerUrl(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "serverUrl"    # Ljava/lang/String;
    .param p2, "isRequestRemoteConfig"    # Z

    .line 93
    return-void
.end method

.method public setSessionIntervalTime(I)V
    .locals 0
    .param p1, "sessionIntervalTime"    # I

    .line 148
    return-void
.end method

.method public setTrackEventCallBack(Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;)V
    .locals 0
    .param p1, "trackEventCallBack"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;

    .line 515
    return-void
.end method

.method public setViewActivity(Landroid/view/View;Landroid/app/Activity;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 271
    return-void
.end method

.method public setViewFragmentName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fragmentName"    # Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setViewID(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/app/Dialog;
    .param p2, "viewID"    # Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setViewID(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewID"    # Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setViewID(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "viewID"    # Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 291
    return-void
.end method

.method public showUpWebView(Landroid/webkit/WebView;Lorg/json/JSONObject;ZZ)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "properties"    # Lorg/json/JSONObject;
    .param p3, "isSupportJellyBean"    # Z
    .param p4, "enableVerify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    return-void
.end method

.method public showUpWebView(Landroid/webkit/WebView;Z)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "isSupportJellyBean"    # Z

    .line 183
    return-void
.end method

.method public showUpWebView(Landroid/webkit/WebView;ZLorg/json/JSONObject;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "isSupportJellyBean"    # Z
    .param p3, "properties"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    return-void
.end method

.method public showUpWebView(Landroid/webkit/WebView;ZZ)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "isSupportJellyBean"    # Z
    .param p3, "enableVerify"    # Z

    .line 188
    return-void
.end method

.method public showUpX5WebView(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x5WebView"    # Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public showUpX5WebView(Ljava/lang/Object;Lorg/json/JSONObject;ZZ)V
    .locals 0
    .param p1, "x5WebView"    # Ljava/lang/Object;
    .param p2, "properties"    # Lorg/json/JSONObject;
    .param p3, "isSupportJellyBean"    # Z
    .param p4, "enableVerify"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    return-void
.end method

.method public showUpX5WebView(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "x5WebView"    # Ljava/lang/Object;
    .param p2, "enableVerify"    # Z

    .line 211
    return-void
.end method

.method public startTrackThread()V
    .locals 0

    .line 733
    return-void
.end method

.method public stopTrackScreenOrientation()V
    .locals 0

    .line 675
    return-void
.end method

.method public stopTrackThread()V
    .locals 0

    .line 738
    return-void
.end method

.method public track(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 411
    return-void
.end method

.method public track(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 406
    return-void
.end method

.method public trackAppInstall()V
    .locals 0

    .line 391
    return-void
.end method

.method public trackAppInstall(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 386
    return-void
.end method

.method public trackAppInstall(Lorg/json/JSONObject;Z)V
    .locals 0
    .param p1, "properties"    # Lorg/json/JSONObject;
    .param p2, "disableCallback"    # Z

    .line 381
    return-void
.end method

.method trackChannelDebugInstallation()V
    .locals 0

    .line 762
    return-void
.end method

.method public trackChannelEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 396
    return-void
.end method

.method public trackChannelEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 401
    return-void
.end method

.method public trackDeepLinkLaunch(Ljava/lang/String;)V
    .locals 0
    .param p1, "deepLinkUrl"    # Ljava/lang/String;

    .line 777
    return-void
.end method

.method public trackDeepLinkLaunch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deepLinkUrl"    # Ljava/lang/String;
    .param p2, "oaid"    # Ljava/lang/String;

    .line 782
    return-void
.end method

.method protected trackEvent(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "properties"    # Lorg/json/JSONObject;
    .param p4, "originalDistinctId"    # Ljava/lang/String;

    .line 610
    return-void
.end method

.method public trackEventFromH5(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventInfo"    # Ljava/lang/String;

    .line 605
    return-void
.end method

.method public trackEventFromH5(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "eventInfo"    # Ljava/lang/String;
    .param p2, "enableVerify"    # Z

    .line 600
    return-void
.end method

.method public trackFragmentAppViewScreen()V
    .locals 0

    .line 173
    return-void
.end method

.method public trackInstallation(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 376
    return-void
.end method

.method public trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 371
    return-void
.end method

.method public trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;
    .param p3, "disableCallback"    # Z

    .line 366
    return-void
.end method

.method public trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 415
    return-void
.end method

.method public trackTimer(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    return-void
.end method

.method public trackTimerEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 440
    return-void
.end method

.method public trackTimerEnd(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 435
    return-void
.end method

.method public trackTimerPause(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 615
    return-void
.end method

.method public trackTimerResume(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 620
    return-void
.end method

.method public trackTimerStart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .line 429
    const-string v0, ""

    return-object v0
.end method

.method public trackViewAppClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 485
    return-void
.end method

.method public trackViewAppClick(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 490
    return-void
.end method

.method public trackViewScreen(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 475
    return-void
.end method

.method public trackViewScreen(Ljava/lang/Object;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/Object;

    .line 480
    return-void
.end method

.method public trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 470
    return-void
.end method

.method public unregisterSuperProperty(Ljava/lang/String;)V
    .locals 0
    .param p1, "superPropertyName"    # Ljava/lang/String;

    .line 540
    return-void
.end method
