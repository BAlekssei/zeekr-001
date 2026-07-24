.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;
.super Lcom/zeekr/carlauncher/IScenseModeCallBack$Stub;
.source "StatusBarViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 2507
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Lcom/zeekr/carlauncher/IScenseModeCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyResult(ILjava/lang/String;)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2511
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/carlauncher/ISceneMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/zeekr/carlauncher/ISceneMode;->getCurrentSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 2512
    .local v0, "mode":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2513
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyResult mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_0
    const-string v1, "IHU_SmartScene_mode_00003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2516
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2202(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 2517
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5802(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 2518
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V

    goto :goto_0

    .line 2519
    :cond_1
    const-string v1, "IHU_SmartScene_mode_00005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2520
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v3, 0x5

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2202(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 2521
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5802(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 2522
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$6000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V

    goto :goto_0

    .line 2523
    :cond_2
    const-string v1, "IHU_SmartScene_mode_00001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2524
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5802(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 2525
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$35;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2529
    .end local v0    # "mode":Ljava/lang/String;
    :cond_3
    :goto_0
    goto :goto_1

    .line 2527
    :catch_0
    move-exception v0

    .line 2528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2530
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
