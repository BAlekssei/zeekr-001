.class Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;
.super Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$JsonCallback;
.source "SensorsDataDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;

.field final synthetic val$loadingDialog:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;

    .line 121
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;->val$loadingDialog:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback$JsonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;->val$loadingDialog:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->dismiss()V

    .line 125
    const-string v0, "SA.SensorsDataDialogUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelDebug request error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5931\u8d25!"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .line 131
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;->val$loadingDialog:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;->dismiss()V

    .line 132
    if-nez p1, :cond_0

    .line 133
    const-string v0, "SA.SensorsDataDialogUtils"

    const-string v1, "ChannelDebug response error msg: response is null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u6dfb\u52a0\u767d\u540d\u5355\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u8054\u7cfb\u795e\u7b56\u6280\u672f\u652f\u6301\u4eba\u5458\u6392\u67e5\u95ee\u9898!"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    return-void

    .line 137
    :cond_0
    const-string v0, "code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, "code":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->showChannelDebugActiveDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 141
    :cond_1
    const-string v1, "SA.SensorsDataDialogUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelDebug response error msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    const-string v2, "\u6dfb\u52a0\u767d\u540d\u5355\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u8054\u7cfb\u795e\u7b56\u6280\u672f\u652f\u6301\u4eba\u5458\u6392\u67e5\u95ee\u9898!"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void
.end method
