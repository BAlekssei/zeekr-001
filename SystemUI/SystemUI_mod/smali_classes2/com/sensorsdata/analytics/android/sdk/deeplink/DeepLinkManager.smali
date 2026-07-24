.class public Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;
.super Ljava/lang/Object;
.source "DeepLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;,
        Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$DeepLinkType;
    }
.end annotation


# static fields
.field public static final IS_ANALYTICS_DEEPLINK:Ljava/lang/String; = "is_analytics_deeplink"

.field private static mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDeepLink(Landroid/content/Intent;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "serverUrl"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 106
    return-object v0

    .line 109
    :cond_0
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;

    invoke-direct {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->isSensorsDataDeepLink(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    invoke-direct {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    return-object v0

    .line 112
    :cond_1
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->isUtmDeepLink(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/deeplink/ChannelDeepLink;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/ChannelDeepLink;-><init>(Landroid/content/Intent;)V

    return-object v0

    .line 115
    :cond_2
    return-object v0
.end method

.method private static isDeepLink(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSensorsDataDeepLink(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "serverHost"    # Ljava/lang/String;

    .line 90
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->isDeepLink(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 94
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 96
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "host":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "sensorsdata"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 101
    .end local v3    # "host":Ljava/lang/String;
    :cond_3
    return v1

    .line 91
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_0
    return v1
.end method

.method private static isUtmDeepLink(Landroid/content/Intent;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 67
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->isDeepLink(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 71
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    const-string v2, "ChannelDeepLink"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isOpaque"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v1

    .line 75
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 76
    .local v2, "parameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 77
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->hasLinkUtmProperties(Ljava/util/Set;)Z

    move-result v1

    return v1

    .line 79
    :cond_2
    return v1

    .line 68
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "parameterNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return v1
.end method

.method public static mergeDeepLinkProperty(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "properties"    # Lorg/json/JSONObject;

    .line 188
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    invoke-interface {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;->mergeDeepLinkProperty(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 194
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static parseDeepLink(Landroid/app/Activity;ZLcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isSaveDeepLinkInfo"    # Z
    .param p2, "callback"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    .line 152
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->createDeepLink(Landroid/content/Intent;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    .line 154
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    if-nez v2, :cond_0

    .line 155
    return v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->clearUtm(Landroid/content/Context;)V

    .line 160
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;

    invoke-direct {v3, p1, p0, p2}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$2;-><init>(ZLandroid/app/Activity;Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;)V

    invoke-interface {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;->setDeepLinkParseFinishCallback(Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;)V

    .line 171
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    invoke-interface {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;->parseDeepLink(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->trackDeepLinkLaunchEvent(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v0, 0x1

    return v0

    .line 175
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 176
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 178
    .end local v1    # "ex":Ljava/lang/Exception;
    return v0
.end method

.method public static resetDeepLinkProcessor()V
    .locals 1

    .line 200
    const/4 v0, 0x0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    .line 201
    return-void
.end method

.method private static trackDeepLinkLaunchEvent(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deepLink"    # Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;

    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v0, "properties":Lorg/json/JSONObject;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    .line 121
    .local v1, "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    instance-of v2, p1, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLink;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDeepLinkInstallSource()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 123
    .local v2, "isDeepLinkInstallSource":Z
    :goto_0
    :try_start_0
    const-string v3, "$deeplink_url"

    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkProcessor;->getDeepLinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v3, "$time"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_1

    .line 125
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 128
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getLatestUtmProperties()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 129
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getUtmProperties()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 130
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$1;

    invoke-direct {v3, v2, v0, p0, v1}, Lcom/sensorsdata/analytics/android/sdk/deeplink/DeepLinkManager$1;-><init>(ZLorg/json/JSONObject;Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->transformTaskQueue(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
