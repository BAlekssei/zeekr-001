.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field final synthetic val$cloneProperties:Lorg/json/JSONObject;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 1591
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1595
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$url:Ljava/lang/String;

    .line 1597
    .local v0, "currentUrl":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1598
    .local v1, "trackProperties":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    iput-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mLastScreenTrackProperties:Lorg/json/JSONObject;

    .line 1600
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mLastScreenUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1601
    const-string v2, "$referrer"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mLastScreenUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1604
    :cond_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mCurrentScreenTitle:Ljava/lang/String;

    iput-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mReferrerScreenTitle:Ljava/lang/String;

    .line 1605
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1606
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    const-string v4, "$title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1607
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    const-string v5, "$title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mCurrentScreenTitle:Ljava/lang/String;

    goto :goto_0

    .line 1609
    :cond_2
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mCurrentScreenTitle:Ljava/lang/String;

    .line 1611
    :goto_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    const-string v4, "$url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1612
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    const-string v4, "$url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1615
    :cond_3
    const-string v2, "$url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1616
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-object v0, v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mLastScreenUrl:Ljava/lang/String;

    .line 1617
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    .line 1618
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->val$cloneProperties:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1620
    :cond_4
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$18;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const-string v5, "$AppViewScreen"

    invoke-virtual {v2, v4, v5, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    .end local v0    # "currentUrl":Ljava/lang/String;
    .end local v1    # "trackProperties":Lorg/json/JSONObject;
    :cond_5
    goto :goto_1

    .line 1622
    :catch_0
    move-exception v0

    .line 1623
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1625
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
