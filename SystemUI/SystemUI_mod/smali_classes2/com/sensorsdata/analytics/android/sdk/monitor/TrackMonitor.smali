.class public Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;
.super Ljava/lang/Object;
.source "TrackMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor$SingletonHolder;
    }
.end annotation


# instance fields
.field private cacheData:Lorg/json/JSONObject;

.field private mFunctionListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor$1;

    .line 33
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .line 33
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->cacheData:Lorg/json/JSONObject;

    return-object p1
.end method

.method private call(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;

    .line 51
    .local v1, "listener":Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;
    invoke-interface {v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;->call(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 52
    .end local v1    # "listener":Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;
    goto :goto_0

    .line 53
    :cond_1
    return-void

    .line 48
    :cond_2
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;
    .locals 1

    .line 56
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor$SingletonHolder;->access$100()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V
    .locals 2
    .param p1, "functionListener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->cacheData:Lorg/json/JSONObject;

    .line 68
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 69
    const-string v1, "trackEvent"

    invoke-direct {p0, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->call(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 74
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public callEnableDataCollect()V
    .locals 2

    .line 142
    const-string v0, "enableDataCollect"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->call(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 143
    return-void
.end method

.method public callIdentify(Ljava/lang/String;)V
    .locals 2
    .param p1, "distinctId"    # Ljava/lang/String;

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "distinctId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v1, "identify"

    invoke-direct {p0, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->call(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 139
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public callLogin(Ljava/lang/String;)V
    .locals 2
    .param p1, "loginId"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "distinctId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v1, "login"

    invoke-direct {p0, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->call(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 125
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public callLogout()V
    .locals 2

    .line 128
    const-string v0, "logout"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->call(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 129
    return-void
.end method

.method public callResetAnonymousId(Ljava/lang/String;)V
    .locals 2
    .param p1, "newDistinctId"    # Ljava/lang/String;

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "distinctId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "resetAnonymousId"

    invoke-direct {p0, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->call(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public callTrack(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "eventObject"    # Lorg/json/JSONObject;

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "eventJSON"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "$AppStart"

    const-string v2, "event"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    if-nez v1, :cond_0

    .line 88
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->cacheData:Lorg/json/JSONObject;

    .line 89
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor$1;

    invoke-direct {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void

    .line 98
    :cond_0
    const-string v1, "trackEvent"

    invoke-direct {p0, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->call(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 102
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public removeFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V
    .locals 1
    .param p1, "functionListener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;

    .line 77
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->mFunctionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method
