.class Lcom/android/systemui/qs/QSDetail$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSDetail;

    .line 342
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 346
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->access$502(Lcom/android/systemui/qs/QSDetail;Z)Z

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$600(Lcom/android/systemui/qs/QSDetail;)V

    .line 349
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 354
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$200(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$700(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QuickStatusBarHeader;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$800(Lcom/android/systemui/qs/QSDetail;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetail;->access$502(Lcom/android/systemui/qs/QSDetail;Z)Z

    .line 360
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetail$4;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetail;->access$600(Lcom/android/systemui/qs/QSDetail;)V

    .line 361
    return-void
.end method
