.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 5273
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 5274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 5289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;->mIsCanceled:Z

    .line 5290
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 5277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 5278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;->mIsCanceled:Z

    goto :goto_0

    .line 5280
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 5281
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5283
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$41;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAppList()V

    .line 5285
    :goto_0
    return-void
.end method
