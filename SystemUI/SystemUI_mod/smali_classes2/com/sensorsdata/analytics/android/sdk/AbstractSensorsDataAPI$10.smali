.class Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;
.super Ljava/lang/Object;
.source "AbstractSensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->transformEventTaskQueue(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

.field final synthetic val$distinctId:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$eventTimer:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;

.field final synthetic val$eventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field final synthetic val$identities:Lorg/json/JSONObject;

.field final synthetic val$loginId:Ljava/lang/String;

.field final synthetic val$originalDistinctId:Ljava/lang/String;

.field final synthetic val$properties:Lorg/json/JSONObject;

.field final synthetic val$sendProperties:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    .line 1528
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$properties:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$sendProperties:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$identities:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$distinctId:Ljava/lang/String;

    iput-object p8, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$loginId:Ljava/lang/String;

    iput-object p9, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventTimer:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;

    iput-object p10, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$originalDistinctId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1532
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$properties:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->properties(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1534
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$sendProperties:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeDistinctProperty(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1537
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$identities:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-eq v0, v1, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$identities:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/internal/api/UserIdentityAPI;->updateIdentities(Lorg/json/JSONObject;)V

    .line 1541
    :cond_1
    const-string v0, "$SignUp"

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1542
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$properties:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$sendProperties:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$identities:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$distinctId:Ljava/lang/String;

    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$loginId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventTimer:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;

    invoke-static/range {v1 .. v10}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->access$000(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;)V

    goto :goto_0

    .line 1544
    :cond_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->this$0:Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$properties:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$sendProperties:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$identities:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$distinctId:Ljava/lang/String;

    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$loginId:Ljava/lang/String;

    iget-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$originalDistinctId:Ljava/lang/String;

    iget-object v10, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$10;->val$eventTimer:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;

    invoke-static/range {v1 .. v10}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->access$000(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :goto_0
    goto :goto_1

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1549
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
