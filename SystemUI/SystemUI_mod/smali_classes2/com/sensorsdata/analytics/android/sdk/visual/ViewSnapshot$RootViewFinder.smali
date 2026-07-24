.class Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootViewFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

.field private final mClientDensity:I

.field private final mRootViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    const/16 v0, 0xa0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mClientDensity:I

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    .line 558
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    .line 559
    return-void
.end method

.method private scaleBitmap(Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "info"    # Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;
    .param p2, "rawBitmap"    # Landroid/graphics/Bitmap;

    .line 651
    const/high16 v0, 0x3f800000    # 1.0f

    .line 652
    .local v0, "scale":F
    if-eqz p2, :cond_1

    .line 653
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .line 654
    .local v1, "rawDensity":I
    if-eqz v1, :cond_0

    .line 655
    const/high16 v2, 0x43200000    # 160.0f

    int-to-float v3, v1

    div-float v0, v2, v3

    .line 657
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 658
    .local v2, "rawWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 659
    .local v3, "rawHeight":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 660
    .local v4, "destWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-double v8, v5

    add-double/2addr v8, v6

    double-to-int v5, v8

    .line 661
    .local v5, "destHeight":I
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    if-lez v4, :cond_1

    if-lez v5, :cond_1

    .line 662
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    const/16 v7, 0xa0

    invoke-virtual {v6, v4, v5, v7, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->recreate(IIILandroid/graphics/Bitmap;)V

    .line 665
    .end local v1    # "rawDensity":I
    .end local v2    # "rawWidth":I
    .end local v3    # "rawHeight":I
    .end local v4    # "destWidth":I
    .end local v5    # "destHeight":I
    :cond_1
    iput v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->scale:F

    .line 666
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    iput-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->screenshot:Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;

    .line 667
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 550
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 565
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 566
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_5

    .line 567
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v1

    .line 568
    .local v1, "object":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/util/VisualUtil;->mergeRnScreenNameAndTitle(Lorg/json/JSONObject;)V

    .line 569
    const-string v2, "$screen_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, "screenName":Ljava/lang/String;
    const-string v3, "$title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "activityTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .line 572
    .local v4, "rootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 573
    .local v5, "window":Landroid/view/Window;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/Window;->isActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 574
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 576
    :cond_0
    if-nez v4, :cond_1

    .line 577
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    return-object v6

    .line 579
    :cond_1
    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;

    invoke-direct {v6, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 580
    .local v6, "info":Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSortedWindowViews()[Landroid/view/View;

    move-result-object v7

    .line 581
    .local v7, "views":[Landroid/view/View;
    const/4 v8, 0x0

    .line 582
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    array-length v9, v7

    if-lez v9, :cond_4

    .line 583
    invoke-virtual {p0, v7, v6}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mergeViewLayers([Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v8, v9

    .line 584
    array-length v9, v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v7, v10

    .line 585
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getWindowVisibility()I

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 586
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v12

    if-eqz v12, :cond_3

    .line 587
    invoke-static {v11}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 588
    goto :goto_1

    .line 590
    :cond_2
    invoke-static {v11}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isCustomWindow(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 592
    new-instance v12, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;

    invoke-virtual {v11}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-direct {v12, v2, v3, v13}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 593
    .local v12, "subInfo":Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;
    invoke-direct {p0, v12, v8}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->scaleBitmap(Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;Landroid/graphics/Bitmap;)V

    .line 594
    iget-object v13, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "subInfo":Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 598
    :cond_4
    iget-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 599
    invoke-direct {p0, v6, v8}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->scaleBitmap(Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;Landroid/graphics/Bitmap;)V

    .line 600
    iget-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "screenName":Ljava/lang/String;
    .end local v3    # "activityTitle":Ljava/lang/String;
    .end local v4    # "rootView":Landroid/view/View;
    .end local v5    # "window":Landroid/view/Window;
    .end local v6    # "info":Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;
    .end local v7    # "views":[Landroid/view/View;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    goto :goto_2

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SA.ViewSnapshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    return-object v0
.end method

.method mergeViewLayers([Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "views"    # [Landroid/view/View;
    .param p2, "info"    # Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;

    move-object/from16 v0, p1

    .line 610
    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 611
    .local v2, "width":I
    iget-object v3, v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$RootViewInfo;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 612
    .local v3, "height":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 613
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getDeviceSize(Landroid/content/Context;)[I

    move-result-object v6

    .line 614
    .local v6, "screenSize":[I
    aget v2, v6, v4

    .line 615
    aget v3, v6, v5

    .line 616
    if-eqz v2, :cond_6

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 618
    .end local v6    # "screenSize":[I
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 619
    .local v6, "fullScreenBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;

    invoke-direct {v7, v6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 620
    .local v7, "canvas":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;
    const/4 v8, 0x2

    new-array v14, v8, [I

    .line 621
    .local v14, "windowOffset":[I
    const/4 v8, 0x0

    .line 622
    .local v8, "isDrawBackground":Z
    invoke-static/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getMainWindowCount([Landroid/view/View;)I

    move-result v9

    if-le v9, v5, :cond_2

    .line 623
    const/4 v9, 0x1

    .local v9, "skipOther":Z
    goto :goto_0

    .line 625
    .end local v9    # "skipOther":Z
    :cond_2
    move v9, v4

    .restart local v9    # "skipOther":Z
    :goto_0
    move v15, v9

    .line 627
    .end local v9    # "skipOther":Z
    .local v15, "skipOther":Z
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 628
    invoke-static/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->invalidateLayerTypeView([Landroid/view/View;)V

    .line 629
    array-length v13, v0

    move v12, v4

    :goto_1
    if-ge v12, v13, :cond_5

    aget-object v11, v0, v12

    .line 630
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v11}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v15}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isWindowNeedTraverse(Landroid/view/View;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 631
    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->save()I

    .line 632
    invoke-static {v11}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isMainWindow(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 633
    invoke-virtual {v11, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 634
    aget v9, v14, v4

    int-to-float v9, v9

    aget v10, v14, v5

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->translate(FF)V

    .line 635
    invoke-static {v11}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDialogOrPopupWindow(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v8, :cond_3

    .line 636
    const/16 v16, 0x1

    .line 637
    .end local v8    # "isDrawBackground":Z
    .local v16, "isDrawBackground":Z
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    move-object v10, v8

    .line 638
    .local v10, "paint":Landroid/graphics/Paint;
    const/high16 v8, -0x60000000

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    aget v8, v14, v4

    int-to-float v8, v8

    neg-float v9, v8

    aget v8, v14, v5

    int-to-float v8, v8

    neg-float v8, v8

    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move/from16 v17, v8

    move-object v8, v7

    move-object/from16 v18, v10

    move/from16 v10, v17

    .end local v10    # "paint":Landroid/graphics/Paint;
    .local v18, "paint":Landroid/graphics/Paint;
    move-object v0, v11

    move v11, v4

    .end local v11    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    move v4, v12

    move v12, v5

    move v5, v13

    move-object/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .end local v18    # "paint":Landroid/graphics/Paint;
    goto :goto_2

    .line 642
    .end local v0    # "view":Landroid/view/View;
    .end local v16    # "isDrawBackground":Z
    .restart local v8    # "isDrawBackground":Z
    .restart local v11    # "view":Landroid/view/View;
    :cond_3
    move-object v0, v11

    move v4, v12

    move v5, v13

    .end local v11    # "view":Landroid/view/View;
    .restart local v0    # "view":Landroid/view/View;
    move/from16 v16, v8

    .end local v8    # "isDrawBackground":Z
    .restart local v16    # "isDrawBackground":Z
    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 643
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->restoreToCount(I)V

    .line 629
    .end local v0    # "view":Landroid/view/View;
    move/from16 v8, v16

    goto :goto_3

    .end local v16    # "isDrawBackground":Z
    .restart local v8    # "isDrawBackground":Z
    :cond_4
    move v9, v5

    move v4, v12

    move v5, v13

    :goto_3
    add-int/lit8 v12, v4, 0x1

    move v13, v5

    move v5, v9

    move-object/from16 v0, p1

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 646
    :cond_5
    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->destroy()V

    .line 647
    return-object v6

    .line 616
    .end local v7    # "canvas":Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;
    .end local v8    # "isDrawBackground":Z
    .end local v14    # "windowOffset":[I
    .end local v15    # "skipOther":Z
    .local v6, "screenSize":[I
    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method
