.class Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;->this$0:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 119
    invoke-static {}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "VolumeSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onClick : V = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a026e

    if-ne v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;->this$0:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;->this$0:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->access$100(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setTargetLevel(I)Z

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a026f

    if-ne v0, v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;->this$0:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;->this$0:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->access$100(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setTargetLevel(I)Z

    .line 127
    :cond_2
    :goto_0
    return-void
.end method
