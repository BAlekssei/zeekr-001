.class Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow$1;
.super Landroid/os/Handler;
.source "WirelessChargingPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;)Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->access$000(Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;)Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/PopupDialogListener;->windowShow(Z)V

    .line 143
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method
