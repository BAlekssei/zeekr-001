.class public Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;
.super Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
.source "SensorsDataRemoteManagerDebug.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SensorsDataRemoteManagerDebug"


# instance fields
.field private errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V
    .locals 2
    .param p1, "sensorsDataAPI"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 45
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->errorMsg:Ljava/lang/String;

    .line 46
    const-string v0, "SA.SensorsDataRemoteManagerDebug"

    const-string v1, "remote config: Construct a SensorsDataRemoteManagerDebug"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private verifyRemoteRequestParameter(Landroid/net/Uri;Landroid/app/Activity;)Z
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "isVerify":Z
    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "os"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "os":Ljava/lang/String;
    const-string v3, "project"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "project":Ljava/lang/String;
    const-string v4, "nv"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "nv":Ljava/lang/String;
    const-string v5, ""

    .line 167
    .local v5, "localProject":Ljava/lang/String;
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "serverUrl":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 169
    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;

    invoke-direct {v7, v6}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getProject()Ljava/lang/String;

    move-result-object v5

    .line 171
    :cond_0
    const-string v7, "SA.SensorsDataRemoteManagerDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remote config: ServerUrl is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 173
    const-string v7, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8bbe\u5907\u7f51\u7edc\uff0c\u786e\u8ba4\u7f51\u7edc\u7545\u901a\u540e\uff0c\u8bf7\u91cd\u65b0\u626b\u63cf\u4e8c\u7ef4\u7801\u8fdb\u884c\u8c03\u8bd5"

    iput-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_1
    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 175
    const-string v7, "SDK \u7f51\u7edc\u6743\u9650\u5df2\u5173\u95ed\uff0c\u8bf7\u5141\u8bb8 SDK \u8bbf\u95ee\u7f51\u7edc"

    iput-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->errorMsg:Ljava/lang/String;

    .line 176
    const-string v7, "SA.SensorsDataRemoteManagerDebug"

    const-string v8, "enableNetworkRequest is false"

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-boolean v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->mDisableDefaultRemoteConfig:Z

    if-eqz v7, :cond_3

    .line 178
    const-string v7, "\u91c7\u96c6\u63a7\u5236\u7f51\u7edc\u6743\u9650\u5df2\u5173\u95ed\uff0c\u8bf7\u5141\u8bb8\u91c7\u96c6\u63a7\u5236\u8bbf\u95ee\u7f51\u7edc"

    iput-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->errorMsg:Ljava/lang/String;

    .line 179
    const-string v7, "SA.SensorsDataRemoteManagerDebug"

    const-string v8, "disableDefaultRemoteConfig is true"

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 181
    const-string v7, "App \u96c6\u6210\u7684\u9879\u76ee\u4e0e\u4e8c\u7ef4\u7801\u5bf9\u5e94\u7684\u9879\u76ee\u4e0d\u540c\uff0c\u65e0\u6cd5\u8fdb\u884c\u8c03\u8bd5"

    iput-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_4
    const-string v7, "Android"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 183
    const-string v7, "App \u4e0e\u4e8c\u7ef4\u7801\u5bf9\u5e94\u7684\u64cd\u4f5c\u7cfb\u7edf\u4e0d\u540c\uff0c\u65e0\u6cd5\u8fdb\u884c\u8c03\u8bd5"

    iput-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_5
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 185
    const-string v7, "\u5f53\u524d App \u4e0e\u4e8c\u7ef4\u7801\u5bf9\u5e94\u7684 App \u4e0d\u540c\uff0c\u65e0\u6cd5\u8fdb\u884c\u8c03\u8bd5"

    iput-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 186
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 187
    const-string v7, "\u4e8c\u7ef4\u7801\u4fe1\u606f\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u91c7\u96c6\u63a7\u5236\u662f\u5426\u914d\u7f6e\u6b63\u786e"

    iput-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_7
    const/4 v0, 0x1

    .line 191
    :goto_0
    const-string v7, "SA.SensorsDataRemoteManagerDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remote config: Uri is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v7, "SA.SensorsDataRemoteManagerDebug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remote config: The verification result is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return v0
.end method


# virtual methods
.method public applySDKConfigFromCache()V
    .locals 2

    .line 66
    const-string v0, "SA.SensorsDataRemoteManagerDebug"

    const-string v1, "remote config: Running applySDKConfigFromCache"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public checkRemoteConfig(Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->verifyRemoteRequestParameter(Landroid/net/Uri;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v2, "\u63d0\u793a"

    const-string v3, "\u5f00\u59cb\u83b7\u53d6\u91c7\u96c6\u63a7\u5236\u4fe1\u606f"

    const-string v4, "\u7ee7\u7eed"

    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;Landroid/app/Activity;Landroid/net/Uri;)V

    const-string v6, "\u53d6\u6d88"

    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug$2;

    invoke-direct {v7, p0, p2}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;Landroid/app/Activity;)V

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->errorMsg:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void
.end method

.method public pullSDKConfigFromServer()V
    .locals 2

    .line 51
    const-string v0, "SA.SensorsDataRemoteManagerDebug"

    const-string v1, "remote config: Running pullSDKConfigFromServer"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V
    .locals 2
    .param p1, "randomTimeType"    # Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;
    .param p2, "enableConfigV"    # Z

    .line 56
    const-string v0, "SA.SensorsDataRemoteManagerDebug"

    const-string v1, "remote config: Running requestRemoteConfig"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public resetPullSDKConfigTimer()V
    .locals 2

    .line 61
    const-string v0, "SA.SensorsDataRemoteManagerDebug"

    const-string v1, "remote config: Running resetPullSDKConfigTimer"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setSDKRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;)V
    .locals 5
    .param p1, "sdkRemoteConfig"    # Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v0, "eventProperties":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debug"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 74
    .local v1, "remoteConfigJson":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "remoteConfigString":Ljava/lang/String;
    const-string v3, "$app_remote_config"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    const-string v4, "$AppRemoteConfigChanged"

    invoke-virtual {v3, v4, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 77
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V

    .line 78
    sput-object p1, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->mSDKRemoteConfig:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;

    .line 79
    const-string v3, "SA.SensorsDataRemoteManagerDebug"

    const-string v4, "remote config: The remote configuration takes effect immediately"

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "eventProperties":Lorg/json/JSONObject;
    .end local v1    # "remoteConfigJson":Lorg/json/JSONObject;
    .end local v2    # "remoteConfigString":Ljava/lang/String;
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
