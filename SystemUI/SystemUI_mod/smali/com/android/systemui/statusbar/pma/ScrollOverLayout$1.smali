.class Lcom/android/systemui/statusbar/pma/ScrollOverLayout$1;
.super Landroid/os/Handler;
.source "ScrollOverLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/ScrollOverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$1;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$1;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->access$000(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$1;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->access$000(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 86
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 87
    return-void
.end method
