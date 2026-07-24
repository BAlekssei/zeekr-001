.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$IStatusbarOnViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->initViewClick()V
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

    .line 922
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 1
    .param p1, "isDayOrNight"    # I

    .line 1720
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->changeTheme(I)V

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->changeTheme(I)V

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1727
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->changeTheme(I)V

    .line 1729
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1730
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->changeTheme(I)V

    .line 1732
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1733
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->changeTheme(I)V

    .line 1735
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1736
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->changeTheme(I)V

    .line 1738
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/AccountExitDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1739
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/AccountExitDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/AccountExitDialog;->changeTheme(I)V

    .line 1741
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterToast;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1742
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterToast;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->changeTheme(I)V

    .line 1744
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1745
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->changeTheme(I)V

    .line 1747
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->changeTheme(I)V

    .line 1750
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1751
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->changeTheme(I)V

    .line 1752
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->changeTheme(I)V

    .line 1755
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1756
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->changeTheme(I)V

    .line 1758
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->changeTheme(I)V

    .line 1761
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->changeTheme(I)V

    .line 1764
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1765
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->changeTheme(I)V

    .line 1767
    :cond_f
    return-void
.end method

.method public dismissSceneModePopupWindow()V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 1172
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "dismissSceneModePopupWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1176
    :cond_0
    return-void
.end method

.method public dismissSentryModePopupWindow()V
    .locals 2

    .line 1289
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "dismissSentryModePopupWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1295
    :cond_1
    return-void
.end method

.method public dismissUserCenterPopupWindow()V
    .locals 2

    .line 1299
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "dismissUserCenterPopupWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1305
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1306
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1308
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1311
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1314
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1315
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1317
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setDialogShow()V

    .line 1320
    :cond_6
    return-void
.end method

.method public onAqiCO2HighChange(Z)V
    .locals 1
    .param p1, "high"    # Z

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3602(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Z)Z

    .line 1270
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    goto :goto_0

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1280
    :cond_1
    :goto_0
    return-void
.end method

