.class public Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;
.super Ljava/lang/Object;
.source "VisualPropertiesH5Helper.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/visual/bridge/WebViewJavascriptBridge;


# instance fields
.field private mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

.field private mSAEventListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

.field private mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSparseArray:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    .line 54
    return-void
.end method

.method private static Base642string(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    .line 46
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method private addSAEventListener()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSAEventListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper$2;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSAEventListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    .line 207
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSAEventListener:Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V

    .line 209
    :cond_0
    return-void
.end method

.method private getJSVisualProperties(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    .locals 3
    .param p1, "webView"    # Landroid/view/View;
    .param p2, "elementPath"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "onBridgeCallback"    # Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;

    .line 105
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesCache()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->getH5JsonArrayFromCache(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 106
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "sensorsdata_js_visual_properties"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 115
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    const-string v2, "getJSVisualProperties"

    invoke-virtual {p0, p1, v2, v1, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "obj":Lorg/json/JSONObject;
    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public clearCache(I)V
    .locals 1
    .param p1, "hashCode"    # I

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getEventName(I)Lorg/json/JSONArray;
    .locals 1
    .param p1, "hashCode"    # I

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method mergeJSVisualProperties(Lorg/json/JSONObject;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 7
    .param p1, "srcObject"    # Lorg/json/JSONObject;
    .param p3, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    .local p2, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 61
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 63
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, "webViewElementPath":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getViewNode(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v3

    .line 66
    .local v3, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 67
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 68
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;Lorg/json/JSONObject;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v4, v5, p3, v6}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->getJSVisualProperties(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v2    # "webViewElementPath":Ljava/lang/String;
    .end local v3    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    goto :goto_0

    .line 94
    :cond_2
    const-wide/16 v2, 0x1f4

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    goto :goto_1

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_2

    .line 98
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 59
    :cond_3
    :goto_3
    return-void
.end method

.method public registerListeners()V
    .locals 1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->addSAJSListener()V

    .line 127
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->addSAEventListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "webView"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V
    .locals 1
    .param p1, "webView"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "responseCallback"    # Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;

    .line 231
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mJSBridgeHelper:Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/bridge/JSBridgeHelper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/visual/bridge/OnBridgeCallback;)V

    .line 232
    return-void
.end method
