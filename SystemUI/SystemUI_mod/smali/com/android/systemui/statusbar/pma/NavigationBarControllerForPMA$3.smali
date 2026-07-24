.class Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;
.super Ljava/lang/Object;
.source "NavigationBarControllerForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->initViewClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    .line 679
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAllSlider(Z)V
    .locals 2
    .param p1, "isAppList"    # Z

    .line 998
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "closeAllSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closeAllSlider(Z)V

    .line 1002
    return-void
.end method

.method public closeAppListSlider()V
    .locals 2

    .line 894
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "closeAppListSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closeAppListSlider()V

    .line 898
    return-void
.end method

.method public closeClimateSlider(Z)V
    .locals 2
    .param p1, "isScroll"    # Z

    .line 942
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "closeClimateSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closeClimateSlider(Z)V

    .line 946
    return-void
.end method

.method public closeDriverHeatSlider(Z)V
    .locals 2
    .param p1, "isScroll"    # Z

    .line 918
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "closeDriverHeatSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closeDriverHeatSlider(Z)V

    .line 922
    return-void
.end method

.method public closeDriverTempSlider(Z)V
    .locals 2
    .param p1, "isScroll"    # Z

    .line 902
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "closeDriverTempSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closeDriverTempSlider(Z)V

    .line 906
    return-void
.end method

.method public closeDropDownBoxView()V
    .locals 2

    .line 831
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "closeDropDownBoxView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closeDropDownBoxView()V

    .line 835
    return-void
.end method

.method public closePassengerHeatSlider(Z)V
    .locals 2
    .param p1, "isScroll"    # Z

    .line 926
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "closePassengerHeatSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closePassengerHeatSlider(Z)V

    .line 930
    return-void
.end method

.method public closePassengerTempSlider(Z)V
    .locals 2
    .param p1, "isScroll"    # Z

    .line 910
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "closePassengerTempSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closePassengerTempSlider(Z)V

    .line 914
    return-void
.end method

.method public closeVolumeSlider(Z)V
    .locals 2
    .param p1, "isScroll"    # Z

    .line 934
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "closeVolumeSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->closeVolumeSlider(Z)V

    .line 938
    return-void
.end method

.method public isAllStreamMute()Z
    .locals 2

    .line 1006
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "isAllStreamMute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$2200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Z

    move-result v0

    return v0
.end method

