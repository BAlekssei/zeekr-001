.class Lcom/android/systemui/keyguard/KeyguardViewMediator$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 359
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method private onSimAbsentLocked()V
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1202(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 518
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/16 v1, 0x1f0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 519
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    .line 518
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const-string v0, "KeyguardViewMediator"

    const-string v1, "SIM removed, showing keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 525
    :cond_0
    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 417
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mustNotUnlockCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 427
    :cond_0
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFingerprintAuthFailed()V
    .locals 2

    .line 529
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 530
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedFingerprintAttempt(I)V

    .line 534
    :cond_0
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 538
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulFingerprintAttempt(I)V

    .line 542
    :cond_0
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 2
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 555
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 557
    monitor-exit v0

    .line 558
    return-void

    .line 557
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .line 398
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 399
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 400
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 401
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 439
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    .line 440
    .local v1, "simPinSecure":Z
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 442
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    goto :goto_1

    .line 443
    :catch_0
    move-exception v3

    .line 444
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onSimSecureStateChanged"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    instance-of v4, v3, Landroid/os/DeadObjectException;

    if-eqz v4, :cond_0

    .line 446
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 440
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 451
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 502
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 503
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 506
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1202(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 507
    monitor-exit v2

    .line 508
    goto :goto_5

    .line 507
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 488
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 489
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 492
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_2

    .line 496
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 498
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->onSimAbsentLocked()V

    .line 499
    monitor-exit v2

    .line 500
    goto :goto_5

    .line 499
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 476
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 477
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 481
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_3

    .line 483
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 485
    :goto_3
    monitor-exit v2

    .line 486
    goto :goto_5

    .line 485
    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3

    .line 456
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 457
    :try_start_4
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 458
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 462
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$600(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_4

    .line 464
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 467
    :cond_6
    :goto_4
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, v3, :cond_7

    .line 470
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->onSimAbsentLocked()V

    .line 472
    :cond_7
    monitor-exit v2

    .line 473
    goto :goto_5

    .line 472
    :catchall_3
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    .line 513
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTrustChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 546
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 549
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 551
    :cond_0
    :goto_0
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 394
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 380
    if-eqz p1, :cond_3

    .line 381
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 383
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .end local v0    # "info":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 384
    .restart local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_2
    :goto_0
    return-void

    .line 390
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    :goto_1
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 366
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 368
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 374
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 375
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
