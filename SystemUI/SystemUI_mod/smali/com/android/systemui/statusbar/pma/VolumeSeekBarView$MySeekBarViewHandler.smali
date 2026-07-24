.class Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;
.super Landroid/os/Handler;
.source "VolumeSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MySeekBarViewHandler"
.end annotation


# instance fields
.field private mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V
    .locals 1
    .param p1, "volumeSeekBarView"    # Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 682
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 683
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;->mOuter:Ljava/lang/ref/WeakReference;

    .line 684
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 689
    .local v0, "outer":Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    const-string v1, "VolumeSeekBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MySeekBarViewHandler handleMessage ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    if-nez v0, :cond_2

    .line 694
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    const-string v1, "VolumeSeekBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyNotificationServiceHandler outer == null ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_1
    return-void

    .line 713
    :catch_0
    move-exception v1

    goto :goto_1

    .line 699
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_3

    goto :goto_0

    .line 701
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 702
    iget-object v1, v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 703
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    .line 704
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getProgress()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setKnobProgress(I)V

    .line 705
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->sendVolumeSeekBarViewDelayedMsg(II)V

    .line 707
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 708
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->targetStateChange(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v1    # "value":Ljava/lang/Integer;
    :cond_5
    :goto_0
    goto :goto_2

    .line 713
    :goto_1
    nop

    .line 714
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 716
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
