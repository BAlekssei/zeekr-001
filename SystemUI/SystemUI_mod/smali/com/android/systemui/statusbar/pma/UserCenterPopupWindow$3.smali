.class Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$3;
.super Ljava/lang/Object;
.source "UserCenterPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    .line 570
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 573
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 574
    .local v0, "x":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$100(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 575
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 576
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$200(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 577
    .local v2, "popupContentParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$300(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x98

    goto :goto_0

    :cond_0
    const/16 v3, 0x40

    :goto_0
    const/16 v4, 0x1a9

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 578
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$200(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;->access$100(Lcom/android/systemui/statusbar/pma/UserCenterPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    return-void
.end method
