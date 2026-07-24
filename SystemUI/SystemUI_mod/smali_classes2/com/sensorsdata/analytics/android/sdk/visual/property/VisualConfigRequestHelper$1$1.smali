.class Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;
.super Landroid/os/CountDownTimer;
.source "VisualConfigRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .line 55
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .line 104
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .param p1, "l"    # J

    .line 59
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "serverUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "SA.VP.VisualConfigRequestHelper"

    const-string v2, "visualConfigRequest server url is null and return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->val$version:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "requestUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "SA.VP.VisualConfigRequestHelper"

    const-string v3, "visualConfigRequest request url is null and return"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 69
    :cond_1
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;->GET:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    invoke-direct {v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;)V

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;

    invoke-direct {v3, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;)V

    .line 70
    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callback(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "serverUrl":Ljava/lang/String;
    .end local v1    # "requestUrl":Ljava/lang/String;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
