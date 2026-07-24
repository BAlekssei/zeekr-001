.class public Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;
.super Ljava/lang/Object;
.source "AopUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.AopUtil"

.field private static sOSViewPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->sOSViewPackage:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .line 786
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 787
    return-object v0

    .line 789
    :cond_0
    if-nez p0, :cond_1

    .line 790
    return-object v0

    .line 792
    :cond_1
    if-nez p2, :cond_2

    .line 793
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object p2, v1

    goto :goto_0

    .line 815
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 795
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isHeatMapEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 796
    :cond_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isHeatMapActivity(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackActivity(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 797
    :cond_4
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getElementSelector(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "elementSelector":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 799
    const-string v2, "$element_selector"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 802
    .end local v1    # "elementSelector":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getViewNode(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v1

    .line 803
    .local v1, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v1, :cond_a

    .line 804
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 805
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackActivity(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 806
    :cond_6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isHeatMapEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isHeatMapActivity(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 807
    :cond_7
    const-string v2, "$element_path"

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    :cond_8
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 811
    const-string v2, "$element_position"

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :cond_9
    return-object v1

    .line 817
    .end local v1    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    :cond_a
    goto :goto_2

    .line 815
    :goto_1
    nop

    .line 816
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 818
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v0
.end method

.method public static buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 323
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 325
    .local v0, "propertyJSON":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "$screen_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "activityTitle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    const-string v2, "$title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    :cond_0
    instance-of v2, p0, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    if-eqz v2, :cond_1

    .line 332
    move-object v2, p0

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    .line 333
    .local v2, "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object v3

    .line 334
    .local v3, "trackProperties":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 335
    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "activityTitle":Ljava/lang/String;
    .end local v2    # "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    .end local v3    # "trackProperties":Lorg/json/JSONObject;
    :cond_1
    nop

    .line 342
    return-object v0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 340
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    return-object v2
.end method

.method public static buildTitleNoAutoTrackerProperties(Landroid/app/Activity;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .line 352
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 354
    .local v0, "propertyJSON":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "$screen_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "activityTitle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    const-string v2, "$title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    :cond_0
    instance-of v2, p0, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    if-eqz v2, :cond_2

    .line 360
    move-object v2, p0

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    .line 361
    .local v2, "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object v3

    .line 362
    .local v3, "trackProperties":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 363
    const-string v4, "$screen_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    const-string v4, "$screen_name"

    const-string v5, "$screen_name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    :cond_1
    const-string v4, "$title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    const-string v4, "$title"

    const-string v5, "$title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1    # "activityTitle":Ljava/lang/String;
    .end local v2    # "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    .end local v3    # "trackProperties":Lorg/json/JSONObject;
    :cond_2
    nop

    .line 375
    return-object v0

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 373
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    return-object v2
.end method

.method private static exceptionCollect(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 422
    if-eqz p0, :cond_2

    .line 423
    :try_start_0
    const-string v0, "SA.AopUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewClass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "SA.AopUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 426
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 427
    const-string v1, "SA.AopUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 430
    .local v1, "viewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    .line 431
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 432
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 433
    .local v2, "tmpParent":Landroid/view/View;
    const-string v3, "SA.AopUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viewParentClass->ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .end local v2    # "tmpParent":Landroid/view/View;
    goto :goto_0

    .line 436
    :cond_1
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 437
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 438
    .local v2, "count":I
    if-lez v2, :cond_2

    .line 439
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 440
    .local v3, "childView":Landroid/view/View;
    const-string v4, "SA.AopUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childView->ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    .end local v2    # "count":I
    .end local v3    # "childView":Landroid/view/View;
    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    goto :goto_1

    .line 447
    :cond_2
    :goto_0
    nop

    .line 448
    :goto_1
    return-void
.end method

.method public static getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p0, :cond_3

    .line 206
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 207
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    goto :goto_1

    .line 208
    :cond_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 209
    :goto_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 210
    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    move-object p0, v1

    goto :goto_0

    .line 212
    :cond_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 213
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    .line 217
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 218
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_activity:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 219
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 220
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 221
    move-object v2, v1

    check-cast v2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .end local v1    # "object":Ljava/lang/Object;
    goto :goto_2

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 228
    :cond_3
    :goto_2
    nop

    .line 229
    :goto_3
    return-object v0
.end method

.method public static getActivityFromFragment(Ljava/lang/Object;)Landroid/app/Activity;
    .locals 5
    .param p0, "fragment"    # Ljava/lang/Object;

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "activity":Landroid/app/Activity;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 305
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getActivity"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 306
    .local v1, "getActivityMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 307
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 311
    .end local v1    # "getActivityMethod":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 313
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 594
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, "activityTitle":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 601
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 602
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getToolbarTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "toolbarTitle":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 604
    move-object v1, v2

    .line 608
    .end local v2    # "toolbarTitle":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 609
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 610
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_2

    .line 611
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 612
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 613
    invoke-virtual {v3, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 618
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    return-object v1

    .line 619
    .end local v1    # "activityTitle":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/Exception;
    return-object v0

    .line 623
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v0
.end method

.method public static getCompoundButtonText(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 386
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 388
    .local v0, "switchButton":Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getTextOn"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 391
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getTextOff"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 393
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 394
    .end local v0    # "switchButton":Landroid/widget/CompoundButton;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 395
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UNKNOWN"

    return-object v1
.end method

.method public static getFragmentFromView(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 741
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 753
    if-eqz p0, :cond_3

    .line 754
    :try_start_0
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 755
    .local v0, "fragmentName":Ljava/lang/String;
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name2:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 756
    .local v1, "fragmentName2":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 757
    move-object v0, v1

    .line 759
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 760
    if-nez p1, :cond_1

    .line 762
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 764
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    move-object p1, v3

    .line 766
    .end local v2    # "context":Landroid/content/Context;
    :cond_1
    if-eqz p1, :cond_2

    .line 767
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 768
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Window;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 769
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 770
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 771
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseParentViewTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 776
    .end local v2    # "window":Landroid/view/Window;
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_2
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/FragmentCacheUtil;->getFragmentFromCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 778
    .end local v0    # "fragmentName":Ljava/lang/String;
    .end local v1    # "fragmentName2":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 780
    :cond_3
    nop

    .line 781
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 9
    .param p0, "properties"    # Lorg/json/JSONObject;
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "screenName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 243
    .local v1, "title":Ljava/lang/String;
    :try_start_0
    instance-of v2, p1, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    if-eqz v2, :cond_2

    .line 244
    move-object v2, p1

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    .line 245
    .local v2, "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    invoke-interface {v2}, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object v3

    .line 246
    .local v3, "trackProperties":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 247
    const-string v4, "$screen_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    const-string v4, "$screen_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 251
    :cond_0
    const-string v4, "$title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    const-string v4, "$title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 254
    :cond_1
    invoke-static {v3, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 257
    .end local v2    # "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    .end local v3    # "trackProperties":Lorg/json/JSONObject;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 258
    .local v2, "isTitleNull":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 259
    .local v3, "isScreenNameNull":Z
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;

    .line 261
    .local v4, "sensorsDataFragmentTitle":Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;
    if-eqz v4, :cond_3

    .line 262
    invoke-interface {v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;->title()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 265
    .end local v4    # "sensorsDataFragmentTitle":Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move v2, v4

    .line 266
    if-nez v2, :cond_4

    if-eqz v3, :cond_7

    .line 267
    :cond_4
    if-nez p2, :cond_5

    .line 268
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromFragment(Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v4

    move-object p2, v4

    .line 270
    :cond_5
    if-eqz p2, :cond_7

    .line 271
    if-eqz v2, :cond_6

    .line 272
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 275
    :cond_6
    if-eqz v3, :cond_7

    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 277
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "%s|%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 282
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 283
    const-string v4, "$title"

    invoke-virtual {p0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 289
    :cond_9
    const-string v4, "$screen_name"

    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "screenName":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "isTitleNull":Z
    .end local v3    # "isScreenNameNull":Z
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 293
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static getViewGroupTypeByReflect(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 484
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "viewType":Ljava/lang/String;
    const-string v1, "android.support.v7.widget.CardView"

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 486
    .local v1, "compatClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    const-string v2, "CardView"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 489
    :cond_0
    const-string v2, "androidx.cardview.widget.CardView"

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    const-string v2, "CardView"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 493
    :cond_1
    const-string v2, "android.support.design.widget.NavigationView"

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    const-string v2, "NavigationView"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 497
    :cond_2
    const-string v2, "com.google.android.material.navigation.NavigationView"

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 498
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 499
    const-string v2, "NavigationView"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 501
    :cond_3
    return-object v0
.end method

.method public static getViewId(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "idString":Ljava/lang/String;
    :try_start_0
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 406
    if-nez v0, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 408
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->setViewId(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->exceptionCollect(Landroid/view/View;)V

    .line 417
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getViewText(Landroid/view/View;)Ljava/lang/String;
    .locals 8
    .param p0, "child"    # Landroid/view/View;

    .line 119
    if-eqz p0, :cond_11

    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 123
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 125
    return-object v0

    .line 129
    :cond_1
    const/4 v1, 0x0

    .line 131
    .local v1, "switchCompatClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "android.support.v7.widget.SwitchCompat"

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    .line 136
    :goto_0
    if-nez v1, :cond_2

    .line 138
    :try_start_1
    const-string v2, "androidx.appcompat.widget.SwitchCompat"

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 141
    goto :goto_1

    .line 139
    :catch_1
    move-exception v2

    .line 144
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 146
    .local v2, "viewText":Ljava/lang/CharSequence;
    :try_start_2
    instance-of v3, p0, Landroid/widget/CheckBox;

    if-eqz v3, :cond_3

    .line 147
    move-object v3, p0

    check-cast v3, Landroid/widget/CheckBox;

    .line 148
    .local v3, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 149
    .end local v3    # "checkBox":Landroid/widget/CheckBox;
    goto/16 :goto_4

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    move-object v3, p0

    check-cast v3, Landroid/widget/CompoundButton;

    .line 152
    .local v3, "switchCompat":Landroid/widget/CompoundButton;
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getTextOn"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, "method":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 155
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getTextOff"

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 157
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :goto_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    .line 158
    .end local v3    # "switchCompat":Landroid/widget/CompoundButton;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto/16 :goto_4

    :cond_5
    instance-of v3, p0, Landroid/widget/RadioButton;

    if-eqz v3, :cond_6

    .line 159
    move-object v3, p0

    check-cast v3, Landroid/widget/RadioButton;

    .line 160
    .local v3, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 161
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    goto/16 :goto_4

    :cond_6
    instance-of v3, p0, Landroid/widget/ToggleButton;

    if-eqz v3, :cond_8

    .line 162
    move-object v3, p0

    check-cast v3, Landroid/widget/ToggleButton;

    .line 163
    .local v3, "toggleButton":Landroid/widget/ToggleButton;
    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    .line 164
    .local v4, "isChecked":Z
    if-eqz v4, :cond_7

    .line 165
    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v5

    goto :goto_3

    .line 167
    :cond_7
    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v5

    .line 169
    .end local v3    # "toggleButton":Landroid/widget/ToggleButton;
    .end local v4    # "isChecked":Z
    :goto_3
    goto :goto_4

    :cond_8
    instance-of v3, p0, Landroid/widget/Button;

    if-eqz v3, :cond_9

    .line 170
    move-object v3, p0

    check-cast v3, Landroid/widget/Button;

    .line 171
    .local v3, "button":Landroid/widget/Button;
    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 172
    .end local v3    # "button":Landroid/widget/Button;
    goto :goto_4

    :cond_9
    instance-of v3, p0, Landroid/widget/CheckedTextView;

    if-eqz v3, :cond_a

    .line 173
    move-object v3, p0

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 174
    .local v3, "textView":Landroid/widget/CheckedTextView;
    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 175
    .end local v3    # "textView":Landroid/widget/CheckedTextView;
    goto :goto_4

    :cond_a
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_b

    .line 176
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    .line 177
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 178
    .end local v3    # "textView":Landroid/widget/TextView;
    goto :goto_4

    :cond_b
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_d

    .line 179
    move-object v3, p0

    check-cast v3, Landroid/widget/ImageView;

    .line 180
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 181
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 183
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_c
    goto :goto_4

    .line 184
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    .line 188
    :goto_4
    if-eqz v2, :cond_e

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_f

    .line 189
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    .line 191
    :cond_f
    if-eqz v2, :cond_10

    .line 192
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 193
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->setViewText(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    return-object v0

    .line 198
    .end local v1    # "switchCompatClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "viewText":Ljava/lang/CharSequence;
    :cond_10
    goto :goto_5

    .line 196
    :catch_2
    move-exception v1

    .line 197
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 199
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_5
    const-string v1, ""

    return-object v1

    .line 120
    .end local v0    # "text":Ljava/lang/String;
    :cond_11
    :goto_6
    const-string v0, ""

    return-object v0
.end method

.method public static getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "viewName"    # Ljava/lang/String;
    .param p1, "defaultTypeName"    # Ljava/lang/String;

    .line 462
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    return-object p1

    .line 465
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    return-object p0

    .line 469
    :cond_1
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isOSViewByPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    return-object p1

    .line 473
    :cond_2
    return-object p0
.end method

.method public static getViewTypeByReflect(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 512
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "viewType":Ljava/lang/String;
    const-string v1, "android.widget.Switch"

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 514
    .local v1, "compatClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    const-string v2, "Switch"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 517
    :cond_0
    const-string v2, "android.support.v7.widget.SwitchCompat"

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 518
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    const-string v2, "SwitchCompat"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 521
    :cond_1
    const-string v2, "androidx.appcompat.widget.SwitchCompat"

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 522
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 523
    const-string v2, "SwitchCompat"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 525
    :cond_2
    return-object v0
.end method

.method public static injectClickInfo(Landroid/view/View;Lorg/json/JSONObject;Z)Z
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "properties"    # Lorg/json/JSONObject;
    .param p2, "isFromUser"    # Z

    .line 684
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    :try_start_0
    invoke-static {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isTrackEvent(Landroid/view/View;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    return v0

    .line 691
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 692
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 693
    .local v2, "eventJson":Lorg/json/JSONObject;
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    .line 696
    .local v3, "activity":Landroid/app/Activity;
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, "idString":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 698
    const-string v5, "$element_id"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    :cond_2
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v5

    .line 702
    .local v5, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v6

    .line 704
    .local v6, "viewText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 705
    const-string v7, "$element_content"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 708
    :cond_3
    const-string v7, "$element_type"

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    if-eqz v3, :cond_4

    .line 712
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 716
    :cond_4
    invoke-static {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .line 717
    .local v7, "fragment":Ljava/lang/Object;
    if-eqz v7, :cond_5

    .line 718
    invoke-static {v2, v7, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 721
    :cond_5
    sget v8, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_properties:I

    invoke-virtual {p0, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 722
    .local v8, "p":Lorg/json/JSONObject;
    if-eqz v8, :cond_6

    .line 723
    invoke-static {v8, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 726
    :cond_6
    invoke-static {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeDistinctProperty(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    const/4 v0, 0x1

    return v0

    .line 728
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "eventJson":Lorg/json/JSONObject;
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v4    # "idString":Ljava/lang/String;
    .end local v5    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v6    # "viewText":Ljava/lang/String;
    .end local v7    # "fragment":Ljava/lang/Object;
    .end local v8    # "p":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 731
    .end local v1    # "e":Lorg/json/JSONException;
    return v0

    .line 685
    :cond_7
    :goto_0
    return v0
.end method

.method private static isOSViewByPackage(Ljava/lang/String;)Z
    .locals 5
    .param p0, "viewName"    # Ljava/lang/String;

    .line 660
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 661
    return v1

    .line 663
    :cond_0
    const-string v0, "."

    const-string v2, "##"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "viewNameTemp":Ljava/lang/String;
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->sOSViewPackage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 665
    .local v3, "OSViewPackage":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 666
    const/4 v1, 0x1

    return v1

    .line 668
    .end local v3    # "OSViewPackage":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 669
    :cond_2
    return v1
.end method

.method private static isValid(I)Z
    .locals 1
    .param p0, "id"    # I

    .line 451
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isViewIgnored(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 563
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 564
    return v0

    .line 568
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getIgnoredViewTypeList()Ljava/util/List;

    move-result-object v1

    .line 569
    .local v1, "mIgnoredViewTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    if-eqz v1, :cond_2

    .line 570
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 571
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 572
    return v0

    .line 574
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    goto :goto_0

    .line 578
    :cond_2
    const-string v2, "1"

    sget v3, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_ignored:I

    invoke-virtual {p0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 580
    .end local v1    # "mIgnoredViewTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    :catch_0
    move-exception v1

    .line 581
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 582
    return v0
.end method

.method public static isViewIgnored(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "viewType"    # Ljava/lang/Class;

    .line 536
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 537
    return v0

    .line 540
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getIgnoredViewTypeList()Ljava/util/List;

    move-result-object v1

    .line 541
    .local v1, "mIgnoredViewTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 542
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 543
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    .line 544
    return v0

    .line 546
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    goto :goto_0

    .line 548
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 549
    .end local v1    # "mIgnoredViewTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "source"    # Lorg/json/JSONObject;
    .param p1, "dest"    # Lorg/json/JSONObject;

    .line 638
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 639
    .local v0, "superPropertiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 641
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 642
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 643
    move-object v3, v2

    check-cast v3, Ljava/util/Date;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 645
    :cond_0
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 650
    .end local v0    # "superPropertiesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    goto :goto_2

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 651
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private static traverseParentViewTag(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 823
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 824
    .local v0, "parentView":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 825
    .local v1, "fragmentName":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 826
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_fragment_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 827
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 829
    :cond_0
    return-object v1

    .line 830
    .end local v0    # "parentView":Landroid/view/ViewParent;
    .end local v1    # "fragmentName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 831
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 833
    .end local v0    # "ex":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public static traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;
    .locals 5
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 79
    if-nez p0, :cond_0

    .line 80
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object p0, v0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_3

    .line 83
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 88
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_2

    .line 91
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    goto :goto_2

    .line 97
    :cond_3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 98
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    goto :goto_2

    .line 100
    :cond_4
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 101
    goto :goto_2

    .line 104
    :cond_5
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "viewText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 106
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "viewText":Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 112
    .end local v0    # "childCount":I
    :goto_3
    nop

    .line 113
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SA.AopUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    const-string v1, ""

    :goto_4
    return-object v1
.end method
