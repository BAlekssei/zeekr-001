.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackViewScreen(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field final synthetic val$fragment:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 1688
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->val$fragment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1692
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1693
    .local v0, "properties":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->val$fragment:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1695
    .local v1, "screenName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1697
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->val$fragment:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1698
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->val$fragment:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;

    .line 1699
    .local v3, "sensorsDataFragmentTitle":Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;
    if-eqz v3, :cond_0

    .line 1700
    invoke-interface {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;->title()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1704
    .end local v3    # "sensorsDataFragmentTitle":Lcom/sensorsdata/analytics/android/sdk/SensorsDataFragmentTitle;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    .line 1705
    const/4 v3, 0x0

    .line 1707
    .local v3, "activity":Landroid/app/Activity;
    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->val$fragment:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getActivity"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1708
    .local v5, "getActivityMethod":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    .line 1709
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->val$fragment:Ljava/lang/Object;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v6

    .line 1713
    .end local v5    # "getActivityMethod":Ljava/lang/reflect/Method;
    :cond_1
    goto :goto_0

    .line 1711
    :catch_0
    move-exception v5

    .line 1714
    :goto_0
    if-eqz v3, :cond_3

    .line 1715
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1716
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 1718
    :cond_2
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%s|%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x1

    aput-object v1, v7, v4

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1722
    .end local v3    # "activity":Landroid/app/Activity;
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1723
    const-string v3, "$title"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1725
    :cond_4
    const-string v3, "$screen_name"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1726
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->val$fragment:Ljava/lang/Object;

    instance-of v3, v3, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    if-eqz v3, :cond_5

    .line 1727
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->val$fragment:Ljava/lang/Object;

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    .line 1728
    .local v3, "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    invoke-interface {v3}, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object v4

    .line 1729
    .local v4, "otherProperties":Lorg/json/JSONObject;
    if-eqz v4, :cond_5

    .line 1730
    invoke-static {v4, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1733
    .end local v3    # "screenAutoTracker":Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;
    .end local v4    # "otherProperties":Lorg/json/JSONObject;
    :cond_5
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$20;->val$fragment:Ljava/lang/Object;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1736
    .end local v0    # "properties":Lorg/json/JSONObject;
    .end local v1    # "screenName":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    goto :goto_1

    .line 1734
    :catch_1
    move-exception v0

    .line 1735
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1737
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
