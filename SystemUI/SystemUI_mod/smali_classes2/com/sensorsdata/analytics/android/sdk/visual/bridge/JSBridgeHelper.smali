.class public Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;
.super Ljava/lang/Object;
.source "JSBridgeHelper.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/visual/bridge/WebViewJavascriptBridge;


# static fields
.field private static final CALLBACK_ID_FORMAT:Ljava/lang/String; = "JAVA_CB_%s"

.field private static final CALL_TYPE_GET_VISUAL_PROPERTIES:Ljava/lang/String; = "getJSVisualProperties"


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSAJSListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mCallbacks:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    .line 37
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Class;

    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    return-void
.end method

.method private static invokeWebViewLoad(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "webView"    # Landroid/view/View;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "paramTypes"    # [Ljava/lang/Class;

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 122
    .local v1, "loadMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "loadMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public addSAJSListener()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mSAJSListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$1;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mSAJSListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    .line 69
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mSAJSListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->addSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method public sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "webView"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V

    .line 116
    return-void
.end method

.method public declared-synchronized sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    .locals 6
    .param p1, "webView"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "responseCallback"    # Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 77
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;-><init>()V

    .line 80
    .local v0, "request":Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;
    iput-object p2, v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;->methodName:Ljava/lang/String;

    .line 81
    if-eqz p4, :cond_1

    .line 82
    const-string v1, "JAVA_CB_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "messageId":Ljava/lang/String;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iput-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;->messageId:Ljava/lang/String;

    .line 86
    .end local v1    # "messageId":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 87
    .local v1, "object":Lorg/json/JSONObject;
    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 88
    new-instance v2, Lorg/json/JSONObject;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 89
    :cond_2
    instance-of v2, p3, Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 90
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 91
    const-string v2, "message_id"

    iget-object v3, v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v2, "platform"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    move-object v2, p3

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_3
    :goto_0
    move-object v2, v1

    .line 96
    .local v2, "obj":Lorg/json/JSONObject;
    if-nez v2, :cond_4

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_4
    if-eqz p1, :cond_5

    .line 100
    :try_start_2
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$2;

    invoke-direct {v3, p0, p2, v2, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v0    # "request":Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSRequest;
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :cond_5
    goto :goto_1

    .line 75
    .end local p1    # "webView":Landroid/view/View;
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "data":Ljava/lang/Object;
    .end local p4    # "responseCallback":Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 108
    .restart local p1    # "webView":Landroid/view/View;
    .restart local p2    # "methodName":Ljava/lang/String;
    .restart local p3    # "data":Ljava/lang/Object;
    .restart local p4    # "responseCallback":Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 75
    .end local p1    # "webView":Landroid/view/View;
    .end local p2    # "methodName":Ljava/lang/String;
    .end local p3    # "data":Ljava/lang/Object;
    .end local p4    # "responseCallback":Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;
    throw p1
.end method
