.class public Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper;
.super Ljava/lang/Object;
.source "PairingCodeRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.ParingCodeHttpRequest"

.field private static final URL_VERIFY_SUFFIX:Ljava/lang/String; = "api/sdk/heat_maps/scanning/pairing_code"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyPairingCodeRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paringCode"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;

    .line 50
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "serverUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "SA.ParingCodeHttpRequest"

    const-string v2, "verifyParingCodeRequest | server url is null and return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 58
    .local v2, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "pairing_code"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v4, "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "sensorsdata-project"

    const-string v6, "project"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;->GET:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    const-string v7, "api/sdk/heat_maps/scanning/pairing_code"

    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v5, v3}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->params(Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v4}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->header(Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object v5

    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;

    invoke-direct {v6, p0, p3, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper;Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeRequestHelper$IApiCallback;Landroid/content/Context;)V

    .line 68
    invoke-virtual {v5, v6}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callback(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object v5

    .line 104
    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "serverUrl":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
