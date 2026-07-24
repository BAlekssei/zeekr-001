.class public Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;,
        Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;,
        Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;,
        Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$ClassNameCache;,
        Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$AlertRunnable;
    }
.end annotation


# static fields
.field private static final JS_NOT_INTEGRATED_ALERT_TIME_OUT:I = 0x1388

.field private static final MAX_CLASS_NAME_CACHE_SIZE:I = 0xff

.field private static final TAG:Ljava/lang/String; = "SA.ViewSnapshot"


# instance fields
.field private mAlertRunnable:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$AlertRunnable;

.field private final mClassnameCache:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$ClassNameCache;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceIds:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;

.field private final mRootViewFinder:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;

.field private mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;Landroid/os/Handler;)V
    .locals 2
    .param p2, "resourceIds"    # Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;
    .param p3, "mainThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;",
            ">;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 94
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    .line 95
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mProperties:Ljava/util/List;

    .line 96
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mResourceIds:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;

    .line 97
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mMainThreadHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mRootViewFinder:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;

    .line 99
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$ClassNameCache;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$ClassNameCache;-><init>(I)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mClassnameCache:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$ClassNameCache;

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;)Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    .line 81
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    return-object v0
.end method

.method private addProperties(Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 13
    .param p1, "j"    # Lorg/json/JSONObject;
    .param p2, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 454
    const-string v0, "importantForAccessibility"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 455
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 456
    .local v0, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mProperties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;

    .line 457
    .local v2, "desc":Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;
    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;->targetClass:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;->accessor:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;

    if-eqz v3, :cond_9

    .line 458
    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;->accessor:Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;

    invoke-virtual {v3, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->applyMethod(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    .line 459
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    .end local v2    # "desc":Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 461
    .restart local v2    # "desc":Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_1

    .line 462
    iget-object v4, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;->name:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 463
    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 464
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 465
    .local v4, "clickable":Z
    const-string v5, "clickable"

    iget-object v6, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 466
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->isSupportClick(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 467
    const/4 v4, 0x1

    goto :goto_1

    .line 468
    :cond_2
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->isForbiddenClick(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 469
    const/4 v4, 0x0

    .line 472
    :cond_3
    :goto_1
    iget-object v5, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;->name:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 473
    .end local v4    # "clickable":Z
    goto/16 :goto_3

    :cond_4
    instance-of v4, v3, Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_5

    .line 474
    iget-object v4, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;->name:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 475
    :cond_5
    instance-of v4, v3, Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    .line 476
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 477
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 478
    .local v5, "bounds":Landroid/graphics/Rect;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 479
    .local v6, "json":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 480
    .local v7, "classesArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 481
    .local v8, "klass":Ljava/lang/Class;
    :goto_2
    const-class v9, Ljava/lang/Object;

    if-eq v8, v9, :cond_6

    if-eqz v8, :cond_6

    .line 482
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 483
    .local v9, "canonicalName":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 484
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .line 485
    .end local v9    # "canonicalName":Ljava/lang/String;
    goto :goto_2

    .line 486
    :cond_6
    const-string v9, "classes"

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 488
    .local v9, "jsonDimensions":Lorg/json/JSONObject;
    const-string v10, "left"

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 489
    const-string v10, "right"

    iget v11, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    const-string v10, "top"

    iget v11, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 491
    const-string v10, "bottom"

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 492
    const-string v10, "dimensions"

    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    instance-of v10, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_7

    .line 494
    move-object v10, v4

    check-cast v10, Landroid/graphics/drawable/ColorDrawable;

    .line 495
    .local v10, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_7

    .line 496
    const-string v11, "color"

    invoke-virtual {v10}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 499
    .end local v10    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_7
    iget-object v10, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;->name:Ljava/lang/String;

    invoke-virtual {p1, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "classesArray":Lorg/json/JSONArray;
    .end local v8    # "klass":Ljava/lang/Class;
    .end local v9    # "jsonDimensions":Lorg/json/JSONObject;
    goto :goto_3

    .line 501
    :cond_8
    iget-object v4, v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    .end local v2    # "desc":Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_9
    :goto_3
    goto/16 :goto_0

    .line 505
    :cond_a
    return-void
.end method

.method private getResName(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 529
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 530
    .local v0, "viewId":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 531
    const/4 v1, 0x0

    return-object v1

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mResourceIds:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;

    invoke-interface {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;->nameForId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "fullscreen"    # Z

    .line 179
    if-eqz p3, :cond_0

    .line 180
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 181
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 184
    .local v0, "offset":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 186
    .local v1, "visibleRect":Z
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->setLocalVisibleRect(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 187
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 188
    return-void
.end method

.method private isSnapShotUpdated(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p1, "newImageHash"    # Ljava/lang/String;
    .param p2, "lastImageHash"    # Ljava/lang/StringBuilder;

    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, "isUpdated":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 518
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 521
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->hasH5AlertInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 522
    if-eqz p2, :cond_3

    .line 523
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_3
    return v0
.end method

.method private mergeWebViewNodes(Lorg/json/JSONArray;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;Landroid/view/View;F)V
    .locals 14
    .param p1, "j"    # Lorg/json/JSONArray;
    .param p2, "view"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;
    .param p3, "webView"    # Landroid/view/View;
    .param p4, "webViewScale"    # F

    move-object v1, p0

    .line 785
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 786
    .local v0, "jsonWebView":Lorg/json/JSONObject;
    const-string v2, "hashCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    const-string v2, "index"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 788
    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->get$element_selector()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    const-string v2, "element_selector"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->get$element_selector()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->get$element_content()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 792
    const-string v2, "element_content"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->get$element_content()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    :cond_1
    const-string v2, "element_level"

    iget-object v4, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iget v5, v4, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->elementLevel:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->elementLevel:I

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 795
    const-string v2, "h5_title"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->get$title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    .line 797
    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getScale()F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local p4    # "webViewScale":F
    .local v2, "webViewScale":F
    goto :goto_0

    .line 799
    .end local v2    # "webViewScale":F
    .restart local p4    # "webViewScale":F
    :cond_2
    move/from16 v2, p4

    .end local p4    # "webViewScale":F
    .restart local v2    # "webViewScale":F
    :goto_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getTop()F

    move-result v4

    mul-float/2addr v4, v2

    .line 800
    .local v4, "top":F
    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getLeft()F

    move-result v5

    mul-float/2addr v5, v2

    .line 801
    .local v5, "left":F
    const-string v7, "left"

    float-to-double v8, v5

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 802
    const-string v7, "top"

    float-to-double v8, v4

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 803
    const-string v7, "width"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getWidth()F

    move-result v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 804
    const-string v7, "height"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getHeight()F

    move-result v8

    mul-float/2addr v8, v2

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 805
    const-string v7, "scrollX"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 806
    const-string v7, "scrollY"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 807
    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getOriginTop()F

    move-result v7

    mul-float/2addr v7, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getOriginLeft()F

    move-result v7

    mul-float/2addr v7, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v3

    .line 808
    .local v7, "insideWebView":Z
    :goto_1
    const-string v8, "visibility"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->isVisibility()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 809
    const-string v3, "url"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->get$url()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    const-string v3, "clickable"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->isEnable_click()Z

    move-result v8

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 811
    const-string v3, "importantForAccessibility"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 812
    const-string v3, "is_h5"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 813
    const-string v3, "is_list_view"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->isIs_list_view()Z

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 814
    const-string v3, "element_path"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->get$element_path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 815
    const-string v3, "tag_name"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->get$element_position()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 817
    const-string v3, "element_position"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->get$element_position()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 820
    :cond_5
    iget-object v3, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getLib_version()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webLibVersion:Ljava/lang/String;

    .line 821
    const-string v3, "list_selector"

    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getList_selector()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 822
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 823
    .local v3, "classesArray":Lorg/json/JSONArray;
    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 824
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 826
    .local v6, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SnapCache;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 827
    .local v8, "canonicalName":Ljava/lang/String;
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 828
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    move-object v6, v9

    .line 829
    .end local v8    # "canonicalName":Ljava/lang/String;
    const-class v8, Ljava/lang/Object;

    if-eq v6, v8, :cond_7

    if-nez v6, :cond_6

    .line 830
    :cond_7
    const-string v8, "classes"

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    invoke-virtual/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getSubelements()Ljava/util/List;

    move-result-object v8

    .line 833
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 834
    .local v9, "subviewsArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 835
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 836
    .local v11, "id":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 837
    .end local v11    # "id":Ljava/lang/String;
    goto :goto_3

    .line 839
    :cond_8
    const-string v10, "subviews"

    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 840
    move-object v10, p1

    :try_start_2
    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 843
    .end local v0    # "jsonWebView":Lorg/json/JSONObject;
    .end local v3    # "classesArray":Lorg/json/JSONArray;
    .end local v4    # "top":F
    .end local v5    # "left":F
    .end local v6    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "insideWebView":Z
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "subviewsArray":Lorg/json/JSONArray;
    goto :goto_5

    .line 841
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v10, p1

    goto :goto_4

    .end local v2    # "webViewScale":F
    .restart local p4    # "webViewScale":F
    :catch_2
    move-exception v0

    move-object v10, p1

    move/from16 v2, p4

    .line 842
    .end local p4    # "webViewScale":F
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "webViewScale":F
    :goto_4
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 844
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method private reset()V
    .locals 1

    .line 200
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    .line 201
    return-void
.end method

.method private snapshotView(Lorg/json/JSONArray;Landroid/view/View;I)V
    .locals 23
    .param p1, "j"    # Lorg/json/JSONArray;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 226
    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1c

    .line 227
    const/4 v5, 0x0

    .line 229
    .local v5, "webNodeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iget v6, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->elementLevel:I

    .line 230
    .local v6, "webViewElementLevel":I
    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfWebView(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iput-boolean v7, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->isWebView:Z

    .line 232
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v8, v0

    .line 234
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$1;

    invoke-direct {v0, v1, v3, v8}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-wide/16 v9, 0x1f4

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    goto :goto_1

    .line 257
    :catch_1
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 260
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const-string v0, "SA.ViewSnapshot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WebView url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iget-object v10, v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webViewUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 262
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    move-result-object v0

    iget-object v9, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iget-object v9, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webViewUrl:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->getWebNodes(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    move-result-object v0

    .line 263
    .local v0, "webNodeInfo":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    if-eqz v0, :cond_3

    .line 264
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getStatus()Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    move-result-object v9

    sget-object v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->SUCCESS:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    if-ne v9, v10, :cond_2

    .line 265
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getWebNodes()Ljava/util/List;

    move-result-object v9

    .line 266
    .local v9, "webNodes":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 267
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v10

    .line 268
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;

    .line 269
    .local v11, "webNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;
    iget-object v12, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iget v12, v12, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webViewScale:F

    invoke-direct {v1, v2, v11, v3, v12}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mergeWebViewNodes(Lorg/json/JSONArray;Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;Landroid/view/View;F)V

    .line 270
    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->isRootView()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 271
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v11    # "webNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;
    :cond_0
    goto :goto_2

    .line 275
    .end local v9    # "webNodes":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    :cond_1
    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getStatus()Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    move-result-object v9

    sget-object v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;->FAILURE:Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$Status;

    if-ne v9, v10, :cond_5

    .line 276
    iget-object v9, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getAlertInfos()Ljava/util/List;

    move-result-object v10

    iput-object v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->alertInfos:Ljava/util/List;

    goto :goto_3

    .line 279
    :cond_3
    iget-object v9, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mAlertRunnable:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$AlertRunnable;

    if-nez v9, :cond_4

    .line 280
    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$AlertRunnable;

    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iget-object v10, v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->webViewUrl:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$AlertRunnable;-><init>(Ljava/lang/String;)V

    iput-object v9, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mAlertRunnable:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$AlertRunnable;

    .line 282
    :cond_4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;

    move-result-object v9

    iget-object v10, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mAlertRunnable:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$AlertRunnable;

    const-wide/16 v11, 0x1388

    invoke-virtual {v9, v10, v11, v12}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->postDelayed(Ljava/lang/Runnable;J)V

    .line 287
    .end local v0    # "webNodeInfo":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_5
    :goto_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v0

    .line 288
    .local v8, "jsonSnapObject":Lorg/json/JSONObject;
    const-string v0, "hashCode"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    const-string v0, "id"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    const-string v0, "index"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 291
    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfWebView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    const-string v0, "element_level"

    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    .line 294
    :cond_6
    const-string v0, "element_level"

    iget-object v9, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iget v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->elementLevel:I

    add-int/2addr v10, v7

    iput v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->elementLevel:I

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    :goto_4
    const-string v0, "element_selector"

    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getElementSelector(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->getScreenNameAndTitle(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;)Lorg/json/JSONObject;

    move-result-object v9

    .line 299
    .local v9, "object":Lorg/json/JSONObject;
    if-eqz v9, :cond_8

    .line 300
    const-string v0, "$screen_name"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "screenName":Ljava/lang/String;
    const-string v10, "$title"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 302
    .local v10, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 303
    const-string v11, "screen_name"

    invoke-virtual {v8, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 306
    const-string v11, "title"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    .end local v0    # "screenName":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    :cond_8
    move/from16 v10, p3

    invoke-static {v3, v10, v7}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewNode(Landroid/view/View;IZ)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v11

    .line 311
    .local v11, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v11, :cond_c

    .line 312
    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 313
    const-string v0, "element_path"

    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_9
    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 316
    const-string v0, "element_position"

    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    :cond_a
    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->isSupportElementContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 319
    const-string v0, "element_content"

    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    :cond_b
    const-string v0, "is_list_view"

    invoke-virtual {v11}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->isListView()Z

    move-result v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 324
    :cond_c
    const-string v0, "sa_id_name"

    invoke-direct {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->getResName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    :try_start_2
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_id:I

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    .local v0, "saId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 328
    const-string v12, "sa_id_name"

    invoke-virtual {v8, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    .end local v0    # "saId":Ljava/lang/String;
    :cond_d
    goto :goto_5

    .line 330
    :catch_2
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isMainWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 335
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 337
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 338
    .local v12, "screenWidth":I
    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 339
    .local v13, "screenHeight":I
    const-string v14, "top"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 340
    const-string v14, "left"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 341
    const-string v14, "width"

    invoke-virtual {v8, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    const-string v14, "height"

    invoke-virtual {v8, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v12    # "screenWidth":I
    .end local v13    # "screenHeight":I
    goto/16 :goto_7

    .line 344
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 345
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 346
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 347
    .local v12, "rect":Landroid/graphics/Rect;
    invoke-direct {v1, v3, v12, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->getVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 348
    const-string v13, "top"

    iget v14, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v13, "left"

    iget v14, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    const-string v13, "width"

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    const-string v13, "height"

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    .end local v12    # "rect":Landroid/graphics/Rect;
    goto :goto_6

    .line 353
    :cond_f
    const-string v12, "top"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    const-string v12, "left"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string v12, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 356
    const-string v12, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 358
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_6
    goto :goto_7

    .line 360
    :cond_10
    const-string v0, "top"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    const-string v0, "left"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 362
    const-string v0, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    const-string v0, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 368
    .local v0, "scrollX":I
    instance-of v12, v3, Landroid/widget/TextView;

    if-eqz v12, :cond_11

    .line 369
    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 370
    .local v12, "textView":Landroid/widget/TextView;
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v13, v14, :cond_11

    .line 371
    invoke-virtual {v12}, Landroid/widget/TextView;->getMaxLines()I

    move-result v13

    if-ne v13, v7, :cond_11

    .line 372
    const/4 v0, 0x0

    .line 377
    .end local v0    # "scrollX":I
    .end local v12    # "textView":Landroid/widget/TextView;
    .local v7, "scrollX":I
    :cond_11
    move v7, v0

    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfX5WebView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 379
    :try_start_3
    const-string v0, "scrollX"

    const-string v12, "getWebScrollX"

    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v3, v12, v13}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v0, "scrollY"

    const-string v12, "getWebScrollY"

    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v3, v12, v13}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    .line 381
    :catch_3
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    goto :goto_9

    .line 385
    :cond_12
    const-string v0, "scrollX"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    const-string v0, "scrollY"

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    :goto_9
    const-string v0, "visibility"

    invoke-static/range {p2 .. p2}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->getVisibility(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v8, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "translationX":F
    const/4 v12, 0x0

    .line 391
    .local v12, "translationY":F
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    if-lt v13, v14, :cond_13

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v12

    .line 395
    :cond_13
    const-string v13, "translationX"

    float-to-double v14, v0

    invoke-virtual {v8, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 396
    const-string v13, "translationY"

    float-to-double v14, v12

    invoke-virtual {v8, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 398
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 399
    .local v13, "classesArray":Lorg/json/JSONArray;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 401
    .local v14, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v15, v4, :cond_14

    .line 402
    iget-object v4, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mClassnameCache:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$ClassNameCache;

    invoke-virtual {v4, v14}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$ClassNameCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 404
    :cond_14
    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    .line 405
    const-class v4, Ljava/lang/Object;

    if-eq v14, v4, :cond_16

    if-nez v14, :cond_15

    goto :goto_b

    .line 399
    :cond_15
    const/4 v4, 0x0

    goto :goto_a

    .line 406
    :cond_16
    :goto_b
    const-string v4, "classes"

    invoke-virtual {v8, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    invoke-direct {v1, v8, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->addProperties(Lorg/json/JSONObject;Landroid/view/View;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 411
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v15, v4, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v15, :cond_18

    .line 412
    move-object v15, v4

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 413
    .local v15, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v17, v0

    invoke-virtual {v15}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 414
    .local v0, "rules":[I
    .local v17, "translationX":F
    move-object/from16 v18, v4

    new-instance v4, Lorg/json/JSONArray;

    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .local v18, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 415
    .local v4, "layoutArray":Lorg/json/JSONArray;
    move/from16 v19, v6

    array-length v6, v0

    .end local v6    # "webViewElementLevel":I
    .local v19, "webViewElementLevel":I
    move/from16 v20, v7

    const/4 v7, 0x0

    .end local v7    # "scrollX":I
    .local v20, "scrollX":I
    :goto_c
    if-ge v7, v6, :cond_17

    move/from16 v21, v6

    aget v6, v0, v7

    .line 416
    .local v6, "rule":I
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 415
    .end local v6    # "rule":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v21

    goto :goto_c

    .line 418
    :cond_17
    const-string v6, "layoutRules"

    invoke-virtual {v8, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v0    # "rules":[I
    .end local v4    # "layoutArray":Lorg/json/JSONArray;
    .end local v15    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_d

    .line 420
    .end local v17    # "translationX":F
    .end local v18    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "webViewElementLevel":I
    .end local v20    # "scrollX":I
    .local v0, "translationX":F
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .local v6, "webViewElementLevel":I
    .restart local v7    # "scrollX":I
    :cond_18
    move/from16 v17, v0

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v0    # "translationX":F
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "webViewElementLevel":I
    .end local v7    # "scrollX":I
    .restart local v17    # "translationX":F
    .restart local v18    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "webViewElementLevel":I
    .restart local v20    # "scrollX":I
    :goto_d
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 422
    .local v0, "subviewsArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_19

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_19

    .line 423
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 424
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 425
    .end local v6    # "id":Ljava/lang/String;
    goto :goto_e

    .line 426
    :cond_19
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1b

    .line 427
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    .line 428
    .local v4, "group":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 429
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_f
    if-ge v7, v6, :cond_1b

    .line 430
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 431
    .local v15, "child":Landroid/view/View;
    if-eqz v15, :cond_1a

    .line 432
    move-object/from16 v22, v4

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .end local v4    # "group":Landroid/view/ViewGroup;
    .local v22, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .end local v15    # "child":Landroid/view/View;
    goto :goto_10

    .line 429
    .end local v22    # "group":Landroid/view/ViewGroup;
    .restart local v4    # "group":Landroid/view/ViewGroup;
    :cond_1a
    move-object/from16 v22, v4

    .end local v4    # "group":Landroid/view/ViewGroup;
    .restart local v22    # "group":Landroid/view/ViewGroup;
    :goto_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v22

    goto :goto_f

    .line 436
    .end local v6    # "childCount":I
    .end local v7    # "i":I
    .end local v22    # "group":Landroid/view/ViewGroup;
    :cond_1b
    const-string v4, "subviews"

    invoke-virtual {v8, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .end local v0    # "subviewsArray":Lorg/json/JSONArray;
    .end local v5    # "webNodeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "jsonSnapObject":Lorg/json/JSONObject;
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v11    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v12    # "translationY":F
    .end local v13    # "classesArray":Lorg/json/JSONArray;
    .end local v14    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "translationX":F
    .end local v18    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "webViewElementLevel":I
    .end local v20    # "scrollX":I
    goto :goto_11

    .line 439
    :cond_1c
    move/from16 v10, p3

    :goto_11
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 440
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    .line 441
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 442
    .local v4, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_12
    move/from16 v5, v16

    .end local v16    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_1e

    .line 443
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 445
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1d

    .line 446
    invoke-direct {v1, v2, v6, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->snapshotView(Lorg/json/JSONArray;Landroid/view/View;I)V

    .line 442
    .end local v6    # "child":Landroid/view/View;
    :cond_1d
    add-int/lit8 v16, v5, 0x1

    .end local v5    # "i":I
    .restart local v16    # "i":I
    goto :goto_12

    .line 450
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v4    # "childCount":I
    .end local v16    # "i":I
    :cond_1e
    return-void
.end method

.method private snapshotViewHierarchy(Lorg/json/JSONArray;Landroid/view/View;)V
    .locals 2
    .param p1, "j"    # Lorg/json/JSONArray;
    .param p2, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->reset()V

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->snapshotView(Lorg/json/JSONArray;Landroid/view/View;I)V

    .line 195
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->isWebView:Z

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->setHasWebView(Z)V

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public snapshots(Ljava/io/OutputStream;Ljava/lang/StringBuilder;)Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;
    .locals 22
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "lastImageHash"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 104
    .local v3, "startSnapshot":J
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v5, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mRootViewFinder:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;

    invoke-direct {v0, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v5, v0

    .line 106
    .local v5, "infoFuture":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;>;"
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v0

    .line 109
    .local v6, "writer":Ljava/io/OutputStream;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 110
    .local v7, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    const-string v0, "["

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 113
    const-wide/16 v8, 0x2

    const/4 v10, 0x1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    .line 123
    :goto_0
    invoke-virtual {v5, v10}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 124
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    move-object/from16 v15, p2

    goto/16 :goto_8

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v8, "SA.ViewSnapshot"

    const-string v9, "Throwable thrown during screenshot attempt"

    invoke-static {v8, v9, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v8, "SA.ViewSnapshot"

    const-string v9, "Exception thrown during screenshot attempt"

    invoke-static {v8, v9, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 116
    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v8, "SA.ViewSnapshot"

    const-string v9, "Screenshot took more than 2 second to be scheduled and executed. No screenshot will be sent."

    invoke-static {v8, v9, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 114
    :catch_3
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v8, "SA.ViewSnapshot"

    const-string v9, "Screenshot interrupted, no screenshot will be sent."

    invoke-static {v8, v9, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 127
    :goto_1
    const/4 v0, 0x0

    .local v0, "screenName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 128
    .local v8, "activityTitle":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 129
    .local v9, "infoCount":I
    const-string v11, "SA.ViewSnapshot"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "infoCount:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v3

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    move-object v12, v8

    move-object v8, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v8, "screenName":Ljava/lang/String;
    .local v12, "activityTitle":Ljava/lang/String;
    :goto_2
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v9, :cond_4

    .line 131
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;

    .line 132
    .local v14, "info":Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;
    if-lez v13, :cond_0

    .line 133
    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 135
    :cond_0
    if-eqz v14, :cond_3

    iget-object v0, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->screenshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    if-eqz v0, :cond_3

    iget-object v0, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->screenshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->access$000(Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, p2

    invoke-direct {v1, v0, v15}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->isSnapShotUpdated(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lez v13, :cond_1

    goto :goto_3

    .line 168
    :cond_1
    move-object/from16 v18, v7

    const/16 v16, 0x0

    goto/16 :goto_6

    .line 136
    :cond_2
    :goto_3
    const-string v0, "{"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 137
    const-string v0, "\"activity\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 138
    iget-object v8, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->screenName:Ljava/lang/String;

    .line 139
    iget-object v12, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->activityTitle:Ljava/lang/String;

    .line 140
    iget-object v0, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->screenName:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 141
    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 142
    const-string v0, "\"scale\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 143
    const-string v0, "%s"

    new-array v11, v10, [Ljava/lang/Object;

    iget v10, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->scale:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v11, v16

    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 144
    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 145
    const-string v0, "\"serialized_objects\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 148
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v0, "jsonRootObject":Lorg/json/JSONObject;
    const-string v10, "rootObject"

    iget-object v11, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->rootView:Landroid/view/View;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 151
    .local v10, "jsonObjects":Lorg/json/JSONArray;
    iget-object v11, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->rootView:Landroid/view/View;

    invoke-direct {v1, v10, v11}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->snapshotViewHierarchy(Lorg/json/JSONArray;Landroid/view/View;)V

    .line 152
    const-string v11, "objects"

    invoke-virtual {v0, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write([B)V

    .line 154
    const-string v11, "SA.ViewSnapshot"

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "jsonRootObject":Lorg/json/JSONObject;
    .local v17, "jsonRootObject":Lorg/json/JSONObject;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v18, v7

    :try_start_3
    const-string v7, "snapshotViewHierarchy:"

    .end local v7    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .local v18, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v21, v8

    sub-long v7, v19, v3

    .end local v8    # "screenName":Ljava/lang/String;
    .local v21, "screenName":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 157
    .end local v10    # "jsonObjects":Lorg/json/JSONArray;
    .end local v17    # "jsonRootObject":Lorg/json/JSONObject;
    goto :goto_5

    .line 155
    :catch_4
    move-exception v0

    goto :goto_4

    .end local v21    # "screenName":Ljava/lang/String;
    .restart local v8    # "screenName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v21, v8

    .end local v8    # "screenName":Ljava/lang/String;
    .restart local v21    # "screenName":Ljava/lang/String;
    goto :goto_4

    .end local v18    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .end local v21    # "screenName":Ljava/lang/String;
    .restart local v7    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .restart local v8    # "screenName":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v21, v8

    .line 156
    .end local v7    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .end local v8    # "screenName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .restart local v21    # "screenName":Ljava/lang/String;
    :goto_4
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 160
    const-string v0, "\"image_hash\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 161
    iget-object v0, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->screenshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->access$000(Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 162
    const-string v0, ","

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 163
    const-string v0, "\"screenshot\":"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 164
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 165
    iget-object v0, v14, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->screenshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x46

    invoke-virtual {v0, v7, v8, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->writeBitmapJSON(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)V

    .line 166
    const-string v0, "}"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 130
    move-object/from16 v8, v21

    goto :goto_7

    .line 168
    .end local v18    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .end local v21    # "screenName":Ljava/lang/String;
    .restart local v7    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .restart local v8    # "screenName":Ljava/lang/String;
    :cond_3
    move-object/from16 v15, p2

    move-object/from16 v18, v7

    const/16 v16, 0x0

    .end local v7    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .restart local v18    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    :goto_6
    const-string v0, "{}"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 130
    .end local v14    # "info":Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;
    :goto_7
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .local v0, "i":I
    move-object/from16 v7, v18

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 171
    .end local v0    # "i":I
    .end local v18    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .restart local v7    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    :cond_4
    move-object/from16 v15, p2

    move-object/from16 v18, v7

    .end local v7    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .restart local v18    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    const-string v0, "]"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 172
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 173
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iput-object v8, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->screenName:Ljava/lang/String;

    .line 174
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    iput-object v12, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;->activityTitle:Ljava/lang/String;

    .line 175
    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mSnapInfo:Lcom/sensorsdata/analytics/android/sdk/visual/model/SnapInfo;

    return-object v0

    .line 123
    .end local v8    # "screenName":Ljava/lang/String;
    .end local v9    # "infoCount":I
    .end local v12    # "activityTitle":Ljava/lang/String;
    .end local v18    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    .restart local v7    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;>;"
    :goto_8
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 124
    iget-object v8, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    throw v0
.end method
