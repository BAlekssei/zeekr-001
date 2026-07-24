.class Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;
.super Landroid/os/Handler;
.source "StatusBarViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->dismiss()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->access$100(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->access$100(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Lcom/android/systemui/statusbar/pma/PopupDialogListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/PopupDialogListener;->windowShow(Z)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->access$200(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->access$200(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 181
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 182
    return-void
.end method
