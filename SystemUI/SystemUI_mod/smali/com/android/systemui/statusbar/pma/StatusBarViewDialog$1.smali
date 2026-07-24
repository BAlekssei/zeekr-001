.class Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$1;
.super Ljava/lang/Object;
.source "StatusBarViewDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 135
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    .local v0, "h":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->access$000(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->access$000(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 138
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->access$000(Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0

    .line 141
    :cond_0
    const-string v1, "StatusBarViewDialog"

    const-string/jumbo v2, "setDialogShow animation.null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void
.end method
