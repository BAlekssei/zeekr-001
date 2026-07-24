.class Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;
.super Ljava/lang/Object;
.source "NavigationBarViewForPMA.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 379
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;->isCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;->isCancel:Z

    .line 400
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 388
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;->isCancel:Z

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIsMute:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$700(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$700(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 395
    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 405
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$2;->isCancel:Z

    .line 384
    return-void
.end method