.method public isSliderShow(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->isSliderShow(I)Z

    move-result v0

    return v0
.end method

.method public isTopActivityExterior(Z)V
    .locals 3
    .param p1, "istopactivity"    # Z

    .line 1014
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    const-string v0, "NavigationBarControllerForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTopActivityExterior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->isTopActivityExterior(Z)V

    .line 1018
    return-void
.end method

.method public moveClimatePosition(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 990
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "moveClimatePosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->moveClimatePosition(I)V

    .line 994
    return-void
.end method

.method public moveDriverHeatPosition(I)I
    .locals 2
    .param p1, "direction"    # I

    .line 966
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "moveDriverHeatPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->moveDriverHeatPosition(I)I

    move-result v0

    return v0
.end method

.method public moveDriverTempPosition(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 950
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "moveDriverTempPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->moveDriverTempPosition(I)V

    .line 954
    return-void
.end method

.method public movePassengerHeatPosition(I)I
    .locals 2
    .param p1, "direction"    # I

    .line 974
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "movePassengerHeatPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->movePassengerHeatPosition(I)I

    move-result v0

    return v0
.end method

.method public movePassengerTempPosition(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 958
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "movePassengerTempPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->movePassengerTempPosition(I)V

    .line 962
    return-void
.end method

.method public moveVolumeUiPosition(I)I
    .locals 2
    .param p1, "direction"    # I

    .line 982
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "moveVolumeUiPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->moveVolumeUiPosition(I)I

    move-result v0

    return v0
.end method

.method public muteVolume()V
    .locals 2

    .line 823
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "muteVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->muteVolume()V

    .line 827
    return-void
.end method

.method public open360()V
    .locals 3

    .line 886
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "open360"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getICarFunction()Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    move-result-object v0

    const v1, 0x23030100

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->setFunctionValue(II)Z

    .line 890
    return-void
.end method

.method public openAppListApp()V
    .locals 3

    .line 709
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openAppListApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1700(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 714
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "yfve.intent.action.CLICK_NAVIGATIONBAR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v1, "DOCK_CLICK"

    const-string v2, "hide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 717
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openApplist(Z)V

    .line 718
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openApplist(Z)V

    .line 721
    :goto_0
    return-void
.end method

.method public openCarSettingApp()V
    .locals 4

    .line 725
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openCarSettingApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$100(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.geely.pma.settings"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    const-string v1, "ecarx.launcher3"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$500(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;)V

    .line 730
    return-void

    .line 732
    :cond_1
    const-string v0, "laucher_dock_carsetting_click"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendBroadcastToBTPhone()V

    .line 735
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 737
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 738
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.geely.pma.settings"

    const-string v3, "com.geely.pma.settings.SettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->startActivityOnStack(Landroid/content/Intent;I)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    goto :goto_0

    .line 741
    :catch_0
    move-exception v1

    .line 744
    :goto_0
    return-void
.end method

.method public openClimateApp()V
    .locals 2

    .line 773
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openClimateApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendBroadcastToBTPhone()V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1600()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$500(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public openClimateSlider(F)V
    .locals 2
    .param p1, "x"    # F

    .line 860
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openClimateSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openClimateWindow(F)V

    .line 864
    return-void
.end method

.method public openDriverHeatVentilationSlider(F)V
    .locals 2
    .param p1, "x"    # F

    .line 807
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openDriverHeatVentilationSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openDriverHeatVentilationWindow(F)V

    .line 811
    return-void
.end method

.method public openDriverTempSlider(F)V
    .locals 2
    .param p1, "x"    # F

    .line 791
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openDriverTempSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openDriverTempWindow(F)V

    .line 795
    return-void
.end method

.method public openLauncher()V
    .locals 3

    .line 748
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openLauncher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1800(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "it is in Launcher HOME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 755
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ecarx.launcher3.action.CLICK_HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string v1, "ecarx.launcher3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 758
    return-void

    .line 760
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendBroadcastToBTPhone()V

    .line 761
    const-string v0, "laucher_dock_home_clcik"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    const-string v1, "ecarx.launcher3"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$500(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;Ljava/lang/String;)V

    .line 763
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 764
    .local v0, "intentStart":Landroid/content/Intent;
    const-string v1, "ecarx.launcher3.action.CLICK_HOME_START_LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$1200(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 769
    return-void
.end method

.method public openMediaSlider(F)V
    .locals 1
    .param p1, "x"    # F

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openMediaSliderWindow(F)V

    .line 705
    return-void
.end method

.method public openPassengerHeatVentilationSlider(F)V
    .locals 2
    .param p1, "x"    # F

    .line 815
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openPassengerHeatVentilationSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openPassengerHeatVentilationWindow(F)V

    .line 819
    return-void
.end method

.method public openPassengerTempSlider(F)V
    .locals 2
    .param p1, "x"    # F

    .line 799
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openPassengerTempSlider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openPassengerTempWindow(F)V

    .line 803
    return-void
.end method

.method public openVolumeUI(F)V
    .locals 2
    .param p1, "x"    # F

    .line 852
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    const-string v0, "NavigationBarControllerForPMA"

    const-string v1, "openVolumeUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->openVolumeSliderWindow(F)V

    .line 856
    return-void
.end method

.method public removeNewApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->removeNewAppDot(Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public setSliderDayNightMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->setSliderDayNightMode(I)V

    .line 1023
    return-void
.end method
