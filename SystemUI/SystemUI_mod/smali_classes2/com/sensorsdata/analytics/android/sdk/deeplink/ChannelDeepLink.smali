.class Lcom/sensorsdata/analytics/android/sdk/deeplink/ChannelDeepLink;
.super Lcom/sensorsdata/analytics/android/sdk/deeplink/AbsDeepLink;
.source "ChannelDeepLink.java"


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 39
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/AbsDeepLink;-><init>(Landroid/content/Intent;)V

    .line 40
    return-void
.end method


# virtual methods
.method public mergeDeepLinkProperty(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 73
    :try_start_0
    const-string v0, "$deeplink_url"

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/ChannelDeepLink;->getDeepLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 77
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getUtmProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 78
    return-void
.end method

.method public parseDeepLink(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 48
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const-string v1, "ChannelDeepLink"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isOpaque"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 52
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    .line 53
    return-void

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 56
    .local v1, "parameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 58
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v2, "uriParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ""

    goto :goto_1

    :cond_3
    move-object v6, v5

    :goto_1
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 63
    :cond_4
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->parseParams(Ljava/util/Map;)V

    .line 64
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/ChannelDeepLink;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;

    if-eqz v3, :cond_5

    .line 65
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/ChannelDeepLink;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;->CHANNEL:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;->onFinish(Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;Ljava/lang/String;ZJ)V

    .line 68
    .end local v2    # "uriParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    return-void

    .line 45
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "parameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :goto_2
    return-void
.end method
