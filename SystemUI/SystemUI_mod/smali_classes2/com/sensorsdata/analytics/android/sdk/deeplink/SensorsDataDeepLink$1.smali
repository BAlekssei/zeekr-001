.class Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;
.super Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$JsonCallback;
.source "SensorsDataDeepLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->parseDeepLink(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

.field final synthetic val$requestDeepLinkStartTime:J


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    .line 69
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    iput-wide p2, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->val$requestDeepLinkStartTime:J

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$JsonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfter()V
    .locals 10

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->val$requestDeepLinkStartTime:J

    sub-long/2addr v0, v2

    .line 96
    .local v0, "duration":J
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v2, "properties":Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$200(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    const-string v3, "$deeplink_options"

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$200(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$000(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    const-string v3, "$deeplink_match_fail_reason"

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$000(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_1
    const-string v3, "$deeplink_url"

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->getDeepLinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v3, "$event_duration"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "%.3f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-float v8, v0

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 109
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getUtmProperties()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 110
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    iget-object v4, v3, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->mCallBack:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;->SENSORSDATA:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$200(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$100(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Z

    move-result v7

    move-wide v8, v0

    invoke-interface/range {v4 .. v9}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;->onFinish(Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;Ljava/lang/String;ZJ)V

    .line 113
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    const-string v4, "$AppDeeplinkMatchedResult"

    invoke-virtual {v3, v4, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 114
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$002(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$102(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Z)Z

    .line 74
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 78
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$102(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Z)Z

    .line 80
    const-string v1, "channel_params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 81
    .local v1, "channel":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->json2Map(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 82
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->parseParams(Ljava/util/Map;)V

    .line 83
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    const-string v4, "page_params"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$202(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    const-string v4, "errorMsg"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$002(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$000(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$102(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Z)Z

    .line 88
    .end local v1    # "channel":Lorg/json/JSONObject;
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;->access$102(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;Z)Z

    .line 91
    :goto_0
    return-void
.end method
