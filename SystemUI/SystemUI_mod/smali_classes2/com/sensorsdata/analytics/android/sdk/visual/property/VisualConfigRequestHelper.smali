.class public Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;
.super Ljava/lang/Object;
.source "VisualConfigRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.VP.VisualConfigRequestHelper"


# instance fields
.field private mCountDownTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    .line 37
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->getRequestUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    .line 37
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->resetTimer()V

    return-void
.end method

.method private getRequestUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 126
    const-string v1, "SA.VP.VisualConfigRequestHelper"

    const-string v2, "getRequestUrl context is null and return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v0

    .line 129
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "serverUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const-string v2, "SA.VP.VisualConfigRequestHelper"

    const-string v3, "visualConfigRequest server url is null and return"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-object v0

    .line 135
    :cond_1
    const/4 v2, 0x0

    .line 136
    .local v2, "baseUrl":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 137
    .local v3, "pathPrefix":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/config/visualized/Android.conf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 142
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    .local v0, "configUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 144
    .local v4, "builder":Landroid/net/Uri$Builder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 145
    const-string v5, "v"

    invoke-virtual {v4, v5, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 148
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "project"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "project":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 150
    const-string v7, "project"

    invoke-virtual {v4, v7, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    :cond_4
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "appId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 155
    const-string v8, "app_id"

    invoke-virtual {v4, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 159
    .end local v0    # "configUri":Landroid/net/Uri;
    .end local v4    # "builder":Landroid/net/Uri$Builder;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "project":Ljava/lang/String;
    .end local v7    # "appId":Ljava/lang/String;
    :cond_6
    return-object v0
.end method

.method private resetTimer()V
    .locals 2

    .line 114
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 121
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 122
    :goto_1
    return-void

    .line 120
    :goto_2
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 121
    throw v1
.end method


# virtual methods
.method public requestVisualConfig(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;

    .line 48
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->post(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
