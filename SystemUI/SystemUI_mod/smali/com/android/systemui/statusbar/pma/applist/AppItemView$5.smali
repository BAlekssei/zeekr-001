.class Lcom/android/systemui/statusbar/pma/applist/AppItemView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/applist/AppItemView;->sizeAnimationInit()V
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

    .line 752
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$5;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$5;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$5;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    const v1, 0x40066666    # 2.1f

    iput v1, v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 765
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$5;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemView$5;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    const v1, 0x40066666    # 2.1f

    iput v1, v0, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->downLoading:F

    .line 758
    :cond_0
    return-void
.end method
