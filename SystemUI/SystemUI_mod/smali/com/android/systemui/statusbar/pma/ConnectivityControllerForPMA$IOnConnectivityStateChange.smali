.class interface abstract Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA$IOnConnectivityStateChange;
.super Ljava/lang/Object;
.source "ConnectivityControllerForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IOnConnectivityStateChange"
.end annotation


# virtual methods
.method public onESIMConnectStatusChange(IZ)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "isShow"    # Z

    .line 622
    return-void
.end method

.method public onESIMSignalCallback()V
    .locals 0

    .line 624
    return-void
.end method

.method public onESIMSignalStrengthChange(IZ)V
    .locals 0
    .param p1, "signalStrength"    # I
    .param p2, "isShow"    # Z

    .line 623
    return-void
.end method

.method public onWifiAPStateChange(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 621
    return-void
.end method

.method public onWifiApConnectStateChange(Z)V
    .locals 0
    .param p1, "isScan"    # Z

    .line 618
    return-void
.end method

.method public onWifiScanStateChange(Z)V
    .locals 0
    .param p1, "isScan"    # Z

    .line 619
    return-void
.end method

.method public onWifiSignalStateChange(IZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "isShow"    # Z

    .line 620
    return-void
.end method
