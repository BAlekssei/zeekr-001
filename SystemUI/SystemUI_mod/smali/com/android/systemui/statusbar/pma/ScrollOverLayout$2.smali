.class Lcom/android/systemui/statusbar/pma/ScrollOverLayout$2;
.super Ljava/lang/Object;
.source "ScrollOverLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$2;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    .local v0, "x":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$2;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->access$100(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$2;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->access$100(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->scrollBy(II)V

    .line 99
    :cond_0
    return-void
.end method
