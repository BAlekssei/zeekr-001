.class Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;
.super Lcom/android/aidl/pma/IPmaSystemUIService$Stub;
.source "PmaSystemUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/PmaSystemUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-direct {p0}, Lcom/android/aidl/pma/IPmaSystemUIService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public hideBtDialerIcon()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$002(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService hideBtDialerIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleHideOrShowBtDialerIcon(ZI)V

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService mCarBodyStateManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void
.end method

.method public logcatStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$002(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService logcatStart "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->hideOrShowRemoteLogcatIcon(Z)V

    goto :goto_0

    .line 88
    :cond_1
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService mCarBodyStateManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void
.end method

.method public logcatStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$002(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService logcatStop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->hideOrShowRemoteLogcatIcon(Z)V

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService mCarBodyStateManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void
.end method

.method public setTopBarDayNightMode(I)V
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$002(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "PmaSystemUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PmaSystemUIService setTopBarDayNightMode mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setStatusBarMode(I)V

    goto :goto_0

    .line 115
    :cond_1
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService mCarBodyStateManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void
.end method

.method public showBtDialerIcon()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$002(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService showBtDialerIcon "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleHideOrShowBtDialerIcon(ZI)V

    goto :goto_0

    .line 38
    :cond_1
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService mCarBodyStateManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return-void
.end method

.method public showBtPhoneDialerIcon(I)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$002(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "PmaSystemUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PmaSystemUIService showBtPhoneDialerIcon type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaSystemUIService$1;->this$0:Lcom/android/systemui/statusbar/pma/PmaSystemUIService;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$000(Lcom/android/systemui/statusbar/pma/PmaSystemUIService;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleHideOrShowBtDialerIcon(ZI)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v0, "PmaSystemUIService"

    const-string v1, "PmaSystemUIService mCarBodyStateManager is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void
.end method

.method public updateBtDialerTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/android/systemui/statusbar/pma/PmaSystemUIService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "PmaSystemUIService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PmaSystemUIService updateBtDialerTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method