.method public onMicChange(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1675
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->onLocationChanged(I)V

    .line 1676
    return-void
.end method

.method public onMicReverb(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1685
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->onMicReverbChange(I)V

    .line 1686
    return-void
.end method

.method public onMicVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 1680
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->onMicVolumeChange(I)V

    .line 1681
    return-void
.end method

.method public onSentryModeChange(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1665
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setSentryMode(I)V

    .line 1666
    return-void
.end method

.method public onSongModeChange(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 1671
    return-void
.end method

.method public openNZPActivity()V
    .locals 3

    .line 1828
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1829
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zeekr.automap"

    const-string v2, "com.zeekr.automap.activity.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1830
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1831
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$5000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1832
    return-void
.end method

.method public openOTAPage()V
    .locals 3

    .line 1334
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "openOTAPage: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1339
    .local v0, "ota_intent":Landroid/content/Intent;
    const-string v1, "com.geely.pma.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    const-string v1, "ecarx.intent.action.ECARX_OTA_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1342
    const-string v1, "open_night_upgrade_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1343
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$5000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1344
    return-void
.end method

.method public openPDCPage()V
    .locals 5

    .line 925
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "imgPdc: == onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 930
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "domain"

    const-string v2, "Parking"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 931
    const-string v1, "id"

    const-string v2, "PARKING_UPDATE_ENABLE_STATUS_CHANGED"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 932
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 934
    .local v1, "jsonPayload":Lorg/json/JSONObject;
    const-string/jumbo v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 935
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 937
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 938
    const-string v2, "StatusBarFragmentForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set parking partnums json = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 941
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 942
    const-string v2, "StatusBarFragmentForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set parking partnum success json = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 945
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 946
    const-string v2, "StatusBarFragmentForPMA"

    const-string v3, " set parking partnum faile "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonPayload":Lorg/json/JSONObject;
    :cond_3
    :goto_0
    goto :goto_1

    .line 949
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 952
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public openUserCenterWindow(IZ)V
    .locals 2
    .param p1, "userPositionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 1410
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setDialogShow()V

    .line 1413
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setDialogShow()V

    .line 1416
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setDialogShow()V

    .line 1419
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1422
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1425
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 1428
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1429
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    .line 1431
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1432
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1434
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1435
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterToast;->setDialogShow()V

    .line 1436
    return-void

    .line 1440
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1441
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1442
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setPositionX(IZ)V

    .line 1444
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1445
    return-void
.end method

.method public setAqiDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    goto :goto_1

    .line 1618
    :cond_1
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "setAqiDialogListener high is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1621
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    goto :goto_0

    .line 1624
    :cond_3
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v2, "setAqiDialogListener is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1627
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    .line 1630
    :cond_4
    :goto_1
    return-void
.end method

.method public setBatteryACState(I)V
    .locals 1
    .param p1, "acState"    # I

    .line 1690
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryACState(I)V

    .line 1691
    return-void
.end method

.method public setBatteryDCState(I)V
    .locals 1
    .param p1, "dcState"    # I

    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryDCState(I)V

    .line 1696
    return-void
.end method

.method public setBatteryFailure(I)V
    .locals 1
    .param p1, "batteryFail"    # I

    .line 1700
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryFailure(I)V

    .line 1701
    return-void
.end method

.method public setBatteryPlug(Z)V
    .locals 1
    .param p1, "in"    # Z

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setBatteryPreheatingEnable(Z)V

    .line 1259
    return-void
.end method

.method public setBatteryPreheatingChange(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1284
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setBatteryPreheatingChange(I)V

    .line 1285
    return-void
.end method

.method public setCalendarDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    goto :goto_0

    .line 1637
    :cond_0
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "setAqiDialogListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :goto_0
    return-void
.end method

.method public setChargeACCapAvail(I)V
    .locals 1
    .param p1, "chargeACCapAvail"    # I

    .line 1813
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeACCapAvail(I)V

    .line 1816
    :cond_0
    return-void
.end method

.method public setChargeACCapState(I)V
    .locals 1
    .param p1, "chargeACCapState"    # I

    .line 1799
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeACCapState(I)V

    .line 1802
    :cond_0
    return-void
.end method

.method public setChargeDCCapAvail(I)V
    .locals 1
    .param p1, "chargeDCCapAvail"    # I

    .line 1820
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeDCCapAvail(I)V

    .line 1823
    :cond_0
    return-void
.end method

.method public setChargeDCCapState(I)V
    .locals 1
    .param p1, "chargeDCCapState"    # I

    .line 1806
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeDCCapState(I)V

    .line 1809
    :cond_0
    return-void
.end method

.method public setChargeSOCLevel(F)V
    .locals 1
    .param p1, "chargeSOCLevel"    # F

    .line 1771
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setChargeSOCLevel(F)V

    .line 1774
    :cond_0
    return-void
.end method

.method public setDisChargeSOCLevel(F)V
    .locals 1
    .param p1, "disChargeSOCLevel"    # F

    .line 1778
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDisChargeSOCLevel(F)V

    .line 1781
    :cond_0
    return-void
.end method

.method public setDvrDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 1575
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    goto :goto_0

    .line 1578
    :cond_0
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "setDvrDialogListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :goto_0
    return-void
.end method

.method public setEnduranceMileage(I)V
    .locals 1
    .param p1, "enduranceMileage"    # I

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setEnduranceMileage(I)V

    .line 1711
    return-void
.end method

.method public setEstimateTime(F)V
    .locals 1
    .param p1, "mEstimatedTime"    # F

    .line 1705
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setEstimateTime(F)V

    .line 1706
    return-void
.end method

.method public setLowTempSnowListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 1584
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    goto :goto_0

    .line 1587
    :cond_0
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "mlowTemperatureSnowDialog is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :goto_0
    return-void
.end method

.method public setPopupAQSCO2(II)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "auto"    # I

    .line 1263
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPopupAQSColor(II)V

    .line 1264
    return-void
.end method

.method public setPopupAQSColor(ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "AQIStatus"    # I

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setPopupAQSColorShow(ZI)V

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPopupAQSColorShow(ZI)V

    .line 1011
    :cond_1
    return-void
.end method

.method public setPopupAcState(I)V
    .locals 1
    .param p1, "acState"    # I

    .line 1348
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setAcState(I)V

    .line 1349
    return-void
.end method

.method public setPopupAirQuality(Ljava/lang/String;)V
    .locals 3
    .param p1, "aqi"    # Ljava/lang/String;

    .line 1031
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1032
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupAirQuality: aqi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setPm25Level(Ljava/lang/String;)V

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPm25Level(Ljava/lang/String;)V

    .line 1040
    :cond_2
    return-void
.end method

.method public setPopupAirQualityVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1016
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupAirQualityVisible: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setPm25Visible(Z)V

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1022
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1023
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupAirQualityVisible: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPm25Visible(Z)V

    .line 1027
    :cond_3
    return-void
.end method

.method public setPopupBatteryColor(I)V
    .locals 1
    .param p1, "batteryColor"    # I

    .line 1661
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setPopupBatteryColor(I)V

    .line 1662
    return-void
.end method

.method public setPopupBatteryLevel(FI)V
    .locals 1
    .param p1, "batteryLevel"    # F
    .param p2, "batteryColor"    # I

    .line 1449
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setBatteryLevel(FI)V

    .line 1450
    return-void
.end method

.method public setPopupDcState(I)V
    .locals 1
    .param p1, "dcState"    # I

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDcState(I)V

    .line 1354
    return-void
.end method

.method public setPopupDvrStateIcons(I)V
    .locals 3
    .param p1, "mDvrState"    # I

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1325
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupDvrStateIcons: dvrState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDvrStateValue(I)V

    .line 1330
    :cond_1
    return-void
.end method

.method public setPopupPm25Value(I)V
    .locals 3
    .param p1, "pm25Value"    # I

    .line 1044
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1045
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupPm25Value: pm25Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setPm25Value(I)V

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1051
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1052
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupPm25Value: pm25Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPm25Value(I)V

    .line 1056
    :cond_3
    return-void
.end method

.method public setPopupRestModeLeftTime(I)V
    .locals 1
    .param p1, "restModeLeftTime"    # I

    .line 1836
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setRestModeLeftTime(I)V

    .line 1837
    return-void
.end method

.method public setSceneModeDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 1593
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    goto :goto_0

    .line 1596
    :cond_0
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "setSceneModeDialogListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :goto_0
    return-void
.end method

.method public setSentryModeDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    goto :goto_0

    .line 1605
    :cond_0
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "setSentryModeDialogListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :goto_0
    return-void
.end method

.method public setUnitDrvDis(I)V
    .locals 1
    .param p1, "unitDis"    # I

    .line 1715
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setUnitDrvDis(I)V

    .line 1716
    return-void
.end method

.method public setUsbListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 1652
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    goto :goto_0

    .line 1655
    :cond_0
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "setAqiDialogListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :goto_0
    return-void
.end method

.method public setV2LState(I)V
    .locals 1
    .param p1, "v2LState"    # I

    .line 1792
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setV2LState(I)V

    .line 1795
    :cond_0
    return-void
.end method

.method public setV2VState(I)V
    .locals 1
    .param p1, "v2VState"    # I

    .line 1785
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setV2VState(I)V

    .line 1788
    :cond_0
    return-void
.end method

.method public setWirelessChargeListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    .line 1643
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setDialogListener(Lcom/android/systemui/statusbar/pma/PopupDialogListener;)V

    goto :goto_0

    .line 1646
    :cond_0
    const-string v0, "StatusBarFragmentForPMA"

    const-string/jumbo v1, "setAqiDialogListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :goto_0
    return-void
.end method

.method public setWirelessChargeText(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getWPCChargeMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setWirelessCharge(I)V

    .line 1497
    :cond_0
    return-void
.end method

.method public showCalendarDialog()V
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1845
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 1847
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1848
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1850
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1851
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1853
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1854
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setDialogShow()V

    .line 1856
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1857
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1859
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1860
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1862
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1863
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setDialogShow()V

    .line 1865
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1866
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1868
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 1869
    return-void
.end method

.method public showDvrPopupWindow(IZ)V
    .locals 1
    .param p1, "positionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setPositionX(IZ)V

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1073
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setDialogShow()V

    .line 1075
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1078
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1081
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 1084
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1085
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    .line 1087
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1090
    :cond_8
    return-void
.end method

.method public showLowTemperatureSnowDialog(IZI)V
    .locals 1
    .param p1, "positionX"    # I
    .param p2, "isFullScreen"    # Z
    .param p3, "isNeedShow"    # I

    .line 1214
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setPositionX(IZ)V

    .line 1216
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    goto :goto_0

    .line 1220
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1222
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    goto :goto_0

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    .line 1227
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1228
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1230
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1233
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1236
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1237
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 1239
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1242
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1243
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setDialogShow()V

    .line 1245
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1246
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1248
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 1251
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1254
    :cond_b
    return-void
.end method

.method public showSceneModePopupWindow(IZI)V
    .locals 3
    .param p1, "positionX"    # I
    .param p2, "isFullScreen"    # Z
    .param p3, "layoutMode"    # I

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 1137
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSceneModePopupWindow layoutMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " positionX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setPositionX(IZI)V

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 1149
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1152
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setDialogShow()V

    .line 1155
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1158
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 1161
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    .line 1164
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1167
    :cond_8
    return-void
.end method

.method public showSentryModePopupWindow(IZ)V
    .locals 1
    .param p1, "positionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setPositionX(IZ)V

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 1192
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1195
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setDialogShow()V

    .line 1198
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1201
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1202
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 1204
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    .line 1207
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1208
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1210
    :cond_8
    return-void
.end method

.method public showSongModePopupWindow(IZ)V
    .locals 2
    .param p1, "positionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 1094
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getMic()V

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getReverb()V

    .line 1097
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getLocation()V

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4802(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Z)Z

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setPositionX(IZ)V

    .line 1102
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SongModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SongModePopupWindow;->setDialogShow()V

    .line 1103
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1112
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1113
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 1115
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1118
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setDialogShow()V

    .line 1121
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1124
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1125
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 1127
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    .line 1130
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1131
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1133
    :cond_a
    return-void
.end method

.method public showStatusPopupWindow(IZ)V
    .locals 1
    .param p1, "aqiPositionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 956
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setPositionX(IZ)V

    .line 959
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    goto :goto_0

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setPositionX(IZ)V

    .line 965
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 966
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 971
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 972
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 974
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 975
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 978
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 980
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/RestModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/RestModePopupWindow;->setDialogShow()V

    .line 983
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 984
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setDialogShow()V

    .line 986
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 987
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setDialogShow()V

    .line 989
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 990
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 992
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 993
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 995
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 996
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 998
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 999
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    .line 1001
    :cond_b
    return-void
.end method

.method public showUsbPopupWindow(IZ)V
    .locals 1
    .param p1, "usbPositionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 1539
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setPositionX(IZ)V

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setDialogShow()V

    .line 1541
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1545
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 1547
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1548
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1550
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1551
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1553
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setDialogShow()V

    .line 1556
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1557
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1559
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1562
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1563
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 1565
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    .line 1568
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1569
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1571
    :cond_9
    return-void
.end method

.method public showWirelessChargePopupWindow(IZ)V
    .locals 1
    .param p1, "wirelessChargePositionX"    # I
    .param p2, "isFullScreen"    # Z

    .line 1501
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setPositionX(IZ)V

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/WirelessChargingPopupWindow;->setDialogShow()V

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25PopupWindow;->setDialogShow()V

    .line 1507
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3900(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/ChargePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ChargePopupWindow;->setDialogShow()V

    .line 1510
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->setDialogShow()V

    .line 1513
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->setDialogShow()V

    .line 1516
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1517
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UsbPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UsbPopupWindow;->setDialogShow()V

    .line 1519
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SceneModePopupWindow;->setDialogShow()V

    .line 1522
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SentryModePopupWindow;->setDialogShow()V

    .line 1525
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1526
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/CalendarDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setDialogShow()V

    .line 1528
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$4600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/LowTemperatureSnowDialog;->setDialogShow()V

    .line 1531
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->getIsShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$11;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Pm25HighPopupWindow;->setDialogShow()V

    .line 1534
    :cond_9
    return-void
.end method
