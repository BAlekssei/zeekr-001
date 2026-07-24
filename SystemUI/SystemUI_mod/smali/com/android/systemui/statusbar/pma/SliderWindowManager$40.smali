.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$40;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;->translateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 5262
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$40;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 5265
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 5266
    .local v0, "y":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$40;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->setY(F)V

    .line 5267
    return-void
.end method
