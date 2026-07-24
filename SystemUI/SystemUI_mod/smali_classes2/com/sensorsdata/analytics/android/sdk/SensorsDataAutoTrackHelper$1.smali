.class final Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$1;
.super Ljava/lang/Object;
.source "SensorsDataAutoTrackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackTabHost(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$tabName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$1;->val$tabName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 346
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    return-void

    .line 351
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    return-void

    .line 356
    :cond_1
    const-class v0, Landroid/widget/TabHost;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    return-void

    .line 360
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 361
    .local v0, "properties":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 363
    .local v1, "elementContent":Ljava/lang/String;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$1;->val$tabName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getClickView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 364
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 365
    .local v3, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v2, :cond_c

    .line 367
    move-object v4, v2

    .line 368
    .local v4, "currentView":Landroid/view/View;
    const/4 v5, 0x0

    .line 369
    .local v5, "tabHostView":Landroid/view/View;
    :cond_3
    :goto_0
    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 370
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v4, v6

    .line 371
    instance-of v6, v4, Landroid/widget/TabHost;

    if-eqz v6, :cond_3

    .line 372
    move-object v5, v4

    goto :goto_0

    .line 376
    :cond_4
    if-eqz v5, :cond_5

    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 377
    return-void

    .line 380
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 381
    .local v6, "context":Landroid/content/Context;
    if-nez v6, :cond_6

    .line 382
    return-void

    .line 384
    :cond_6
    const/4 v7, 0x0

    .line 385
    .local v7, "activity":Landroid/app/Activity;
    instance-of v8, v6, Landroid/app/Activity;

    if-eqz v8, :cond_7

    .line 386
    move-object v8, v6

    check-cast v8, Landroid/app/Activity;

    move-object v7, v8

    .line 388
    :cond_7
    if-eqz v7, :cond_b

    .line 389
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 390
    return-void

    .line 392
    :cond_8
    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 394
    invoke-static {v2, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    .line 395
    .local v8, "fragment":Ljava/lang/Object;
    if-eqz v8, :cond_a

    .line 396
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 397
    return-void

    .line 399
    :cond_9
    invoke-static {v0, v8, v7}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 402
    :cond_a
    invoke-static {v7, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v9

    move-object v3, v9

    .line 404
    .end local v8    # "fragment":Ljava/lang/Object;
    :cond_b
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 406
    .end local v4    # "currentView":Landroid/view/View;
    .end local v5    # "tabHostView":Landroid/view/View;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "activity":Landroid/app/Activity;
    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 407
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$1;->val$tabName:Ljava/lang/String;

    move-object v1, v4

    .line 409
    :cond_d
    const-string v4, "$element_content"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string v4, "$element_type"

    const-string v5, "TabHost"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v4

    const-string v5, "$AppClick"

    invoke-virtual {v4, v5, v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v0    # "properties":Lorg/json/JSONObject;
    .end local v1    # "elementContent":Ljava/lang/String;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    goto :goto_1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
