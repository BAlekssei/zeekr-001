.class Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;
.super Ljava/lang/Object;
.source "VolumeSeekBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 548
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;->this$0:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 551
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 552
    .local v0, "x":I
    const-string v1, "VolumeSeekBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationUpdate: x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;->this$0:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeTypeIcon(I)V

    .line 554
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;->this$0:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 555
    return-void
.end method
