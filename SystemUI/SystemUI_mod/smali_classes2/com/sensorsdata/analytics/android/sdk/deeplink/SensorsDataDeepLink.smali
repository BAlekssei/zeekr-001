.class Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;
.super Lcom/sensorsdata/analytics/android/sdk/deeplink/AbsDeepLink;
.source "SensorsDataDeepLink.java"


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private pageParams:Ljava/lang/String;

.field private project:Ljava/lang/String;

.field private serverUrl:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "serverUrl"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/AbsDeepLink;-><init>(Landroid/content/Intent;)V

    .line 50
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->serverUrl:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;

    invoke-direct {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getProject()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->project:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    .line 41
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->errorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    .line 41
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->success:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->success:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    .line 41
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->pageParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->pageParams:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getRequestUrl()Ljava/lang/String;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->serverUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->serverUrl:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "pathPrefix":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->serverUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/sdk/deeplink/param"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 135
    .end local v0    # "pathPrefix":I
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public mergeDeepLinkProperty(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 122
    :try_start_0
    const-string v0, "$deeplink_url"

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->getDeepLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 126
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public parseDeepLink(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 56
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    .local v2, "requestDeepLinkStartTime":J
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "key"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v5, "system_type"

    const-string v6, "ANDROID"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v5, "project"

    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->project:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;->GET:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->getRequestUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5, v4}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->params(Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object v5

    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;J)V

    .line 69
    invoke-virtual {v5, v6}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callback(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object v5

    .line 115
    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->execute()V

    .line 117
    .end local v2    # "requestDeepLinkStartTime":J
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 57
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method
