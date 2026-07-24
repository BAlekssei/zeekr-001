.class Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4$1;
.super Ljava/lang/Object;
.source "SensorsDataDialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4;

    .line 192
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils$4;->val$activity:Landroid/app/Activity;

    const-string v1, "\u6d4b\u8bd5\u5f39\u7a97\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u7f51\u7edc\u6216\u9879\u76ee\u73af\u5883\u662f\u5426\u6b63\u5e38\uff01"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    return-void
.end method
