.class public Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;
.super Ljava/lang/Object;
.source "PushAutoTrackHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.PushAutoTrackHelper"

.field private static lastPushClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->lastPushClickTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSFData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "extras"    # Ljava/lang/String;

    .line 678
    const/4 v0, 0x0

    .line 680
    .local v0, "sfData":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 681
    .local v1, "sfDataJson":Lorg/json/JSONObject;
    const-string v2, "sf_data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 684
    .end local v1    # "sfDataJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    .line 683
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SA.PushAutoTrackHelper"

    const-string v3, "get sf_data failed"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static hookIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 648
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 650
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->hookIntent(Landroid/content/Intent;)V

    .line 651
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "hookIntent"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 655
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static hookIntentGetActivity(Landroid/content/Context;ILandroid/content/Intent;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 473
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    .line 474
    return-void
.end method

.method public static hookIntentGetActivityBundle(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 486
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    .line 487
    return-void
.end method

.method public static hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 545
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    .line 546
    return-void
.end method

.method public static hookIntentGetForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 595
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    .line 596
    return-void
.end method

.method public static hookIntentGetService(Landroid/content/Context;ILandroid/content/Intent;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 570
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntent(Landroid/content/Intent;)V

    .line 571
    return-void
.end method

.method private static hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 618
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    .line 621
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "hookPendingIntent"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 625
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static hookPendingIntentGetActivity(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V
    .locals 0
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .line 499
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    .line 500
    return-void
.end method

.method public static hookPendingIntentGetActivityBundle(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 461
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    .line 462
    return-void
.end method

.method public static hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V
    .locals 0
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .line 558
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    .line 559
    return-void
.end method

.method public static hookPendingIntentGetForegroundService(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V
    .locals 0
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .line 608
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    .line 609
    return-void
.end method

.method public static hookPendingIntentGetService(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V
    .locals 0
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .line 583
    invoke-static {p3, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V

    .line 584
    return-void
.end method

.method private static isRepeatEvent()Z
    .locals 6

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 209
    .local v0, "currentTime":J
    const-string v2, "SA.PushAutoTrackHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",lastPushClickTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->lastPushClickTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-wide v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->lastPushClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 211
    sput-wide v0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->lastPushClickTime:J

    .line 212
    const/4 v2, 0x0

    return v2

    .line 214
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private static isTrackPushEnabled()Z
    .locals 3

    .line 664
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    instance-of v1, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-nez v1, :cond_1

    .line 665
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 666
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableTrackPush:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 667
    :cond_1
    :goto_0
    const-string v1, "SA.PushAutoTrackHelper"

    const-string v2, "SDK or push disabled."

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    return v0

    .line 671
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 674
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 510
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastServiceIntent(Landroid/content/Intent;)V

    .line 511
    return-void
.end method

.method private static onBroadcastServiceIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 633
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 635
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->onNotificationClick(Landroid/content/Context;Landroid/content/Intent;)V

    .line 636
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "onBroadcastServiceIntent"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 640
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static onGeTuiNotificationClicked(Ljava/lang/Object;)V
    .locals 4
    .param p0, "gtNotificationMessage"    # Ljava/lang/Object;

    .line 290
    if-nez p0, :cond_0

    .line 291
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "gtNotificationMessage is null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void

    .line 294
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 296
    :cond_1
    :try_start_0
    const-string v0, "getMessageId"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    .local v0, "msgId":Ljava/lang/String;
    const-string v2, "getTitle"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    .local v2, "title":Ljava/lang/String;
    const-string v3, "getContent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    .local v1, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 300
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 301
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 302
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->trackGTClickDelayed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "msgId":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static onGeTuiReceiveMessageData(Ljava/lang/Object;)V
    .locals 4
    .param p0, "gtTransmitMessage"    # Ljava/lang/Object;

    .line 315
    if-nez p0, :cond_0

    .line 316
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "gtNotificationMessage is null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void

    .line 319
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 321
    :cond_1
    :try_start_0
    const-string v0, "getPayload"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 322
    .local v0, "bytes":[B
    const-string v2, "getMessageId"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, "msgId":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 325
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 326
    .local v2, "sfData":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->trackReceiveMessageData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v0    # "bytes":[B
    .end local v1    # "msgId":Ljava/lang/String;
    .end local v2    # "sfData":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static onNewIntent(Ljava/lang/Object;Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Ljava/lang/Object;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 439
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    :try_start_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 442
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->onNotificationClick(Landroid/content/Context;Landroid/content/Intent;)V

    .line 443
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_1
    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 448
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static onNotify(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 1
    .param p0, "manager"    # Landroid/app/NotificationManager;
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 424
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static onNotify(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/NotificationManager;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .line 407
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->onNotify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 410
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "onNotify"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static onServiceStart(Landroid/app/Service;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 521
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastServiceIntent(Landroid/content/Intent;)V

    .line 522
    return-void
.end method

.method public static onServiceStartCommand(Landroid/app/Service;Landroid/content/Intent;II)V
    .locals 0
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 533
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastServiceIntent(Landroid/content/Intent;)V

    .line 534
    return-void
.end method

.method public static onUMengActivityMessage(Landroid/content/Intent;)V
    .locals 12
    .param p0, "intent"    # Landroid/content/Intent;

    .line 371
    if-nez p0, :cond_0

    .line 372
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void

    .line 375
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 378
    :cond_1
    :try_start_0
    const-string v0, "body"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "intentBody":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 380
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 381
    .local v1, "raw":Lorg/json/JSONObject;
    const-string v2, "body"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 382
    .local v2, "body":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 383
    const-string v3, "extra"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "extra":Ljava/lang/String;
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "title":Ljava/lang/String;
    const-string v5, "text"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, "content":Ljava/lang/String;
    const-string v6, "message_source"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, "messageSource":Ljava/lang/String;
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, "sfData":Ljava/lang/String;
    const-string v8, "UMeng"

    invoke-static {v7, v4, v5, v8, v6}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v8, "SA.PushAutoTrackHelper"

    const-string v9, "onUMengActivityMessage is called, title is %s, content is %s, extras is %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v0    # "intentBody":Ljava/lang/String;
    .end local v1    # "raw":Lorg/json/JSONObject;
    .end local v2    # "body":Lorg/json/JSONObject;
    .end local v3    # "extra":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "messageSource":Ljava/lang/String;
    .end local v7    # "sfData":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static onUMengNotificationClick(Ljava/lang/Object;)V
    .locals 10
    .param p0, "UMessage"    # Ljava/lang/Object;

    .line 339
    if-nez p0, :cond_0

    .line 340
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "UMessage is null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void

    .line 343
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 345
    :cond_1
    :try_start_0
    const-string v0, "getRaw"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 346
    .local v0, "raw":Lorg/json/JSONObject;
    if-nez v0, :cond_2

    .line 347
    const-string v1, "SA.PushAutoTrackHelper"

    const-string v2, "onUMengNotificationClick:raw is null"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void

    .line 350
    :cond_2
    const-string v2, "body"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 351
    .local v2, "body":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 352
    const-string v3, "extra"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "extra":Ljava/lang/String;
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "title":Ljava/lang/String;
    const-string v5, "text"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "content":Ljava/lang/String;
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "sfData":Ljava/lang/String;
    const-string v7, "UMeng"

    const/4 v8, 0x0

    invoke-static {v6, v4, v5, v7, v8}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v7, "SA.PushAutoTrackHelper"

    const-string v8, "onUMengNotificationClick is called, title is %s, content is %s, extras is %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v1

    const/4 v1, 0x1

    aput-object v5, v9, v1

    const/4 v1, 0x2

    aput-object v3, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v0    # "raw":Lorg/json/JSONObject;
    .end local v2    # "body":Lorg/json/JSONObject;
    .end local v3    # "extra":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "sfData":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 363
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static trackGeTuiNotificationClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "sfData"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 199
    const-string v3, "GeTui"

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 200
    return-void
.end method

.method public static trackJPushAppOpenNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "extras"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "appPushChannel"    # Ljava/lang/String;

    .line 230
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "trackJPushAppOpenNotification is called, title is %s, content is %s, extras is %s, appPushChannel is %s, appPushServiceName is %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    const-string v4, "JPush"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "sfData":Ljava/lang/String;
    const-string v1, "JPush"

    invoke-static {v0, p1, p2, v1, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static trackJPushOpenActivity(Landroid/content/Intent;)V
    .locals 11
    .param p0, "intent"    # Landroid/content/Intent;

    .line 54
    if-nez p0, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 62
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "JMessageExtra"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_3
    const-string v1, "SA.PushAutoTrackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackJPushOpenActivity is called, Intent data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 75
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SA.PushAutoTrackHelper"

    const-string v4, "Failed to construct JSON"

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_7

    .line 80
    const-string v2, "n_title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "title":Ljava/lang/String;
    const-string v3, "n_content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "content":Ljava/lang/String;
    const-string v4, "n_extras"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "extras":Ljava/lang/String;
    const-string v5, "rom_type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    .line 84
    .local v5, "whichPushSDK":B
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushUtils;->getJPushSDKName(B)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "appPushChannel":Ljava/lang/String;
    const-string v7, "SA.PushAutoTrackHelper"

    const-string v8, "trackJPushOpenActivity is called, title is %s, content is %s, extras is %s, appPushChannel is %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 90
    :cond_5
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "sfData":Ljava/lang/String;
    const-string v8, "JPush"

    invoke-static {v7, v2, v3, v8, v6}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "extras":Ljava/lang/String;
    .end local v5    # "whichPushSDK":B
    .end local v6    # "appPushChannel":Ljava/lang/String;
    .end local v7    # "sfData":Ljava/lang/String;
    goto :goto_2

    .line 88
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "title":Ljava/lang/String;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v4    # "extras":Ljava/lang/String;
    .restart local v5    # "whichPushSDK":B
    .restart local v6    # "appPushChannel":Ljava/lang/String;
    :cond_6
    :goto_1
    return-void

    .line 99
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "extras":Ljava/lang/String;
    .end local v5    # "whichPushSDK":B
    .end local v6    # "appPushChannel":Ljava/lang/String;
    :cond_7
    :goto_2
    goto :goto_3

    .line 97
    :catch_1
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public static trackMeizuAppOpenNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "extras"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "appPushServiceName"    # Ljava/lang/String;

    .line 250
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isTrackPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "trackMeizuAppOpenNotification is called, title is %s, content is %s, extras is %s, appPushChannel is %s, appPushServiceName is %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    const-string v4, "Meizu"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object v0, p0

    .line 257
    .local v0, "nExtras":Ljava/lang/String;
    const/4 v1, 0x0

    .line 259
    .local v1, "extrasJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SA.PushAutoTrackHelper"

    const-string v4, "Failed to construct JSON"

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "JMessageExtra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    const-string v2, "JMessageExtra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 266
    .local v2, "jMessageJson":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 267
    const-string v3, "m_content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 268
    .local v3, "contentJson":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 269
    const-string v4, "n_extras"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 272
    .end local v3    # "contentJson":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "JPush"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p3, v3

    .line 276
    .end local v1    # "extrasJson":Lorg/json/JSONObject;
    .end local v2    # "jMessageJson":Lorg/json/JSONObject;
    :cond_2
    goto :goto_1

    .line 274
    :catch_1
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->getSFData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "sfData":Ljava/lang/String;
    const-string v2, "Meizu"

    invoke-static {v1, p1, p2, p3, v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 281
    .end local v0    # "nExtras":Ljava/lang/String;
    .end local v1    # "sfData":Ljava/lang/String;
    goto :goto_2

    .line 279
    :catch_2
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "sfData"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "appPushServiceName"    # Ljava/lang/String;
    .param p4, "appPushChannel"    # Ljava/lang/String;

    .line 116
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 117
    return-void
.end method

.method private static trackNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p0, "sfData"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "appPushServiceName"    # Ljava/lang/String;
    .param p4, "appPushChannel"    # Ljava/lang/String;
    .param p5, "time"    # J

    .line 136
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->isRepeatEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "SA.PushAutoTrackHelper"

    const-string v1, "$AppPushClick Repeat trigger, title is %s, content is %s, extras is %s, appPushChannel is %s, appPushServiceName is %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 142
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v0, "eventProperties":Lorg/json/JSONObject;
    const-string v1, "$app_push_msg_title"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v1, "$app_push_msg_content"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v1, "$app_push_service_name"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    const-string v1, "$app_push_channel"

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 150
    :cond_1
    const/4 v1, 0x0

    .line 151
    .local v1, "sfDataProperties":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_2

    .line 153
    :try_start_2
    const-string v2, "SA.PushAutoTrackHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sfData is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "SA.PushAutoTrackHelper"

    const-string v4, "Failed to construct JSON"

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "sf_plan_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    const-string v2, "$sf_msg_title"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v2, "$sf_msg_content"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v2, "$sf_msg_id"

    const-string v3, "sf_msg_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v2, "$sf_plan_id"

    const-string v3, "sf_plan_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v2, "$sf_audience_id"

    const-string v3, "sf_audience_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v2, "$sf_link_url"

    const-string v3, "sf_link_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v2, "$sf_plan_strategy_id"

    const-string v3, "sf_plan_strategy_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v2, "$sf_plan_type"

    const-string v3, "sf_plan_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v2, "$sf_strategy_unit_id"

    const-string v3, "sf_strategy_unit_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v2, "$sf_enter_plan_time"

    const-string v3, "sf_enter_plan_time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v2, "$sf_channel_id"

    const-string v3, "sf_channel_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v2, "$sf_channel_category"

    const-string v3, "sf_channel_category"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v2, "$sf_channel_service_name"

    const-string v3, "sf_channel_service_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 176
    .end local v1    # "sfDataProperties":Lorg/json/JSONObject;
    :cond_3
    goto :goto_1

    .line 174
    :catch_1
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-lez v1, :cond_4

    .line 179
    :try_start_5
    const-string v1, "$time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p5, p6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 181
    :catch_2
    move-exception v1

    .line 182
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 183
    :cond_4
    :goto_2
    nop

    .line 184
    :goto_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    const-string v2, "$AppPushClick"

    invoke-virtual {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 187
    .end local v0    # "eventProperties":Lorg/json/JSONObject;
    goto :goto_4

    .line 185
    :catch_3
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
