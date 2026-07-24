.class public Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;
.super Ljava/lang/Object;
.source "SensorsDataAutoTrackHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorsDataAutoTrackHelper"

.field private static eventTimestamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->eventTimestamp:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 67
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->isDeBounceTrack(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .line 1471
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1473
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "getSettings"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1474
    .local v3, "getSettingsMethod":Ljava/lang/reflect/Method;
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1475
    .local v4, "settings":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 1476
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setJavaScriptEnabled"

    new-array v7, v1, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1477
    .local v5, "setJavaScriptEnabledMethod":Ljava/lang/reflect/Method;
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1481
    .end local v3    # "getSettingsMethod":Ljava/lang/reflect/Method;
    .end local v4    # "settings":Ljava/lang/Object;
    .end local v5    # "setJavaScriptEnabledMethod":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 1479
    :catch_0
    move-exception v3

    .line 1482
    :goto_0
    :try_start_2
    const-string v3, "addJavascriptInterface"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1483
    .local v3, "addJSMethod":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1486
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "addJSMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 1484
    :catch_1
    move-exception v0

    .line 1485
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1487
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static addWebViewVisualInterface(Landroid/view/View;)V
    .locals 2
    .param p0, "webView"    # Landroid/view/View;

    .line 1448
    if-eqz p0, :cond_0

    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_webview_visual:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1449
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_webview_visual:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1450
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebViewVisualInterface;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/WebViewVisualInterface;-><init>(Landroid/view/View;)V

    const-string v1, "SensorsData_App_Visual_Bridge"

    invoke-static {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1452
    :cond_0
    return-void
.end method

.method private static invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "paramTypes"    # [Ljava/lang/Class;

    .line 1434
    if-nez p0, :cond_0

    .line 1435
    const-string v0, "SensorsDataAutoTrackHelper"

    const-string v1, "WebView has not initialized."

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    return-void

    .line 1439
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1440
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1441
    .local v1, "loadMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "loadMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1445
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static isDeBounceTrack(Ljava/lang/Object;)Z
    .locals 9
    .param p0, "object"    # Ljava/lang/Object;

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 73
    .local v0, "currentOnClickTimestamp":J
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->eventTimestamp:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "targetObject":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 75
    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 76
    .local v3, "lastOnClickTimestamp":J
    sub-long v5, v0, v3

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 77
    const/4 v5, 0x1

    return v5

    .line 80
    .end local v3    # "lastOnClickTimestamp":J
    :cond_0
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->eventTimestamp:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v3, 0x0

    return v3
.end method

.method private static isSupportJellyBean()Z
    .locals 2

    .line 1455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isWebViewSupportJellyBean:Z

    if-nez v0, :cond_0

    .line 1456
    const-string v0, "SensorsDataAutoTrackHelper"

    const-string v1, "For applications targeted to API level JELLY_BEAN or below, this feature NOT SUPPORTED"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    const/4 v0, 0x0

    return v0

    .line 1459
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static loadData(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .line 1381
    invoke-static {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->loadData2(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v0, "loadData"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v5, 0x2

    aput-object p3, v2, v5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v5

    invoke-static {p0, v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1383
    return-void
.end method

.method public static loadData2(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .line 1386
    if-nez p0, :cond_0

    .line 1387
    const-string v0, "SensorsDataAutoTrackHelper"

    const-string v1, "WebView has not initialized."

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    return-void

    .line 1390
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->setupH5Bridge(Landroid/view/View;)V

    .line 1391
    return-void
.end method

.method public static loadDataWithBaseURL(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .line 1394
    invoke-static/range {p0 .. p5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->loadDataWithBaseURL2(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const-string v0, "loadDataWithBaseURL"

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v5, 0x2

    aput-object p3, v2, v5

    const/4 v6, 0x3

    aput-object p4, v2, v6

    const/4 v7, 0x4

    aput-object p5, v2, v7

    new-array v1, v1, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v1, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v6

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v7

    invoke-static {p0, v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1397
    return-void
.end method

.method public static loadDataWithBaseURL2(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .line 1400
    if-nez p0, :cond_0

    .line 1401
    const-string v0, "SensorsDataAutoTrackHelper"

    const-string v1, "WebView has not initialized."

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    return-void

    .line 1404
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->setupH5Bridge(Landroid/view/View;)V

    .line 1405
    return-void
.end method

.method public static loadUrl(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;

    .line 1355
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->loadUrl2(Landroid/view/View;Ljava/lang/String;)V

    .line 1356
    const-string v0, "loadUrl"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {p0, v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1357
    return-void
.end method

.method public static loadUrl(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1368
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->loadUrl2(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V

    .line 1369
    const-string v0, "loadUrl"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v3

    const-class v3, Ljava/util/Map;

    aput-object v3, v1, v4

    invoke-static {p0, v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1370
    return-void
.end method

.method public static loadUrl2(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;

    .line 1360
    if-nez p0, :cond_0

    .line 1361
    const-string v0, "SensorsDataAutoTrackHelper"

    const-string v1, "WebView has not initialized."

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    return-void

    .line 1364
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->setupH5Bridge(Landroid/view/View;)V

    .line 1365
    return-void
.end method

.method public static loadUrl2(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1373
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1374
    const-string v0, "SensorsDataAutoTrackHelper"

    const-string v1, "WebView has not initialized."

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    return-void

    .line 1377
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->setupH5Bridge(Landroid/view/View;)V

    .line 1378
    return-void
.end method

.method public static postUrl(Landroid/view/View;Ljava/lang/String;[B)V
    .locals 6
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .line 1408
    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->postUrl2(Landroid/view/View;Ljava/lang/String;[B)V

    .line 1409
    const-string v0, "postUrl"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v3

    const-class v3, [B

    aput-object v3, v1, v4

    invoke-static {p0, v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 1411
    return-void
.end method

.method public static postUrl2(Landroid/view/View;Ljava/lang/String;[B)V
    .locals 2
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .line 1414
    if-nez p0, :cond_0

    .line 1415
    const-string v0, "SensorsDataAutoTrackHelper"

    const-string v1, "WebView has not initialized."

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    return-void

    .line 1418
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->setupH5Bridge(Landroid/view/View;)V

    .line 1419
    return-void
.end method

.method private static setupH5Bridge(Landroid/view/View;)V
    .locals 1
    .param p0, "webView"    # Landroid/view/View;

    .line 1422
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    instance-of v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-eqz v0, :cond_0

    .line 1423
    return-void

    .line 1425
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->isSupportJellyBean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isAutoTrackWebView:Z

    if-eqz v0, :cond_1

    .line 1426
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->setupWebView(Landroid/view/View;)V

    .line 1428
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->isSupportJellyBean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1429
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->addWebViewVisualInterface(Landroid/view/View;)V

    .line 1431
    :cond_2
    return-void
.end method

.method private static setupWebView(Landroid/view/View;)V
    .locals 4
    .param p0, "webView"    # Landroid/view/View;

    .line 1463
    if-eqz p0, :cond_0

    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_webview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1464
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_webview:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1465
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/AppWebViewInterface;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sensorsdata/analytics/android/sdk/AppWebViewInterface;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLandroid/view/View;)V

    const-string v1, "SensorsData_APP_New_H5_Bridge"

    invoke-static {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->addJavascriptInterface(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1467
    :cond_0
    return-void
.end method

.method public static showChannelDebugActiveDialog(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .line 1339
    const-string v1, "\u6210\u529f\u5f00\u542f\u8c03\u8bd5\u6a21\u5f0f"

    const-string v2, "\u6b64\u6a21\u5f0f\u4e0b\u4e0d\u9700\u8981\u5378\u8f7d App\uff0c\u70b9\u51fb\u201c\u6fc0\u6d3b\u201d\u6309\u94ae\u53ef\u53cd\u590d\u89e6\u53d1\u6fc0\u6d3b"

    const-string v3, "\u6fc0\u6d3b"

    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$3;

    invoke-direct {v4, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$3;-><init>(Landroid/app/Activity;)V

    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$4;

    invoke-direct {v6, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$4;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1352
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "properties"    # Ljava/lang/String;

    .line 1321
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    return-void

    .line 1324
    :cond_0
    const/4 v0, 0x0

    .line 1325
    .local v0, "pro":Lorg/json/JSONObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    .line 1327
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 1330
    goto :goto_0

    .line 1328
    :catch_0
    move-exception v1

    .line 1329
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1332
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1335
    .end local v0    # "pro":Lorg/json/JSONObject;
    goto :goto_1

    .line 1333
    :catch_1
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1336
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static trackDialog(Landroid/content/DialogInterface;I)V
    .locals 17
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    move-object/from16 v1, p0

    .line 918
    move/from16 v2, p1

    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    return-void

    .line 923
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    return-void

    .line 928
    :cond_1
    const/4 v0, 0x0

    .line 929
    .local v0, "dialog":Landroid/app/Dialog;
    instance-of v3, v1, Landroid/app/Dialog;

    if-eqz v3, :cond_2

    .line 930
    move-object v3, v1

    check-cast v3, Landroid/app/Dialog;

    move-object v0, v3

    goto :goto_0

    .line 933
    :cond_2
    move-object v3, v0

    .end local v0    # "dialog":Landroid/app/Dialog;
    .local v3, "dialog":Landroid/app/Dialog;
    :goto_0
    if-nez v3, :cond_3

    .line 934
    return-void

    .line 937
    :cond_3
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->isDeBounceTrack(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 938
    return-void

    .line 941
    :cond_4
    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, v0

    .line 944
    .local v4, "context":Landroid/content/Context;
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 946
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_5

    .line 947
    invoke-virtual {v3}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 951
    :cond_5
    move-object v6, v0

    .end local v0    # "activity":Landroid/app/Activity;
    .local v6, "activity":Landroid/app/Activity;
    :goto_1
    if-eqz v6, :cond_6

    .line 952
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 953
    return-void

    .line 958
    :cond_6
    const-class v0, Landroid/app/Dialog;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 959
    return-void

    .line 962
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v7, v0

    .line 965
    .local v7, "properties":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 966
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 967
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    sget v9, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {v8, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 968
    .local v8, "idString":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 969
    const-string v9, "$element_id"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 974
    .end local v0    # "window":Landroid/view/Window;
    .end local v8    # "idString":Ljava/lang/String;
    :cond_8
    goto :goto_2

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 977
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v6, :cond_9

    .line 978
    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 982
    :cond_9
    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->mergeRnScreenNameAndTitle(Lorg/json/JSONObject;)V

    .line 984
    const-string v0, "$element_type"

    const-string v8, "Dialog"

    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 986
    const/4 v8, 0x0

    .line 987
    .local v8, "supportAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v5

    .line 990
    .local v9, "androidXAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    const-string v0, "android.support.v7.app.AlertDialog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v8, v0

    .line 993
    goto :goto_3

    .line 991
    :catch_1
    move-exception v0

    .line 996
    :goto_3
    :try_start_4
    const-string v0, "androidx.appcompat.app.AlertDialog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v9, v0

    .line 999
    goto :goto_4

    .line 997
    :catch_2
    move-exception v0

    .line 1001
    :goto_4
    if-nez v8, :cond_a

    if-nez v9, :cond_a

    .line 1002
    return-void

    .line 1005
    :cond_a
    if-eqz v8, :cond_b

    .line 1006
    move-object v0, v8

    .local v0, "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_5

    .line 1008
    .end local v0    # "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    move-object v0, v9

    .restart local v0    # "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    move-object v10, v0

    .line 1011
    .end local v0    # "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    .line 1012
    .local v11, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :try_start_5
    instance-of v0, v3, Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 1013
    move-object v0, v3

    check-cast v0, Landroid/app/AlertDialog;

    .line 1014
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 1015
    .local v5, "button":Landroid/widget/Button;
    if-eqz v5, :cond_d

    .line 1016
    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1017
    const-string v12, "$element_content"

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1019
    :cond_c
    invoke-static {v6, v5, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v12

    move-object v11, v12

    goto :goto_6

    .line 1021
    :cond_d
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v12

    .line 1022
    .local v12, "listView":Landroid/widget/ListView;
    if-eqz v12, :cond_f

    .line 1023
    invoke-virtual {v12}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    .line 1024
    .local v13, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v13, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    .line 1025
    .local v14, "object":Ljava/lang/Object;
    if-eqz v14, :cond_e

    .line 1026
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_e

    .line 1027
    const-string v15, "$element_content"

    invoke-virtual {v7, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    :cond_e
    invoke-virtual {v12, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1031
    .local v15, "clickView":Landroid/view/View;
    if-eqz v15, :cond_f

    .line 1032
    invoke-static {v6, v15, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v16

    move-object/from16 v11, v16

    .line 1037
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v5    # "button":Landroid/widget/Button;
    .end local v12    # "listView":Landroid/widget/ListView;
    .end local v13    # "listAdapter":Landroid/widget/ListAdapter;
    .end local v14    # "object":Ljava/lang/Object;
    .end local v15    # "clickView":Landroid/view/View;
    :cond_f
    :goto_6
    goto/16 :goto_8

    :cond_10
    invoke-virtual {v10, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v0, :cond_16

    .line 1038
    nop

    .line 1040
    .restart local v5    # "button":Landroid/widget/Button;
    const/4 v12, 0x0

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v13, "getButton"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v12

    invoke-virtual {v0, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1041
    .local v0, "getButtonMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_11

    .line 1042
    new-array v13, v14, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v12

    invoke-virtual {v0, v3, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v13

    .line 1046
    .end local v5    # "button":Landroid/widget/Button;
    .local v0, "button":Landroid/widget/Button;
    move-object v5, v0

    .end local v0    # "button":Landroid/widget/Button;
    .restart local v5    # "button":Landroid/widget/Button;
    :cond_11
    goto :goto_7

    .line 1044
    :catch_3
    move-exception v0

    .line 1048
    :goto_7
    if-eqz v5, :cond_13

    .line 1049
    :try_start_7
    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1050
    const-string v0, "$element_content"

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    :cond_12
    invoke-static {v6, v5, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object v11, v0

    goto :goto_8

    .line 1055
    :cond_13
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v13, "getListView"

    new-array v14, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1056
    .local v0, "getListViewMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_15

    .line 1057
    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 1058
    .restart local v12    # "listView":Landroid/widget/ListView;
    if-eqz v12, :cond_15

    .line 1059
    invoke-virtual {v12}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    .line 1060
    .restart local v13    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v13, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    .line 1061
    .restart local v14    # "object":Ljava/lang/Object;
    if-eqz v14, :cond_14

    .line 1062
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_14

    .line 1063
    const-string v15, "$element_content"

    invoke-virtual {v7, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    :cond_14
    invoke-virtual {v12, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1067
    .restart local v15    # "clickView":Landroid/view/View;
    if-eqz v15, :cond_15

    .line 1068
    invoke-static {v6, v15, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v16
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v11, v16

    .line 1074
    .end local v0    # "getListViewMethod":Ljava/lang/reflect/Method;
    .end local v12    # "listView":Landroid/widget/ListView;
    .end local v13    # "listAdapter":Landroid/widget/ListAdapter;
    .end local v14    # "object":Ljava/lang/Object;
    .end local v15    # "clickView":Landroid/view/View;
    :cond_15
    goto :goto_8

    .line 1072
    :catch_4
    move-exception v0

    .line 1078
    .end local v5    # "button":Landroid/widget/Button;
    :cond_16
    :goto_8
    :try_start_9
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    const-string v5, "$AppClick"

    invoke-virtual {v0, v5, v7, v11}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1081
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v7    # "properties":Lorg/json/JSONObject;
    .end local v8    # "supportAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "androidXAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "currentAlertDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    goto :goto_9

    .line 1079
    :catch_5
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1082
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method

.method public static trackDrawerClosed(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 1238
    if-nez p0, :cond_0

    .line 1239
    return-void

    .line 1241
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1242
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "$element_content"

    const-string v2, "Close"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1244
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 1246
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1250
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static trackDrawerOpened(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 1222
    if-nez p0, :cond_0

    .line 1223
    return-void

    .line 1225
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1226
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "$element_content"

    const-string v2, "Open"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1228
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 1230
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static trackExpandableListViewOnChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;II)V
    .locals 11
    .param p0, "expandableListView"    # Landroid/widget/ExpandableListView;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .line 215
    if-eqz p0, :cond_12

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 220
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    return-void

    .line 225
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    return-void

    .line 230
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 231
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_3

    .line 232
    return-void

    .line 236
    :cond_3
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 239
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_4

    .line 240
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    return-void

    .line 246
    :cond_4
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .line 249
    .local v2, "fragment":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 250
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 251
    return-void

    .line 256
    :cond_5
    const-class v3, Landroid/widget/ExpandableListView;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 257
    return-void

    .line 261
    :cond_6
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 262
    return-void

    .line 266
    :cond_7
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 267
    return-void

    .line 271
    :cond_8
    sget v3, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 273
    .local v3, "properties":Lorg/json/JSONObject;
    if-nez v3, :cond_9

    .line 274
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v4

    .line 278
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v4

    .line 279
    .local v4, "listAdapter":Landroid/widget/ExpandableListAdapter;
    if-eqz v4, :cond_a

    .line 280
    instance-of v5, v4, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;

    if-eqz v5, :cond_a

    .line 281
    move-object v5, v4

    check-cast v5, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;

    .line 282
    .local v5, "trackProperties":Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;
    invoke-interface {v5, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;->getSensorsChildItemTrackProperties(II)Lorg/json/JSONObject;

    move-result-object v6

    .line 283
    .local v6, "jsonObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_a

    .line 284
    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 289
    .end local v5    # "trackProperties":Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_a
    invoke-static {v1, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v5

    .line 292
    .local v5, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v1, :cond_b

    .line 293
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 297
    :cond_b
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "idString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 299
    const-string v7, "$element_id"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    :cond_c
    const-string v7, "$element_type"

    const-string v8, "ExpandableListView"

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const/4 v7, 0x0

    .line 304
    .local v7, "viewText":Ljava/lang/String;
    instance-of v8, p1, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_e

    .line 306
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v9, p1

    check-cast v9, Landroid/view/ViewGroup;

    invoke-static {v8, v9}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 308
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 309
    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v9

    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 311
    :catch_0
    move-exception v8

    .line 312
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 313
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_0
    goto :goto_1

    .line 315
    :cond_e
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 318
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 319
    const-string v8, "$element_content"

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    :cond_f
    if-eqz v2, :cond_10

    .line 324
    invoke-static {v3, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 328
    :cond_10
    sget v8, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 329
    .local v8, "p":Lorg/json/JSONObject;
    if-eqz v8, :cond_11

    .line 330
    invoke-static {v8, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 333
    :cond_11
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v9

    const-string v10, "$AppClick"

    invoke-virtual {v9, v10, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 336
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "properties":Lorg/json/JSONObject;
    .end local v4    # "listAdapter":Landroid/widget/ExpandableListAdapter;
    .end local v5    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v6    # "idString":Ljava/lang/String;
    .end local v7    # "viewText":Ljava/lang/String;
    .end local v8    # "p":Lorg/json/JSONObject;
    goto :goto_2

    .line 334
    :catch_1
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 216
    :cond_12
    :goto_3
    return-void
.end method

.method public static trackExpandableListViewOnGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;I)V
    .locals 11
    .param p0, "expandableListView"    # Landroid/widget/ExpandableListView;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "groupPosition"    # I

    .line 91
    if-eqz p0, :cond_12

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 96
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    return-void

    .line 106
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_3

    .line 108
    return-void

    .line 112
    :cond_3
    const/4 v1, 0x0

    .line 113
    .local v1, "activity":Landroid/app/Activity;
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 114
    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    move-object v1, v2

    .line 118
    :cond_4
    if-eqz v1, :cond_5

    .line 119
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    return-void

    .line 125
    :cond_5
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .line 128
    .local v2, "fragment":Ljava/lang/Object;
    if-eqz v2, :cond_6

    .line 129
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 130
    return-void

    .line 135
    :cond_6
    const-class v3, Landroid/widget/ExpandableListView;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    return-void

    .line 140
    :cond_7
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 141
    return-void

    .line 144
    :cond_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v3, "properties":Lorg/json/JSONObject;
    invoke-static {v1, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v4

    .line 149
    .local v4, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v1, :cond_9

    .line 150
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 154
    :cond_9
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "idString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 156
    const-string v6, "$element_id"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_a
    const-string v6, "$element_type"

    const-string v7, "ExpandableListView"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const/4 v6, 0x0

    .line 161
    .local v6, "viewText":Ljava/lang/String;
    instance-of v7, p1, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v7, :cond_c

    .line 163
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v8, p1

    check-cast v8, Landroid/view/ViewGroup;

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 165
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 166
    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v8

    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 168
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 170
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_0
    goto :goto_1

    .line 172
    :cond_c
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 175
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 176
    const-string v7, "$element_content"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :cond_d
    if-eqz v2, :cond_e

    .line 181
    invoke-static {v3, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 185
    :cond_e
    sget v7, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 186
    .local v7, "p":Lorg/json/JSONObject;
    if-eqz v7, :cond_f

    .line 187
    invoke-static {v7, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 191
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v8

    .line 192
    .local v8, "listAdapter":Landroid/widget/ExpandableListAdapter;
    if-eqz v8, :cond_11

    .line 193
    instance-of v9, v8, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v9, :cond_11

    .line 195
    :try_start_3
    move-object v9, v8

    check-cast v9, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;

    .line 196
    .local v9, "trackProperties":Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;
    invoke-interface {v9, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;->getSensorsGroupItemTrackProperties(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 197
    .local v10, "jsonObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_10

    .line 198
    invoke-static {v10, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 202
    .end local v9    # "trackProperties":Lcom/sensorsdata/analytics/android/sdk/SensorsExpandableListViewItemTrackProperties;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :cond_10
    goto :goto_2

    .line 200
    :catch_1
    move-exception v9

    .line 201
    .local v9, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 206
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_11
    :goto_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v9

    const-string v10, "$AppClick"

    invoke-virtual {v9, v10, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 209
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "properties":Lorg/json/JSONObject;
    .end local v4    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "viewText":Ljava/lang/String;
    .end local v7    # "p":Lorg/json/JSONObject;
    .end local v8    # "listAdapter":Landroid/widget/ExpandableListAdapter;
    goto :goto_3

    .line 207
    :catch_2
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 92
    :cond_12
    :goto_4
    return-void
.end method

.method public static trackListView(Landroid/widget/AdapterView;Landroid/view/View;I)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1087
    .local p0, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p1, :cond_0

    .line 1088
    return-void

    .line 1091
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    return-void

    .line 1096
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1097
    return-void

    .line 1101
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1102
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_3

    .line 1103
    return-void

    .line 1107
    :cond_3
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1110
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_4

    .line 1111
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1112
    return-void

    .line 1117
    :cond_4
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .line 1120
    .local v2, "fragment":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 1121
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1122
    return-void

    .line 1127
    :cond_5
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1128
    return-void

    .line 1131
    :cond_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1133
    .local v3, "properties":Lorg/json/JSONObject;
    instance-of v4, p0, Landroid/widget/ListView;

    if-eqz v4, :cond_7

    .line 1134
    const-string v4, "$element_type"

    const-string v5, "ListView"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1135
    const-class v4, Landroid/widget/ListView;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1136
    return-void

    .line 1138
    :cond_7
    instance-of v4, p0, Landroid/widget/GridView;

    if-eqz v4, :cond_8

    .line 1139
    const-string v4, "$element_type"

    const-string v5, "GridView"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1140
    const-class v4, Landroid/widget/GridView;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1141
    return-void

    .line 1143
    :cond_8
    instance-of v4, p0, Landroid/widget/Spinner;

    if-eqz v4, :cond_9

    .line 1144
    const-string v4, "$element_type"

    const-string v5, "Spinner"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    const-class v4, Landroid/widget/Spinner;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1146
    return-void

    .line 1149
    :cond_9
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/KeyboardViewUtil;->isKeyboardView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1150
    return-void

    .line 1154
    :cond_a
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 1155
    .local v4, "idString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1156
    const-string v5, "$element_id"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1160
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    .line 1161
    .local v5, "adapter":Landroid/widget/Adapter;
    instance-of v6, v5, Landroid/widget/HeaderViewListAdapter;

    if-eqz v6, :cond_c

    .line 1162
    move-object v6, v5

    check-cast v6, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v6}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    move-object v5, v6

    .line 1165
    :cond_c
    instance-of v6, v5, Lcom/sensorsdata/analytics/android/sdk/SensorsAdapterViewItemTrackProperties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v6, :cond_e

    .line 1167
    :try_start_1
    move-object v6, v5

    check-cast v6, Lcom/sensorsdata/analytics/android/sdk/SensorsAdapterViewItemTrackProperties;

    .line 1168
    .local v6, "objectProperties":Lcom/sensorsdata/analytics/android/sdk/SensorsAdapterViewItemTrackProperties;
    invoke-interface {v6, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsAdapterViewItemTrackProperties;->getSensorsItemTrackProperties(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1169
    .local v7, "jsonObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_d

    .line 1170
    invoke-static {v7, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1174
    .end local v6    # "objectProperties":Lcom/sensorsdata/analytics/android/sdk/SensorsAdapterViewItemTrackProperties;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_d
    goto :goto_0

    .line 1172
    :catch_0
    move-exception v6

    .line 1173
    .local v6, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1177
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_e
    :goto_0
    invoke-static {v1, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v6

    .line 1180
    .local v6, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v1, :cond_f

    .line 1181
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1184
    :cond_f
    const/4 v7, 0x0

    .line 1185
    .local v7, "viewText":Ljava/lang/String;
    instance-of v8, p1, Landroid/view/ViewGroup;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v8, :cond_11

    .line 1187
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1188
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v9, p1

    check-cast v9, Landroid/view/ViewGroup;

    invoke-static {v8, v9}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 1189
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1190
    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v7, v9

    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 1192
    :catch_1
    move-exception v8

    .line 1193
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1194
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_1
    goto :goto_2

    .line 1196
    :cond_11
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 1199
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1200
    const-string v8, "$element_content"

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1204
    :cond_12
    if-eqz v2, :cond_13

    .line 1205
    invoke-static {v3, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 1209
    :cond_13
    sget v8, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 1210
    .local v8, "p":Lorg/json/JSONObject;
    if-eqz v8, :cond_14

    .line 1211
    invoke-static {v8, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1214
    :cond_14
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v9

    const-string v10, "$AppClick"

    invoke-virtual {v9, v10, v3, v6}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1217
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "properties":Lorg/json/JSONObject;
    .end local v4    # "idString":Ljava/lang/String;
    .end local v5    # "adapter":Landroid/widget/Adapter;
    .end local v6    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v7    # "viewText":Ljava/lang/String;
    .end local v8    # "p":Lorg/json/JSONObject;
    goto :goto_3

    .line 1215
    :catch_2
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public static trackMenuItem(Landroid/view/MenuItem;)V
    .locals 1
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .line 701
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V

    .line 702
    return-void
.end method

.method public static trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 706
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getSinglePool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;

    invoke-direct {v1, p1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;-><init>(Landroid/view/MenuItem;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 805
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static trackRN(Ljava/lang/Object;IIZ)V
    .locals 0
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "reactTag"    # I
    .param p2, "s"    # I
    .param p3, "b"    # Z

    .line 86
    return-void
.end method

.method public static trackRadioGroup(Landroid/widget/RadioGroup;I)V
    .locals 12
    .param p0, "view"    # Landroid/widget/RadioGroup;
    .param p1, "checkedId"    # I

    .line 809
    if-nez p0, :cond_0

    .line 810
    return-void

    .line 813
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 814
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 819
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 820
    return-void

    .line 824
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    return-void

    .line 829
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 830
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_4

    .line 831
    return-void

    .line 835
    :cond_4
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 838
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_5

    .line 839
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 840
    return-void

    .line 845
    :cond_5
    invoke-static {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .line 848
    .local v3, "fragment":Ljava/lang/Object;
    if-eqz v3, :cond_6

    .line 849
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 850
    return-void

    .line 855
    :cond_6
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 856
    return-void

    .line 859
    :cond_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 862
    .local v4, "properties":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, "idString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 864
    const-string v6, "$element_id"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    :cond_8
    if-eqz v2, :cond_9

    .line 869
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 872
    :cond_9
    const-string v6, "RadioButton"

    .line 873
    .local v6, "viewType":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 874
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RadioButton"

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 876
    :cond_a
    const-string v7, "$element_type"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 880
    .local v7, "checkedRadioButtonId":I
    const/4 v8, 0x0

    .line 881
    .local v8, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v2, :cond_d

    .line 883
    :try_start_1
    invoke-virtual {v2, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    .line 884
    .local v9, "radioButton":Landroid/widget/RadioButton;
    if-eqz v9, :cond_c

    .line 885
    invoke-virtual {v9}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 886
    invoke-virtual {v9}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 887
    .local v10, "viewText":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 888
    const-string v11, "$element_content"

    invoke-virtual {v4, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    .end local v10    # "viewText":Ljava/lang/String;
    :cond_b
    invoke-static {v2, v9, v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v10

    .line 895
    .end local v9    # "radioButton":Landroid/widget/RadioButton;
    :cond_c
    goto :goto_0

    .line 893
    :catch_0
    move-exception v9

    .line 894
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 899
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_0
    if-eqz v3, :cond_e

    .line 900
    invoke-static {v4, v3, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 904
    :cond_e
    sget v9, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p0, v9}, Landroid/widget/RadioGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    .line 905
    .local v9, "p":Lorg/json/JSONObject;
    if-eqz v9, :cond_f

    .line 906
    invoke-static {v9, v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 909
    :cond_f
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v10

    const-string v11, "$AppClick"

    invoke-virtual {v10, v11, v4, v8}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 912
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "fragment":Ljava/lang/Object;
    .end local v4    # "properties":Lorg/json/JSONObject;
    .end local v5    # "idString":Ljava/lang/String;
    .end local v6    # "viewType":Ljava/lang/String;
    .end local v7    # "checkedRadioButtonId":I
    .end local v8    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v9    # "p":Lorg/json/JSONObject;
    goto :goto_2

    .line 815
    .restart local v0    # "childView":Landroid/view/View;
    :cond_10
    :goto_1
    return-void

    .line 910
    .end local v0    # "childView":Landroid/view/View;
    :catch_1
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 913
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static trackTabHost(Ljava/lang/String;)V
    .locals 2
    .param p0, "tabName"    # Ljava/lang/String;

    .line 341
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getSinglePool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$1;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
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

.method public static trackTabLayoutSelected(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 24
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "tab"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    .line 425
    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 426
    return-void

    .line 429
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    return-void

    .line 434
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_18

    if-eqz v0, :cond_2

    .line 435
    return-void

    .line 438
    :cond_2
    const/4 v3, 0x0

    .line 439
    .local v3, "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    move-object v5, v4

    .line 441
    .local v5, "androidXTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v0, "android.support.design.widget.TabLayout"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    .line 444
    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 447
    :goto_0
    :try_start_2
    const-string v0, "com.google.android.material.tabs.TabLayout"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v0

    .line 450
    goto :goto_1

    .line 448
    :catch_1
    move-exception v0

    .line 452
    :goto_1
    if-nez v3, :cond_3

    if-nez v5, :cond_3

    .line 453
    return-void

    .line 455
    :cond_3
    const/4 v0, 0x0

    .line 457
    .local v0, "tabLayout":Landroid/view/View;
    if-eqz v3, :cond_6

    .line 459
    :try_start_3
    const-string v6, "android.support.design.widget.TabLayout$Tab"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 460
    const-string v6, "android.support.design.widget.TabLayout$Tab"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "mParent"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 461
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_4

    const-string v7, "android.support.design.widget.TabLayout"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 462
    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 463
    return-void

    .line 465
    :cond_4
    move-object v0, v6

    .line 468
    .end local v6    # "view":Landroid/view/View;
    :cond_5
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 469
    return-void

    .line 472
    :cond_6
    if-eqz v5, :cond_9

    .line 474
    const-string v6, "com.google.android.material.tabs.TabLayout$Tab"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 475
    const-string v6, "com.google.android.material.tabs.TabLayout$Tab"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "parent"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 476
    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_7

    const-string v7, "com.google.android.material.tabs.TabLayout"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 477
    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 478
    return-void

    .line 480
    :cond_7
    move-object v0, v6

    .line 483
    .end local v6    # "view":Landroid/view/View;
    :cond_8
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 484
    return-void

    .line 488
    :cond_9
    move-object v6, v0

    .end local v0    # "tabLayout":Landroid/view/View;
    .local v6, "tabLayout":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->isDeBounceTrack(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 489
    return-void

    .line 493
    :cond_a
    const/4 v7, 0x0

    .line 494
    .local v7, "activity":Landroid/app/Activity;
    const/4 v8, 0x0

    .line 495
    .local v8, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    const/4 v9, 0x0

    .line 496
    .local v9, "isFragment":Z
    instance-of v0, v1, Landroid/content/Context;

    const/4 v11, 0x1

    if-eqz v0, :cond_b

    .line 497
    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_18

    .end local v7    # "activity":Landroid/app/Activity;
    .local v0, "activity":Landroid/app/Activity;
    goto :goto_6

    .line 500
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v7    # "activity":Landroid/app/Activity;
    :cond_b
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 501
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v12, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v13, v7

    const/4 v7, 0x0

    .end local v7    # "activity":Landroid/app/Activity;
    .local v13, "activity":Landroid/app/Activity;
    :goto_2
    if-ge v7, v12, :cond_f

    :try_start_5
    aget-object v14, v0, v7

    .line 502
    .local v14, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v14, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 503
    invoke-virtual {v14, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 504
    .local v15, "bridgeObject":Ljava/lang/Object;
    instance-of v11, v15, Landroid/app/Activity;

    if-eqz v11, :cond_c

    .line 505
    move-object v7, v15

    check-cast v7, Landroid/app/Activity;

    .line 506
    .end local v13    # "activity":Landroid/app/Activity;
    .restart local v7    # "activity":Landroid/app/Activity;
    nop

    .line 518
    move-object v0, v7

    goto :goto_4

    .line 507
    .end local v7    # "activity":Landroid/app/Activity;
    .restart local v13    # "activity":Landroid/app/Activity;
    :cond_c
    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 508
    move-object v1, v15

    .line 509
    .end local p0    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    const/4 v7, 0x1

    .line 510
    .end local v9    # "isFragment":Z
    .local v7, "isFragment":Z
    nop

    .line 518
    move v9, v7

    goto :goto_3

    .line 511
    .end local v1    # "object":Ljava/lang/Object;
    .end local v7    # "isFragment":Z
    .restart local v9    # "isFragment":Z
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_d
    instance-of v11, v15, Landroid/view/View;

    if-eqz v11, :cond_e

    .line 512
    move-object v11, v15

    check-cast v11, Landroid/view/View;

    .line 513
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 501
    .end local v11    # "view":Landroid/view/View;
    .end local v13    # "activity":Landroid/app/Activity;
    .end local v14    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "bridgeObject":Ljava/lang/Object;
    .local v10, "activity":Landroid/app/Activity;
    move-object v13, v10

    .end local v10    # "activity":Landroid/app/Activity;
    .restart local v13    # "activity":Landroid/app/Activity;
    :cond_e
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x1

    goto :goto_2

    .line 516
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    :catch_2
    move-exception v0

    goto :goto_5

    .line 518
    .end local v13    # "activity":Landroid/app/Activity;
    .end local p0    # "object":Ljava/lang/Object;
    .local v0, "activity":Landroid/app/Activity;
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_f
    :goto_3
    move-object v0, v13

    :goto_4
    goto :goto_6

    .line 516
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "object":Ljava/lang/Object;
    .local v7, "activity":Landroid/app/Activity;
    .restart local p0    # "object":Ljava/lang/Object;
    :catch_3
    move-exception v0

    move-object v13, v7

    .line 517
    .end local v7    # "activity":Landroid/app/Activity;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v13    # "activity":Landroid/app/Activity;
    :goto_5
    :try_start_6
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    move-object v0, v13

    .end local v13    # "activity":Landroid/app/Activity;
    .end local p0    # "object":Ljava/lang/Object;
    .local v0, "activity":Landroid/app/Activity;
    .restart local v1    # "object":Ljava/lang/Object;
    :goto_6
    if-nez v0, :cond_10

    if-nez v9, :cond_10

    if-eqz v6, :cond_10

    .line 522
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v7

    move-object v0, v7

    .line 524
    invoke-static {v6, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .line 525
    .local v7, "fragment":Ljava/lang/Object;
    if-eqz v7, :cond_10

    .line 526
    move-object v1, v7

    .line 527
    const/4 v9, 0x1

    .line 531
    .end local v7    # "fragment":Ljava/lang/Object;
    :cond_10
    if-eqz v0, :cond_11

    .line 532
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 533
    return-void

    .line 537
    :cond_11
    if-eqz v9, :cond_12

    .line 538
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_18

    if-eqz v7, :cond_12

    .line 539
    return-void

    .line 543
    :cond_12
    :try_start_7
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 545
    .local v7, "properties":Lorg/json/JSONObject;
    const-string v10, "$element_type"

    const-string v11, "TabLayout"

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_17

    .line 548
    if-eqz v9, :cond_14

    .line 549
    if-nez v0, :cond_13

    .line 550
    :try_start_8
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromFragment(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v10

    move-object v0, v10

    .line 552
    :cond_13
    invoke-static {v7, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    goto :goto_7

    .line 553
    :cond_14
    if-eqz v0, :cond_15

    .line 554
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_18

    .line 557
    :cond_15
    :goto_7
    move-object v10, v0

    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v10    # "activity":Landroid/app/Activity;
    const/4 v11, 0x0

    .line 558
    .local v11, "supportTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v12, v4

    .line 561
    .local v12, "androidXTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_9
    const-string v0, "android.support.design.widget.TabLayout$Tab"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object v11, v0

    .line 564
    goto :goto_8

    .line 562
    :catch_4
    move-exception v0

    .line 567
    :goto_8
    :try_start_a
    const-string v0, "com.google.android.material.tabs.TabLayout$Tab"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object v12, v0

    .line 570
    goto :goto_9

    .line 568
    :catch_5
    move-exception v0

    .line 572
    :goto_9
    if-eqz v11, :cond_16

    .line 573
    move-object v0, v11

    .local v0, "currentTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_a

    .line 575
    .end local v0    # "currentTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    move-object v0, v12

    .restart local v0    # "currentTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a
    move-object v13, v0

    .line 578
    .end local v0    # "currentTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "currentTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_23

    .line 579
    move-object v14, v4

    .line 581
    .local v14, "method":Ljava/lang/reflect/Method;
    :try_start_b
    const-string v0, "getText"

    const/4 v15, 0x0

    new-array v4, v15, [Ljava/lang/Class;

    invoke-virtual {v13, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_18

    move-object v14, v0

    .line 584
    goto :goto_b

    .line 582
    :catch_6
    move-exception v0

    .line 586
    :goto_b
    if-eqz v14, :cond_17

    .line 587
    const/4 v4, 0x0

    :try_start_c
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v14, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 590
    .local v0, "text":Ljava/lang/Object;
    if-eqz v0, :cond_17

    .line 591
    const-string v4, "$element_content"

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_18

    .line 595
    .end local v0    # "text":Ljava/lang/Object;
    :cond_17
    if-eqz v10, :cond_23

    .line 599
    :try_start_d
    const-string v0, "mCustomView"

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-object v4, v0

    .line 606
    .local v4, "field":Ljava/lang/reflect/Field;
    goto :goto_c

    .line 688
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :catch_7
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v20, v3

    goto/16 :goto_19

    .line 600
    :catch_8
    move-exception v0

    move-object v4, v0

    .line 602
    .local v4, "ex":Ljava/lang/NoSuchFieldException;
    :try_start_e
    const-string v0, "customView"

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 605
    .local v0, "field":Ljava/lang/reflect/Field;
    goto :goto_c

    .line 603
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_9
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    nop

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .end local v4    # "ex":Ljava/lang/NoSuchFieldException;
    const/4 v0, 0x0

    .local v0, "field":Ljava/lang/reflect/Field;
    :goto_c
    move-object v4, v0

    .line 608
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .line 609
    .local v0, "view":Landroid/view/View;
    if-eqz v4, :cond_1c

    .line 610
    const/4 v15, 0x1

    :try_start_f
    invoke-virtual {v4, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 611
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 612
    .end local v0    # "view":Landroid/view/View;
    .local v15, "view":Landroid/view/View;
    if-eqz v15, :cond_1b

    .line 614
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 616
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v17, v1

    :try_start_11
    instance-of v1, v15, Landroid/view/ViewGroup;

    .end local v1    # "object":Ljava/lang/Object;
    .local v17, "object":Ljava/lang/Object;
    if-eqz v1, :cond_19

    .line 617
    move-object v1, v15

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "viewText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_18

    .line 619
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    move-object/from16 v19, v0

    const/16 v16, 0x1

    add-int/lit8 v0, v18, -0x1

    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .local v19, "stringBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v20, v3

    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v20, "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    goto :goto_d

    .line 622
    .end local v19    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_18
    move-object/from16 v19, v0

    move-object/from16 v20, v3

    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_d

    .end local v1    # "viewText":Ljava/lang/String;
    .end local v19    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_19
    move-object/from16 v19, v0

    move-object/from16 v20, v3

    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "viewText":Ljava/lang/String;
    :goto_d
    move-object v0, v1

    .line 625
    .end local v1    # "viewText":Ljava/lang/String;
    .local v0, "viewText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 626
    const-string v1, "$element_content"

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    .line 630
    .end local v0    # "viewText":Ljava/lang/String;
    .end local v19    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1a
    goto :goto_f

    .line 628
    :catch_a
    move-exception v0

    goto :goto_e

    .end local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_b
    move-exception v0

    move-object/from16 v20, v3

    .end local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_e

    .end local v17    # "object":Ljava/lang/Object;
    .end local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "object":Ljava/lang/Object;
    .restart local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_c
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v20, v3

    .line 629
    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "object":Ljava/lang/Object;
    .restart local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_e
    :try_start_13
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_f

    .line 634
    .end local v17    # "object":Ljava/lang/Object;
    .end local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    move-object/from16 v17, v1

    move-object/from16 v20, v3

    goto :goto_f

    .line 688
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "view":Landroid/view/View;
    :catch_d
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v20, v3

    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "object":Ljava/lang/Object;
    .restart local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_19

    .line 634
    .end local v17    # "object":Ljava/lang/Object;
    .end local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "view":Landroid/view/View;
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    :cond_1c
    move-object/from16 v17, v1

    move-object/from16 v20, v3

    move-object v15, v0

    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v15    # "view":Landroid/view/View;
    .restart local v17    # "object":Ljava/lang/Object;
    .restart local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_f
    const/4 v1, 0x0

    .line 636
    .local v1, "tabView":Landroid/view/View;
    :try_start_14
    const-string v0, "view"

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    move-object v3, v0

    .line 637
    .local v3, "viewField":Ljava/lang/reflect/Field;
    move-object/from16 v21, v1

    const/4 v1, 0x1

    :try_start_15
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10

    .line 639
    .end local v1    # "tabView":Landroid/view/View;
    .local v21, "tabView":Landroid/view/View;
    :try_start_16
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_16} :catch_f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10

    .line 642
    .end local v21    # "tabView":Landroid/view/View;
    .local v0, "tabView":Landroid/view/View;
    nop

    .line 646
    move-object v1, v0

    goto :goto_10

    .line 640
    .end local v0    # "tabView":Landroid/view/View;
    .restart local v21    # "tabView":Landroid/view/View;
    :catch_e
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_17
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_10

    .line 646
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "viewField":Ljava/lang/reflect/Field;
    move-object/from16 v1, v21

    .end local v21    # "tabView":Landroid/view/View;
    .restart local v1    # "tabView":Landroid/view/View;
    :goto_10
    goto :goto_12

    .line 644
    .end local v1    # "tabView":Landroid/view/View;
    .restart local v21    # "tabView":Landroid/view/View;
    :catch_f
    move-exception v0

    goto :goto_11

    .line 688
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "view":Landroid/view/View;
    .end local v21    # "tabView":Landroid/view/View;
    :catch_10
    move-exception v0

    goto/16 :goto_19

    .line 644
    .restart local v1    # "tabView":Landroid/view/View;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v15    # "view":Landroid/view/View;
    :catch_11
    move-exception v0

    move-object/from16 v21, v1

    .line 645
    .end local v1    # "tabView":Landroid/view/View;
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    .restart local v21    # "tabView":Landroid/view/View;
    :goto_11
    :try_start_18
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10

    .line 647
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    move-object/from16 v1, v21

    .end local v21    # "tabView":Landroid/view/View;
    .restart local v1    # "tabView":Landroid/view/View;
    :goto_12
    if-nez v1, :cond_1d

    .line 649
    :try_start_19
    const-string v0, "mView"

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_19} :catch_14
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    move-object v3, v0

    .line 650
    .local v3, "mViewField":Ljava/lang/reflect/Field;
    move-object/from16 v22, v1

    const/4 v1, 0x1

    :try_start_1a
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a .. :try_end_1a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10

    .line 652
    .end local v1    # "tabView":Landroid/view/View;
    .local v22, "tabView":Landroid/view/View;
    :try_start_1b
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_1b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    .line 655
    .end local v22    # "tabView":Landroid/view/View;
    .local v0, "tabView":Landroid/view/View;
    nop

    .line 658
    move-object v1, v0

    goto :goto_13

    .line 653
    .end local v0    # "tabView":Landroid/view/View;
    .restart local v22    # "tabView":Landroid/view/View;
    :catch_12
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_1c
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1c .. :try_end_1c} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    .line 658
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "mViewField":Ljava/lang/reflect/Field;
    move-object/from16 v1, v22

    .end local v22    # "tabView":Landroid/view/View;
    .restart local v1    # "tabView":Landroid/view/View;
    :goto_13
    goto :goto_16

    .line 656
    .end local v1    # "tabView":Landroid/view/View;
    .restart local v22    # "tabView":Landroid/view/View;
    :catch_13
    move-exception v0

    goto :goto_14

    .end local v22    # "tabView":Landroid/view/View;
    .restart local v1    # "tabView":Landroid/view/View;
    :catch_14
    move-exception v0

    move-object/from16 v22, v1

    .line 657
    .end local v1    # "tabView":Landroid/view/View;
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    .restart local v22    # "tabView":Landroid/view/View;
    :goto_14
    :try_start_1d
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_15

    .line 660
    .end local v22    # "tabView":Landroid/view/View;
    .restart local v1    # "tabView":Landroid/view/View;
    :cond_1d
    move-object/from16 v22, v1

    .end local v1    # "tabView":Landroid/view/View;
    .restart local v22    # "tabView":Landroid/view/View;
    :goto_15
    move-object/from16 v1, v22

    .end local v22    # "tabView":Landroid/view/View;
    .restart local v1    # "tabView":Landroid/view/View;
    :goto_16
    if-eqz v1, :cond_1e

    .line 661
    invoke-static {v10, v1, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v0

    .line 664
    .end local v8    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .local v0, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    move-object v8, v0

    .end local v0    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .restart local v8    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :cond_1e
    const/4 v3, -0x1

    if-eqz v15, :cond_1f

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_10

    if-ne v0, v3, :cond_20

    .line 666
    :cond_1f
    :try_start_1e
    const-string v0, "mParent"

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    .line 669
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .local v0, "field":Ljava/lang/reflect/Field;
    nop

    .line 670
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    :goto_17
    move-object v4, v0

    goto :goto_18

    .line 667
    :catch_15
    move-exception v0

    .line 668
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    :try_start_1f
    const-string v3, "parent"

    invoke-virtual {v13, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v0, v3

    .end local v4    # "field":Ljava/lang/reflect/Field;
    .local v0, "field":Ljava/lang/reflect/Field;
    goto :goto_17

    .line 670
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    :goto_18
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 671
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v15, v0

    .line 674
    :cond_20
    if-eqz v15, :cond_21

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_21

    .line 675
    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "resourceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 677
    const-string v3, "$element_id"

    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 681
    .end local v0    # "resourceId":Ljava/lang/String;
    :cond_21
    if-eqz v15, :cond_22

    .line 683
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {v15, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 684
    .local v0, "p":Lorg/json/JSONObject;
    if-eqz v0, :cond_22

    .line 685
    invoke-static {v0, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10

    .line 690
    .end local v0    # "p":Lorg/json/JSONObject;
    .end local v1    # "tabView":Landroid/view/View;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "view":Landroid/view/View;
    :cond_22
    goto :goto_1a

    .line 688
    :goto_19
    nop

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "method":Ljava/lang/reflect/Method;
    goto :goto_1a

    .line 694
    .end local v17    # "object":Ljava/lang/Object;
    .end local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "object":Ljava/lang/Object;
    .local v3, "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    move-object/from16 v17, v1

    move-object/from16 v20, v3

    .end local v1    # "object":Ljava/lang/Object;
    .end local v3    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "object":Ljava/lang/Object;
    .restart local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    const-string v1, "$AppClick"

    invoke-virtual {v0, v1, v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_16

    .line 697
    .end local v5    # "androidXTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "tabLayout":Landroid/view/View;
    .end local v7    # "properties":Lorg/json/JSONObject;
    .end local v8    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v9    # "isFragment":Z
    .end local v10    # "activity":Landroid/app/Activity;
    .end local v11    # "supportTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "androidXTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "currentTabClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "supportTabLayoutCLass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 698
    move-object/from16 v1, v17

    goto :goto_1c

    .line 695
    :catch_16
    move-exception v0

    move-object/from16 v1, v17

    goto :goto_1b

    .end local v17    # "object":Ljava/lang/Object;
    .restart local v1    # "object":Ljava/lang/Object;
    :catch_17
    move-exception v0

    move-object/from16 v17, v1

    .end local v1    # "object":Ljava/lang/Object;
    .restart local v17    # "object":Ljava/lang/Object;
    goto :goto_1b

    .end local v17    # "object":Ljava/lang/Object;
    .restart local p0    # "object":Ljava/lang/Object;
    :catch_18
    move-exception v0

    .line 696
    .end local p0    # "object":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "object":Ljava/lang/Object;
    :goto_1b
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 698
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method public static trackViewOnClick(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 1253
    if-nez p0, :cond_0

    .line 1254
    return-void

    .line 1256
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;Z)V

    .line 1257
    return-void
.end method

.method public static trackViewOnClick(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isFromUser"    # Z

    .line 1261
    if-nez p0, :cond_0

    .line 1262
    return-void

    .line 1265
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1266
    return-void

    .line 1269
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1270
    return-void

    .line 1274
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1277
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1280
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 1281
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1282
    return-void

    .line 1287
    :cond_3
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .line 1290
    .local v2, "fragment":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 1291
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1292
    return-void

    .line 1297
    :cond_4
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1298
    return-void

    .line 1301
    :cond_5
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isDoubleClick(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1302
    return-void

    .line 1305
    :cond_6
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/KeyboardViewUtil;->isKeyboardView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1306
    return-void

    .line 1309
    :cond_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1311
    .local v3, "properties":Lorg/json/JSONObject;
    invoke-static {p0, v3, p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->injectClickInfo(Landroid/view/View;Lorg/json/JSONObject;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1312
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v4

    const-string v5, "$AppClick"

    invoke-static {v1, p0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "properties":Lorg/json/JSONObject;
    :cond_8
    goto :goto_0

    .line 1314
    :catch_0
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1317
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
