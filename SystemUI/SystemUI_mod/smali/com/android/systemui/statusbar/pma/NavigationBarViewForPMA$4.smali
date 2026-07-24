.class Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;
.super Ljava/lang/Object;
.source "NavigationBarViewForPMA.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 532
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 780
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const-string v0, "NavigationBarViewForPMA"

    const-string v1, "onFling: !!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 749
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    const-string v0, "NavigationBarViewForPMA"

    const-string v1, "onLongPress: !!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 769
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1700(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    return-void

    .line 764
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1600(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    return-void

    .line 759
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1500(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    return-void

    .line 754
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 755
    return-void

    .line 774
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1802(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;J)J

    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1900(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 776
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 545
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "NavigationBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll: touchType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 636
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openClimateSlider(F)V

    goto/16 :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1202(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)Z

    .line 642
    cmpl-float v0, p3, v3

    if-lez v0, :cond_3

    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveClimatePosition(I)V

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1124(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto/16 :goto_0

    .line 648
    :cond_3
    cmpg-float v0, p3, v3

    if-gez v0, :cond_14

    .line 649
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveClimatePosition(I)V

    .line 650
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_4

    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 653
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1116(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto/16 :goto_0

    .line 550
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1202(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)Z

    .line 552
    cmpl-float v0, p3, v3

    if-lez v0, :cond_6

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveVolumeUiPosition(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 556
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1124(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto/16 :goto_0

    .line 557
    :cond_6
    cmpg-float v0, p3, v3

    if-gez v0, :cond_14

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveVolumeUiPosition(I)I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 561
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1116(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto/16 :goto_0

    .line 620
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_14

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1202(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)Z

    .line 622
    cmpl-float v0, p3, v3

    if-lez v0, :cond_9

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerHeatPosition(I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 626
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1124(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto/16 :goto_0

    .line 627
    :cond_9
    cmpg-float v0, p3, v3

    if-gez v0, :cond_14

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerHeatPosition(I)I

    move-result v0

    if-eq v0, v4, :cond_a

    .line 629
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 631
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1116(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto/16 :goto_0

    .line 604
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_14

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1202(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)Z

    .line 606
    cmpl-float v0, p3, v3

    if-lez v0, :cond_c

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverHeatPosition(I)I

    move-result v0

    if-eqz v0, :cond_b

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 610
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1124(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto/16 :goto_0

    .line 611
    :cond_c
    cmpg-float v0, p3, v3

    if-gez v0, :cond_14

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverHeatPosition(I)I

    move-result v0

    if-eq v0, v4, :cond_d

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 615
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1116(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto/16 :goto_0

    .line 585
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1202(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)Z

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setPassengerTempArrowVisible(Z)V

    .line 588
    cmpl-float v0, p3, v3

    if-lez v0, :cond_f

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerTempPosition(I)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$500(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 593
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1124(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto/16 :goto_0

    .line 594
    :cond_f
    cmpg-float v0, p3, v3

    if-gez v0, :cond_14

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerTempPosition(I)V

    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$500(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    if-eq v0, v4, :cond_10

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 599
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1116(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto :goto_0

    .line 566
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1202(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;Z)Z

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->setDriverTempArrowVisible(Z)V

    .line 569
    cmpl-float v0, p3, v3

    if-lez v0, :cond_12

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverTempPosition(I)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$200(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 574
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1124(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    goto :goto_0

    .line 575
    :cond_12
    cmpg-float v0, p3, v3

    if-gez v0, :cond_14

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverTempPosition(I)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$200(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    if-eq v0, v4, :cond_13

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 580
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1116(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;F)F

    .line 666
    :cond_14
    :goto_0
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 541
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 671
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "NavigationBarViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 739
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openPassengerTempSlider(F)V

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerTempPosition(I)V

    goto/16 :goto_0

    .line 729
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openPassengerTempSlider(F)V

    .line 731
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->movePassengerTempPosition(I)V

    .line 732
    goto/16 :goto_0

    .line 734
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 735
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openDriverTempSlider(F)V

    .line 736
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverTempPosition(I)V

    .line 737
    goto/16 :goto_0

    .line 724
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openDriverTempSlider(F)V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->moveDriverTempPosition(I)V

    .line 727
    goto/16 :goto_0

    .line 700
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getClimateShift()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openClimateApp()V

    .line 705
    const-string v0, "laucher_dock_driver_ac_open"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackOperationTime(Ljava/lang/String;)V

    .line 706
    goto/16 :goto_0

    .line 676
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, -0x5

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openVolumeUI(F)V

    goto/16 :goto_0

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 682
    goto/16 :goto_0

    .line 716
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openPassengerHeatVentilationSlider(F)V

    goto/16 :goto_0

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 722
    goto :goto_0

    .line 708
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openDriverHeatVentilationSlider(F)V

    goto :goto_0

    .line 712
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 714
    goto :goto_0

    .line 692
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openPassengerTempSlider(F)V

    goto :goto_0

    .line 696
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 698
    goto :goto_0

    .line 684
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$300(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->playSoundEffect(I)V

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isSliderShow(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->openDriverTempSlider(F)V

    goto :goto_0

    .line 688
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 690
    nop

    .line 744
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
