.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackDeepLinkLaunch(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field final synthetic val$isDeepLinkInstallSource:Z

.field final synthetic val$oaid:Ljava/lang/String;

.field final synthetic val$properties:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 2313
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-boolean p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->val$isDeepLinkInstallSource:Z

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->val$properties:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->val$oaid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2316
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->val$isDeepLinkInstallSource:Z

    if-eqz v0, :cond_1

    .line 2318
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->val$properties:Lorg/json/JSONObject;

    const-string v1, "$ios_install_source"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;

    .line 2319
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->getAndroidId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->val$oaid:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v4, v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->val$oaid:Ljava/lang/String;

    .line 2318
    :goto_0
    invoke-static {v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2322
    goto :goto_1

    .line 2320
    :catch_0
    move-exception v0

    .line 2321
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 2324
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    const-string v1, "$AppDeeplinkLaunch"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$43;->val$properties:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2325
    return-void
.end method
