.class Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;
.super Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$StringCallback;
.source "VisualConfigRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    .line 70
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfter()V
    .locals 0

    .line 94
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 73
    const/16 v0, 0xcd

    const/16 v1, 0x130

    if-eq p1, v1, :cond_0

    const/16 v1, 0x194

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_2

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->access$200(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;)V

    .line 76
    if-ne p1, v0, :cond_1

    .line 77
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->save2Cache(Ljava/lang/String;)V

    .line 79
    :cond_1
    const-string v0, "SA.VP.VisualConfigRequestHelper"

    const-string v1, "requestVisualConfig return 304 Or 404"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->access$200(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;)V

    .line 86
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;->this$2:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->val$callback:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;->onSuccess(Ljava/lang/String;)V

    .line 89
    :cond_0
    const-string v0, "SA.VP.VisualConfigRequestHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestVisualConfig success response is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
