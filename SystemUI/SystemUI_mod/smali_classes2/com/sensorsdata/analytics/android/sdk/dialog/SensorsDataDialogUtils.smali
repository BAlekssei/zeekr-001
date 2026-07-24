.class public Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;
.super Ljava/lang/Object;
.source "SensorsDataDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$SendDebugIdThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SensorsDataDialogUtils"

.field private static sDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .line 67
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showChannelDebugErrorDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    .line 67
    invoke-static/range {p0 .. p6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->requestActiveChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    return-void
.end method

.method public static dialogShowDismissOld(Landroid/app/Dialog;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;

    .line 498
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->sDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->sDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 500
    :try_start_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->sDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 501
    const-string v0, "SA.SensorsDataDialogUtils"

    const-string v1, "Dialog dismiss"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 504
    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 506
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->sDialog:Landroid/app/Dialog;

    .line 507
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 510
    goto :goto_1

    .line 508
    :catch_1
    move-exception v0

    .line 509
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 511
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static getDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 6

    .line 345
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 346
    .local v0, "pressDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 347
    const-string v2, "#dddddd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 349
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 350
    .local v2, "normalDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 351
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 353
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 354
    .local v3, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x101009c

    aput v5, v4, v1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 355
    new-array v1, v1, [I

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 356
    return-object v3
.end method

.method public static isSchemeActivity(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 478
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 479
    return v0

    .line 481
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    return v0

    .line 485
    :cond_1
    const-class v2, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    const-string v2, "SCHEME_ACTIVITY_SIGN"

    invoke-static {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findFieldRecur(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 487
    .local v2, "scheme_activity_sign":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 488
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    const-string v3, "#*#scheme_activity_sign#*#"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 491
    .end local v2    # "scheme_activity_sign":Ljava/lang/Object;
    :cond_2
    return v0
.end method

.method private static requestActiveChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V
    .locals 5
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "monitorId"    # Ljava/lang/String;
    .param p2, "projectId"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "deviceCode"    # Ljava/lang/String;
    .param p5, "isActive"    # Z
    .param p6, "callback"    # Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;

    .line 518
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 519
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "monitor_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v1, "distinct_id"

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getDistinctId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v1, "project_id"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v1, "has_active"

    if-eqz p5, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v1, "device_code"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 525
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;->POST:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/api/sdk/channel_tool/url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->jsonData(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callback(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v0    # "json":Lorg/json/JSONObject;
    goto :goto_1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 530
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static showChannelDebugDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "monitorId"    # Ljava/lang/String;
    .param p3, "projectId"    # Ljava/lang/String;
    .param p4, "accountId"    # Ljava/lang/String;

    .line 96
    const-string v1, "\u5373\u5c06\u5f00\u542f\u8054\u8c03\u6a21\u5f0f"

    const-string v2, ""

    const-string v3, "\u786e\u5b9a"

    new-instance v10, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;

    move-object v4, v10

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$2;

    invoke-direct {v6, p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$2;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 156
    return-void
.end method

.method private static showChannelDebugErrorDialog(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .line 160
    const-string v1, "\u68c0\u6d4b\u5230 \u201c\u8bbe\u5907\u7801\u4e3a\u7a7a\u201d\uff0c\u53ef\u80fd\u539f\u56e0\u5982\u4e0b\uff0c\u8bf7\u6392\u67e5\uff1a"

    const-string v2, "1. \u5f00\u542f App \u65f6\u62d2\u7edd\u201c\u7535\u8bdd\u201d\u6388\u6743\uff1b\n2. \u624b\u673a\u7cfb\u7edf\u6743\u9650\u8bbe\u7f6e\u4e2d\u662f\u5426\u5173\u95ed\u201c\u7535\u8bdd\u201d\u6388\u6743\uff1b\n3. \u8bf7\u8054\u7cfb\u7814\u53d1\u4eba\u5458\u786e\u8ba4\u662f\u5426\u201c\u8c03\u7528 trackInstallation \u63a5\u53e3\u5728\u83b7\u53d6\u201c\u7535\u8bdd\u201d\u6388\u6743\u4e4b\u540e\u3002\n\n \u6392\u67e5\u4fee\u590d\u540e\uff0c\u8bf7\u5148\u5378\u8f7d\u5e94\u7528\u5e76\u91cd\u65b0\u5b89\u88c5\uff0c\u518d\u626b\u7801\u8fdb\u884c\u8054\u8c03\u3002"

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$3;

    invoke-direct {v4, p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$3;-><init>(Landroid/app/Activity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    return-void
.end method

.method public static showDebugModeSelectDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "infoId"    # Ljava/lang/String;
    .param p2, "locationHref"    # Ljava/lang/String;
    .param p3, "project"    # Ljava/lang/String;

    .line 224
    :try_start_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getDebugMode()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;-><init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    .line 225
    .local v0, "dialog":Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->setCanceledOnTouchOutside(Z)V

    .line 226
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$5;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->setOnDebugModeDialogClickListener(Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog$OnDebugModeViewClickListener;)V

    .line 238
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$6;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 272
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->dialogShowDismissOld(Landroid/app/Dialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0    # "dialog":Lcom/sensorsdata/analytics/android/sdk/dialog/DebugModeSelectDialog;
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "positiveLabel"    # Ljava/lang/String;
    .param p4, "positiveOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negativeLabel"    # Ljava/lang/String;
    .param p6, "negativeOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 74
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 80
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 84
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 88
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->dialogShowDismissOld(Landroid/app/Dialog;)V

    .line 89
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 426
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 427
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$11;

    invoke-direct {v3, p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$11;-><init>(Landroid/content/Context;)V

    .line 428
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 435
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->dialogShowDismissOld(Landroid/app/Dialog;)V

    .line 437
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 438
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 442
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static showOpenHeatMapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "postUrl"    # Ljava/lang/String;

    .line 281
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const-string v0, "\u5df2\u5173\u95ed\u7f51\u7edc\u8bf7\u6c42\uff08NetworkRequest\uff09\uff0c\u65e0\u6cd5\u4f7f\u7528 App \u70b9\u51fb\u5206\u6790\uff0c\u8bf7\u5f00\u542f\u540e\u518d\u8bd5\uff01"

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    return-void

    .line 286
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isHeatMapEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    const-string v0, "SDK \u6ca1\u6709\u88ab\u6b63\u786e\u96c6\u6210\uff0c\u8bf7\u8054\u7cfb\u8d35\u65b9\u6280\u672f\u4eba\u5458\u5f00\u542f\u70b9\u51fb\u5206\u6790\u3002"

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 288
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 293
    .local v1, "isWifi":Z
    :try_start_1
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "networkType":Ljava/lang/String;
    const-string v3, "WIFI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    .line 295
    const/4 v1, 0x1

    .line 299
    .end local v2    # "networkType":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 297
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 301
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 303
    if-eqz v1, :cond_3

    .line 304
    const-string v3, "\u6b63\u5728\u8fde\u63a5 App \u70b9\u51fb\u5206\u6790..."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 306
    :cond_3
    const-string v3, "\u6b63\u5728\u8fde\u63a5 App \u70b9\u51fb\u5206\u6790\uff0c\u5efa\u8bae\u5728 WiFi \u73af\u5883\u4e0b\u4f7f\u7528\u3002"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 308
    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 309
    const-string v0, "\u53d6\u6d88"

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$7;

    invoke-direct {v3, p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    const-string v0, "\u7ee7\u7eed"

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$8;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 323
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->dialogShowDismissOld(Landroid/app/Dialog;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 325
    const/4 v3, -0x2

    :try_start_3
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 326
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 327
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/high16 v6, -0x10000

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 328
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 329
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v4, v6, :cond_4

    .line 330
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 333
    :cond_4
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    :goto_2
    goto :goto_3

    .line 336
    :catch_1
    move-exception v3

    .line 337
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 341
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "isWifi":Z
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_4

    .line 339
    :catch_2
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public static showOpenVisualizedAutoTrackDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "postUrl"    # Ljava/lang/String;

    .line 361
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    const-string v0, "\u5df2\u5173\u95ed\u7f51\u7edc\u8bf7\u6c42\uff08NetworkRequest\uff09\uff0c\u65e0\u6cd5\u4f7f\u7528 App \u53ef\u89c6\u5316\u5168\u57cb\u70b9\uff0c\u8bf7\u5f00\u542f\u540e\u518d\u8bd5\uff01"

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    return-void

    .line 365
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    const-string v0, "SDK \u6ca1\u6709\u88ab\u6b63\u786e\u96c6\u6210\uff0c\u8bf7\u8054\u7cfb\u8d35\u65b9\u6280\u672f\u4eba\u5458\u5f00\u542f\u53ef\u89c6\u5316\u5168\u57cb\u70b9\u3002"

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 367
    return-void

    .line 370
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 372
    .local v1, "isWifi":Z
    :try_start_1
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "networkType":Ljava/lang/String;
    const-string v3, "WIFI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    .line 374
    const/4 v1, 0x1

    .line 378
    .end local v2    # "networkType":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 376
    :catch_0
    move-exception v2

    .line 380
    :goto_0
    :try_start_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 382
    if-eqz v1, :cond_3

    .line 383
    const-string v3, "\u6b63\u5728\u8fde\u63a5 App \u53ef\u89c6\u5316\u5168\u57cb\u70b9..."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 385
    :cond_3
    const-string v3, "\u6b63\u5728\u8fde\u63a5 App \u53ef\u89c6\u5316\u5168\u57cb\u70b9\uff0c\u5efa\u8bae\u5728 WiFi \u73af\u5883\u4e0b\u4f7f\u7528\u3002"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 388
    const-string v0, "\u53d6\u6d88"

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$9;

    invoke-direct {v3, p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$9;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    const-string v0, "\u7ee7\u7eed"

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$10;

    invoke-direct {v3, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$10;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 402
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->dialogShowDismissOld(Landroid/app/Dialog;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 404
    const/4 v3, -0x2

    :try_start_3
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 405
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 406
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/high16 v6, -0x10000

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 407
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 408
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v4, v6, :cond_4

    .line 409
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 410
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 412
    :cond_4
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->getDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 417
    :goto_2
    goto :goto_3

    .line 415
    :catch_1
    move-exception v3

    .line 416
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 420
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "isWifi":Z
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_4

    .line 418
    :catch_2
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public static showPairingCodeInputDialog(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 445
    if-nez p0, :cond_0

    .line 446
    const-string v0, "SA.SensorsDataDialogUtils"

    const-string v1, "The argument context can\'t be null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void

    .line 449
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 450
    const-string v0, "SA.SensorsDataDialogUtils"

    const-string v1, "The static method showPairingCodeEditDialog(Context context) only accepts Activity as a parameter"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void

    .line 453
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 454
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$12;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$12;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method public static showPopupWindowDialog(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 174
    :try_start_0
    const-string v0, "com.sensorsdata.sf.ui.utils.PreviewUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 175
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "sf_popup_test"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "sfPopupTest":Ljava/lang/String;
    const-string v2, "popup_window_id"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "popupWindowId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 178
    .local v3, "isSfPopupTest":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    move v3, v4

    .line 181
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 182
    .local v4, "methods":[Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 183
    .local v5, "currentMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 184
    .local v6, "failCallback":Ljava/lang/Runnable;
    array-length v7, v4

    const/4 v8, 0x0

    move-object v9, v5

    move v5, v8

    .end local v5    # "currentMethod":Ljava/lang/reflect/Method;
    .local v9, "currentMethod":Ljava/lang/reflect/Method;
    :goto_0
    const/4 v10, 0x4

    if-ge v5, v7, :cond_2

    aget-object v11, v4, v5

    .line 185
    .local v11, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "showPreview"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 186
    move-object v9, v11

    .line 187
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    if-ne v12, v10, :cond_1

    .line 188
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4;

    invoke-direct {v5, p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4;-><init>(Landroid/app/Activity;)V

    move-object v6, v5

    .line 200
    goto :goto_1

    .line 184
    .end local v11    # "method":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 204
    :cond_2
    :goto_1
    if-eqz v9, :cond_4

    .line 205
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_3

    .line 206
    new-array v10, v10, [Ljava/lang/Object;

    aput-object p0, v10, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v10, v12

    aput-object v2, v10, v7

    aput-object v6, v10, v5

    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 208
    :cond_3
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v12

    aput-object v2, v5, v7

    invoke-virtual {v9, v11, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :goto_2
    sput-boolean v12, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isPopWindow:Z

    goto :goto_3

    .line 213
    :cond_4
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "sfPopupTest":Ljava/lang/String;
    .end local v2    # "popupWindowId":Ljava/lang/String;
    .end local v3    # "isSfPopupTest":Z
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    .end local v6    # "failCallback":Ljava/lang/Runnable;
    .end local v9    # "currentMethod":Ljava/lang/reflect/Method;
    :goto_3
    goto :goto_4

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 218
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public static startLaunchActivity(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 465
    :try_start_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->isSchemeActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 467
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 468
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 469
    move-object v2, p0

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->finish()V

    .line 470
    const-string v2, "SA.SensorsDataDialogUtils"

    const-string v3, "startLaunchActivity"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
