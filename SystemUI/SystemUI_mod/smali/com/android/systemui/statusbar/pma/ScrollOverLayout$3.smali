.class Lcom/android/systemui/statusbar/pma/ScrollOverLayout$3;
.super Ljava/lang/Object;
.source "ScrollOverLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->dealPullRelease()V
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

    .line 170
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$3;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$3;->this$0:Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->access$200(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 175
    return-void
.end method
