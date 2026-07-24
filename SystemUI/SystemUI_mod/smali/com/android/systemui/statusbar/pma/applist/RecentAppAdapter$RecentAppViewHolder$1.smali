.class Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;-><init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

.field final synthetic val$this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 217
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$1;->val$this$0:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$000(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    const v1, 0x40066666    # 2.1f

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$002(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;F)F

    .line 230
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$000(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder$1;->this$1:Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    const v1, 0x40066666    # 2.1f

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->access$002(Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;F)F

    .line 223
    :cond_0
    return-void
.end method
