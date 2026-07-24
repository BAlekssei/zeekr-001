.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 0

    .line 142
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .line 96
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .line 107
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .line 101
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0
    .param p1, "dreaming"    # Z

    .line 274
    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    .line 147
    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .line 252
    return-void
.end method

.method public onFingerprintAcquired()V
    .locals 0

    .line 221
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 0

    .line 226
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 232
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .line 247
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .line 239
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 257
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 268
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .line 90
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .line 75
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 79
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 80
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 82
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 83
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    .line 84
    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 0

    .line 291
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .line 69
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 44
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    .line 54
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 61
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 124
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 263
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 49
    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 285
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 203
    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 213
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 208
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 129
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 117
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 112
    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    .line 134
    return-void
.end method
