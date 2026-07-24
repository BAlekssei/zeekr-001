.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$8;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 802
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 806
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    .line 807
    .local v0, "alertDialog":Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 808
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 809
    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$8;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->getWirelessChargePosition()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->getWirelessWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x62

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 810
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 811
    return-void
.end method
