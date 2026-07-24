.class Lcom/android/systemui/statusbar/pma/applist/AppItemView$3;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/applist/AppItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 713
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$3;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 716
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 717
    .local v0, "x":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 718
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$3;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->access$100(Lcom/android/systemui/statusbar/pma/applist/AppItemView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    return-void
.end method
