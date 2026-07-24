.class Lcom/android/keyguard/KeyguardStatusView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardStatusView;

    .line 82
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->access$300(Lcom/android/keyguard/KeyguardStatusView;Z)V

    .line 107
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .line 91
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$000(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$100(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$200(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$200(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 119
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->access$300(Lcom/android/keyguard/KeyguardStatusView;Z)V

    .line 102
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$000(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 87
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$400(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$100(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$200(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 114
    return-void
.end method
