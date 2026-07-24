.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerEnd(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field final synthetic val$cloneProperties:Lorg/json/JSONObject;

.field final synthetic val$endTime:J

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 1519
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->val$eventName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->val$endTime:J

    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->val$cloneProperties:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1522
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->val$eventName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1523
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    monitor-enter v0

    .line 1524
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mTrackTimer:Ljava/util/Map;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->val$eventName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;

    .line 1525
    .local v1, "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    if-eqz v1, :cond_0

    .line 1526
    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->val$endTime:J

    invoke-virtual {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->setEndTime(J)V

    .line 1528
    .end local v1    # "eventTimer":Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1531
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isAutoAddChannelCallbackEvent:Z

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->val$cloneProperties:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->checkOrSetChannelCallbackEvent(ZLjava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1532
    .local v0, "_properties":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$16;->val$eventName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1535
    .end local v0    # "_properties":Lorg/json/JSONObject;
    goto :goto_1

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1536
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
