.class final Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;
.super Ljava/lang/Object;
.source "SensorsDataDialogUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showChannelDebugDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$monitorId:Ljava/lang/String;

.field final synthetic val$projectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$monitorId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$projectId:Ljava/lang/String;

    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$accountId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isTrackInstallation(Landroid/content/Context;)Z

    move-result v8

    .line 104
    .local v8, "isTrackInstallation":Z
    if-eqz v8, :cond_2

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isCorrectTrackInstallation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->access$000(Landroid/app/Activity;)V

    goto :goto_1

    .line 105
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "androidId":Ljava/lang/String;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "oaid":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-static {v0, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isGetDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->access$000(Landroid/app/Activity;)V

    .line 109
    return-void

    .line 111
    :cond_3
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    const-string v2, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    return-void

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, "deviceCode":Ljava/lang/String;
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;-><init>(Landroid/content/Context;)V

    move-object v12, v1

    .line 117
    .local v12, "loadingDialog":Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;
    invoke-static {v12}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->dialogShowDismissOld(Landroid/app/Dialog;)V

    .line 118
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$monitorId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$projectId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;->val$accountId:Ljava/lang/String;

    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;

    invoke-direct {v7, p0, v12}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$1;Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;)V

    move-object v5, v11

    move v6, v8

    invoke-static/range {v1 .. v7}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)V

    .line 146
    .end local v9    # "androidId":Ljava/lang/String;
    .end local v10    # "oaid":Ljava/lang/String;
    .end local v11    # "deviceCode":Ljava/lang/String;
    .end local v12    # "loadingDialog":Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataLoadingDialog;
    nop

    .line 149
    :goto_1
    return-void
.end method
