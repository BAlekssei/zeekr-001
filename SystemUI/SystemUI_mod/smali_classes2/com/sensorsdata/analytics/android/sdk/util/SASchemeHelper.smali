.class public Lcom/sensorsdata/analytics/android/sdk/util/SASchemeHelper;
.super Ljava/lang/Object;
.source "SASchemeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SASchemeUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkProjectIsValid(Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "serverUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "sdkProject":Ljava/lang/String;
    const/4 v2, 0x0

    .line 185
    .local v2, "serverProject":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 187
    .local v3, "schemeUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 188
    const-string v4, "project"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .end local v3    # "schemeUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 193
    .local v3, "serverUri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 194
    const-string v4, "project"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .end local v3    # "serverUri":Landroid/net/Uri;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static handleSchemeUrl(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 41
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isSDKDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "SA.SASchemeUtil"

    const-string v1, "SDK is disabled,scan code function has been turned off"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    instance-of v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-eqz v0, :cond_1

    .line 46
    const-string v0, "SA.SASchemeUtil"

    const-string v1, "SDK is not init"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 52
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 177
    .end local v0    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 54
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v0, :cond_1a

    .line 55
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    .line 56
    .local v1, "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "host":Ljava/lang/String;
    const-string v3, "heatmap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 58
    const-string v3, "feature_code"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "featureCode":Ljava/lang/String;
    const-string v5, "url"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "postUrl":Ljava/lang/String;
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/SASchemeHelper;->checkProjectIsValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 61
    invoke-static {p0, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showOpenHeatMapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_3
    const-string v6, "App \u96c6\u6210\u7684\u9879\u76ee\u4e0e\u7535\u8111\u6d4f\u89c8\u5668\u6253\u5f00\u7684\u9879\u76ee\u4e0d\u540c\uff0c\u65e0\u6cd5\u8fdb\u884c\u70b9\u51fb\u5206\u6790"

    invoke-static {p0, v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 66
    .end local v3    # "featureCode":Ljava/lang/String;
    .end local v5    # "postUrl":Ljava/lang/String;
    goto/16 :goto_a

    :cond_4
    const-string v3, "debugmode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 67
    const-string v3, "info_id"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "infoId":Ljava/lang/String;
    const-string v5, "sf_push_distinct_id"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "locationHref":Ljava/lang/String;
    const-string v6, "project"

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "project":Ljava/lang/String;
    invoke-static {p0, v3, v5, v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDebugModeSelectDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    .end local v3    # "infoId":Ljava/lang/String;
    .end local v5    # "locationHref":Ljava/lang/String;
    .end local v6    # "project":Ljava/lang/String;
    goto/16 :goto_a

    :cond_5
    const-string v3, "visualized"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 73
    const-string v3, "feature_code"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "featureCode":Ljava/lang/String;
    const-string v5, "url"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "postUrl":Ljava/lang/String;
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/SASchemeHelper;->checkProjectIsValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 76
    invoke-static {p0, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showOpenVisualizedAutoTrackDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_6
    const-string v6, "App \u96c6\u6210\u7684\u9879\u76ee\u4e0e\u7535\u8111\u6d4f\u89c8\u5668\u6253\u5f00\u7684\u9879\u76ee\u4e0d\u540c\uff0c\u65e0\u6cd5\u8fdb\u884c\u53ef\u89c6\u5316\u5168\u57cb\u70b9\u3002"

    invoke-static {p0, v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    :goto_2
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    .end local v3    # "featureCode":Ljava/lang/String;
    .end local v5    # "postUrl":Ljava/lang/String;
    goto/16 :goto_a

    :cond_7
    const-string v3, "popupwindow"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 82
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showPopupWindowDialog(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 83
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 84
    :cond_8
    const-string v3, "encrypt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 85
    const-string v3, "v"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "version":Ljava/lang/String;
    const-string v5, "key"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "key":Ljava/lang/String;
    const-string v6, "symmetricEncryptType"

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "symmetricEncryptType":Ljava/lang/String;
    const-string v7, "asymmetricEncryptType"

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "asymmetricEncryptType":Ljava/lang/String;
    const-string v8, "SA.SASchemeUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encrypt, version = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", symmetricEncryptType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", asymmetricEncryptType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_3

    .line 96
    :cond_9
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSensorsDataEncrypt()Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 97
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSensorsDataEncrypt()Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;

    move-result-object v8

    invoke-virtual {v8, v3, v5, v6, v7}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SensorsDataEncrypt;->checkPublicSecretKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 99
    :cond_a
    const-string v8, "\u5f53\u524d App \u672a\u5f00\u542f\u52a0\u5bc6\uff0c\u8bf7\u5f00\u542f\u52a0\u5bc6\u540e\u518d\u8bd5"

    goto :goto_4

    .line 95
    :cond_b
    :goto_3
    const-string v8, "\u5bc6\u94a5\u9a8c\u8bc1\u4e0d\u901a\u8fc7\uff0c\u6240\u9009\u5bc6\u94a5\u65e0\u6548"

    .line 99
    .local v8, "tip":Ljava/lang/String;
    :goto_4
    nop

    .line 101
    invoke-static {p0, v8}, Lcom/sensorsdata/analytics/android/sdk/util/ToastUtil;->showLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    .end local v3    # "version":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "symmetricEncryptType":Ljava/lang/String;
    .end local v7    # "asymmetricEncryptType":Ljava/lang/String;
    .end local v8    # "tip":Ljava/lang/String;
    goto/16 :goto_a

    :cond_c
    const-string v3, "channeldebug"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 105
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->hasUtmByMetaData(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 106
    const-string v3, "\u5f53\u524d\u4e3a\u6e20\u9053\u5305\uff0c\u65e0\u6cd5\u4f7f\u7528\u8054\u8c03\u8bca\u65ad\u5de5\u5177"

    invoke-static {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    return-void

    .line 110
    :cond_d
    const-string v3, "monitor_id"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "monitorId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 112
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    .line 113
    return-void

    .line 115
    :cond_e
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 117
    const-string v4, "\u6570\u636e\u63a5\u6536\u5730\u5740\u9519\u8bef\uff0c\u65e0\u6cd5\u4f7f\u7528\u8054\u8c03\u8bca\u65ad\u5de5\u5177"

    invoke-static {p0, v4}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    return-void

    .line 120
    :cond_f
    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;

    invoke-direct {v6, v5}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;-><init>(Ljava/lang/String;)V

    .line 121
    .local v6, "serverUrl":Lcom/sensorsdata/analytics/android/sdk/ServerUrl;
    const-string v7, "project_name"

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "projectName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getProject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 123
    const-string v8, "project_id"

    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "projectId":Ljava/lang/String;
    const-string v9, "account_id"

    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "accountId":Ljava/lang/String;
    const-string v10, "is_relink"

    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "isReLink":Ljava/lang/String;
    const-string v11, "1"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 127
    const-string v11, "device_code"

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "deviceCode":Ljava/lang/String;
    invoke-static {p0, v11}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->checkDeviceInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 129
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->showChannelDebugActiveDialog(Landroid/app/Activity;)V

    goto :goto_5

    .line 131
    :cond_10
    const-string v12, "\u65e0\u6cd5\u91cd\u8fde\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u66f4\u6362\u4e86\u8054\u8c03\u624b\u673a"

    invoke-static {p0, v12}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    .end local v11    # "deviceCode":Ljava/lang/String;
    :goto_5
    goto :goto_6

    .line 134
    :cond_11
    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getBaseUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v3, v8, v9}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showChannelDebugDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v8    # "projectId":Ljava/lang/String;
    .end local v9    # "accountId":Ljava/lang/String;
    .end local v10    # "isReLink":Ljava/lang/String;
    :goto_6
    goto :goto_7

    .line 137
    :cond_12
    const-string v8, "App \u96c6\u6210\u7684\u9879\u76ee\u4e0e\u7535\u8111\u6d4f\u89c8\u5668\u6253\u5f00\u7684\u9879\u76ee\u4e0d\u540c\uff0c\u65e0\u6cd5\u4f7f\u7528\u8054\u8c03\u8bca\u65ad\u5de5\u5177"

    invoke-static {p0, v8}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    :goto_7
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    .end local v3    # "monitorId":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "serverUrl":Lcom/sensorsdata/analytics/android/sdk/ServerUrl;
    .end local v7    # "projectName":Ljava/lang/String;
    goto/16 :goto_a

    :cond_13
    const-string v3, "abtest"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-eqz v3, :cond_14

    .line 142
    :try_start_1
    const-string v3, "com.sensorsdata.abtest.core.SensorsABTestSchemeHandler"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "handleSchemeUrl"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v6, v5}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    goto :goto_8

    .line 143
    :catch_1
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 146
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_8
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_a

    .line 148
    :cond_14
    const-string v3, "sensorsdataremoteconfig"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 150
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->enableLog(Z)V

    .line 151
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v3

    .line 153
    .local v3, "sensorsDataSDKRemoteManager":Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
    if-eqz v3, :cond_15

    .line 154
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->resetPullSDKConfigTimer()V

    .line 156
    :cond_15
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;

    invoke-direct {v5, v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    .line 159
    .local v5, "sensorsDataRemoteManagerDebug":Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;
    invoke-virtual {v1, v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setRemoteManager(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;)V

    .line 161
    const-string v6, "SA.SASchemeUtil"

    const-string v7, "Start debugging remote config"

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v5, v0, p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;->checkRemoteConfig(Landroid/net/Uri;Landroid/app/Activity;)V

    .line 163
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    .end local v3    # "sensorsDataSDKRemoteManager":Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
    .end local v5    # "sensorsDataRemoteManagerDebug":Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManagerDebug;
    goto :goto_a

    :cond_16
    const-string v3, "assistant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 165
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v3

    .line 166
    .local v3, "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    if-eqz v3, :cond_17

    iget-boolean v4, v3, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mDisableDebugAssistant:Z

    if-eqz v4, :cond_17

    .line 167
    return-void

    .line 169
    :cond_17
    const-string v4, "service"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "service":Ljava/lang/String;
    const-string v5, "pairingCode"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 171
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showPairingCodeInputDialog(Landroid/content/Context;)V

    .line 173
    .end local v3    # "configOptions":Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .end local v4    # "service":Ljava/lang/String;
    :cond_18
    goto :goto_a

    .line 174
    :cond_19
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "sensorsDataAPI":Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    .end local v2    # "host":Ljava/lang/String;
    goto :goto_a

    .line 177
    :goto_9
    nop

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 179
    :cond_1a
    :goto_a
    nop

    .line 180
    :goto_b
    return-void
.end method
