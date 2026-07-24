.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;
.super Ljava/lang/Object;
.source "StatusBarViewForPMA.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 2533
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2536
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$502(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 2537
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {p2}, Lcom/zeekr/carlauncher/ISceneMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekr/carlauncher/ISceneMode;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5702(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Lcom/zeekr/carlauncher/ISceneMode;)Lcom/zeekr/carlauncher/ISceneMode;

    .line 2539
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/carlauncher/ISceneMode;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$6100(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/carlauncher/IScenseModeCallBack;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zeekr/carlauncher/ISceneMode;->registerCallBack(Lcom/zeekr/carlauncher/IScenseModeCallBack;)V

    .line 2540
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5700(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/carlauncher/ISceneMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/zeekr/carlauncher/ISceneMode;->getCurrentSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 2541
    .local v0, "mode":Ljava/lang/String;
    const-string v2, "StatusBarViewForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    const-string v2, "IHU_SmartScene_mode_00003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2543
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2202(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 2544
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5802(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 2545
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V

    goto :goto_0

    .line 2546
    :cond_0
    const-string v2, "IHU_SmartScene_mode_00005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2547
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2202(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;I)I

    .line 2548
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5802(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 2549
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->isDayUIMode:Z

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$6000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;ZZ)V

    goto :goto_0

    .line 2550
    :cond_1
    const-string v1, "IHU_SmartScene_mode_00001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2551
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5802(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 2552
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2500(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2556
    .end local v0    # "mode":Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 2554
    :catch_0
    move-exception v0

    .line 2555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2557
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2561
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$502(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Z)Z

    .line 2562
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$36;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$5702(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;Lcom/zeekr/carlauncher/ISceneMode;)Lcom/zeekr/carlauncher/ISceneMode;

    .line 2563
    return-void
.end method
