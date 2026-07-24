.class final Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;
.super Ljava/lang/Object;
.source "SensorsDataAutoTrackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$menuItem:Landroid/view/MenuItem;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/view/MenuItem;Ljava/lang/Object;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$menuItem:Landroid/view/MenuItem;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$menuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 711
    return-void

    .line 714
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    return-void

    .line 719
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    return-void

    .line 724
    :cond_2
    const-class v0, Landroid/view/MenuItem;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->isViewIgnored(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    return-void

    .line 728
    :cond_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$menuItem:Landroid/view/MenuItem;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->access$000(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 729
    return-void

    .line 732
    :cond_4
    const/4 v0, 0x0

    .line 733
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$object:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 734
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$object:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Context;

    if-eqz v1, :cond_5

    .line 735
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$object:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    move-object v0, v1

    .line 739
    :cond_5
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$menuItem:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getClickView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    .line 740
    .local v1, "view":Landroid/view/View;
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 741
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v2

    .line 745
    :cond_6
    const/4 v2, 0x0

    .line 746
    .local v2, "activity":Landroid/app/Activity;
    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 747
    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v4

    move-object v2, v4

    .line 751
    :cond_7
    if-eqz v2, :cond_8

    .line 752
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_8

    .line 753
    return-void

    .line 758
    :cond_8
    nop

    .line 760
    .local v3, "idString":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 761
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$menuItem:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 763
    :catch_0
    move-exception v4

    .line 764
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 765
    :cond_9
    :goto_0
    nop

    .line 767
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 770
    .local v4, "properties":Lorg/json/JSONObject;
    if-eqz v2, :cond_a

    .line 771
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 775
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 776
    const-string v5, "$element_id"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    :cond_b
    const/4 v5, 0x0

    .line 781
    .local v5, "elementContent":Ljava/lang/String;
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$menuItem:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 782
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper$2;->val$menuItem:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 785
    :cond_c
    const/4 v6, 0x0

    .line 786
    .local v6, "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v1, :cond_e

    .line 787
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 788
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 790
    :cond_d
    invoke-static {v2, v1, v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v7

    move-object v6, v7

    .line 792
    :cond_e
    const-string v7, "$element_content"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    const-string v7, "$element_type"

    const-string v8, "MenuItem"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v7

    const-string v8, "$AppClick"

    invoke-virtual {v7, v8, v4, v6}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackAutoEvent(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 799
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "idString":Ljava/lang/String;
    .end local v4    # "properties":Lorg/json/JSONObject;
    .end local v5    # "elementContent":Ljava/lang/String;
    .end local v6    # "viewNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    goto :goto_2

    .line 797
    :catch_1
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 800
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
