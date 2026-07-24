.class final Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DozeServiceHost"
.end annotation


# instance fields
.field private mAnimateScreenOff:Z

.field private mAnimateWakeup:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/doze/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreTouchWhilePulsing:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 4834
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4835
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/StatusBar$1;

    .line 4834
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 4834
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
    .param p1, "x1"    # Z

    .line 4834
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    .line 4834
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->shouldAnimateWakeup()Z

    move-result v0

    return v0
.end method

.method private shouldAnimateWakeup()Z
    .locals 1

    .line 5034
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAnimateWakeup:Z

    return v0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/doze/DozeHost$Callback;

    .line 4859
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4860
    return-void
.end method

.method public dozeTimeTick()V
    .locals 1

    .line 4934
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dozeTimeTick()V

    .line 4935
    return-void
.end method

.method public extendPulse()V
    .locals 1

    .line 4970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    .line 4971
    return-void
.end method

.method public fireNotificationHeadsUp()V
    .locals 2

    .line 4852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 4853
    .local v1, "callback":Lcom/android/systemui/doze/DozeHost$Callback;
    invoke-interface {v1}, Lcom/android/systemui/doze/DozeHost$Callback;->onNotificationHeadsUp()V

    .line 4854
    .end local v1    # "callback":Lcom/android/systemui/doze/DozeHost$Callback;
    goto :goto_0

    .line 4855
    :cond_0
    return-void
.end method

.method public isBlockingDoze()Z
    .locals 2

    .line 4956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->hasPendingAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4957
    const-string v0, "StatusBar-A1"

    const-string v1, "Blocking AOD because fingerprint has authenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    const/4 v0, 0x1

    return v0

    .line 4960
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPowerSaveActive()Z
    .locals 1

    .line 4939
    const/4 v0, 0x0

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .line 4950
    const/4 v0, 0x0

    return v0
.end method

.method public isPulsingBlocked()Z
    .locals 2

    .line 4944
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDoubleTap(FF)V
    .locals 0
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .line 5002
    return-void
.end method

.method public onIgnoreTouchWhilePulsing(Z)V
    .locals 1
    .param p1, "ignore"    # Z

    .line 4923
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    if-eq p1, v0, :cond_0

    .line 4924
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseTouchDisabledByProx(Landroid/content/Context;Z)V

    .line 4926
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    .line 4927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelCurrentTouch()V

    .line 4930
    :cond_1
    return-void
.end method

.method public pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 4
    .param p1, "callback"    # Lcom/android/systemui/doze/DozeHost$PulseCallback;
    .param p2, "reason"    # I

    .line 4879
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 4880
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "com.android.systemui:NODOZE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 4881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startAssist(Landroid/os/Bundle;)V

    .line 4882
    return-void

    .line 4885
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    .line 4909
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/doze/DozeHost$Callback;

    .line 4864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4865
    return-void
.end method

.method public setAnimateScreenOff(Z)V
    .locals 0
    .param p1, "animateScreenOff"    # Z

    .line 4985
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAnimateScreenOff:Z

    .line 4986
    return-void
.end method

.method public setAnimateWakeup(Z)V
    .locals 2
    .param p1, "animateWakeup"    # Z

    .line 4975
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 4976
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4980
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAnimateWakeup:Z

    .line 4981
    return-void

    .line 4978
    :cond_1
    :goto_0
    return-void
.end method

.method public setAodDimmingScrim(F)V
    .locals 1
    .param p1, "scrimOpacity"    # F

    .line 5011
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setAodFrontScrimAlpha(F)V

    .line 5012
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1
    .param p1, "value"    # I

    .line 5006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setDozeScreenBrightness(I)V

    .line 5007
    return-void
.end method

.method public shouldAnimateScreenOff()Z
    .locals 1

    .line 5038
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAnimateScreenOff:Z

    return v0
.end method

.method public startDozing()V
    .locals 2

    .line 4869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 4872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    .line 4875
    :cond_0
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .line 4913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4915
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozing:Z

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 4916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->dispatchStartedWakingUp()V

    .line 4917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4919
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PSB.DozeServiceHost[mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
