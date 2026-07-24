.class public Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;
.super Landroid/widget/FrameLayout;
.source "VolumeSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;,
        Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private imgVolumeType:Landroid/widget/ImageView;

.field private isDay:I

.field private isMute:Z

.field l:Landroid/view/View$OnClickListener;

.field private mIsTracking:Z

.field private mMySeekBarViewHandler:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;

.field protected mOnSeekBarTargetStateListener:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;

.field protected mSeekBar:Landroid/widget/SeekBar;

.field private mTargetLevel:I

.field private mTargetMax:I

.field private mTargetMin:I

.field protected mVolumeAdjustQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mVolumeAdjustQueueMaxSize:I

.field private type:I

.field private updateVolumeListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private va:Landroid/animation/ValueAnimator;

.field volumeAdd:Landroid/widget/FrameLayout;

.field volumeSub:Landroid/widget/FrameLayout;

.field volumeType:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mIsTracking:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    .line 70
    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetMin:I

    .line 71
    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetMax:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueueMaxSize:I

    .line 86
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;-><init>(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->l:Landroid/view/View$OnClickListener;

    .line 548
    new-instance v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;-><init>(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->updateVolumeListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mIsTracking:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    .line 70
    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetMin:I

    .line 71
    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetMax:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueueMaxSize:I

    .line 86
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;-><init>(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->l:Landroid/view/View$OnClickListener;

    .line 548
    new-instance v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;-><init>(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->updateVolumeListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mIsTracking:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    .line 70
    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetMin:I

    .line 71
    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetMax:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    .line 81
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueueMaxSize:I

    .line 86
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$1;-><init>(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->l:Landroid/view/View$OnClickListener;

    .line 548
    new-instance v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$2;-><init>(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->updateVolumeListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 98
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    .line 60
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    return v0
.end method

.method private updateVolumeAdjustQueue(II)Z
    .locals 5
    .param p1, "srcValue"    # I
    .param p2, "desValue"    # I

    .line 559
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 560
    const-string v0, "VolumeSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVolumeAdjustQueue srcValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", desValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    if-ne p1, p2, :cond_1

    .line 563
    const/4 v0, 0x0

    return v0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 571
    :cond_2
    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-lez v0, :cond_8

    .line 573
    sub-int v0, p2, p1

    .line 574
    .local v0, "moveStep":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueueMaxSize:I

    if-lt v2, v3, :cond_4

    .line 575
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 576
    const-string v2, "VolumeSeekBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVolumeAdjustQueue.size() > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueueMaxSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", begin mix step"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 579
    .local v2, "lastStep":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v3

    .line 581
    .end local v2    # "lastStep":Ljava/lang/Integer;
    :cond_4
    :goto_0
    if-lez v0, :cond_7

    .line 582
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 583
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 584
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 586
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v0, v2, :cond_6

    .line 587
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    .line 588
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 592
    nop

    .line 596
    .end local v0    # "moveStep":I
    :cond_7
    goto/16 :goto_2

    .line 598
    :cond_8
    sub-int v0, p1, p2

    .line 599
    .restart local v0    # "moveStep":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueueMaxSize:I

    if-lt v2, v3, :cond_a

    .line 600
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 601
    const-string v2, "VolumeSeekBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVolumeAdjustQueue.size() > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueueMaxSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", begin mix step"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 604
    .restart local v2    # "lastStep":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v0, v3

    .line 606
    .end local v2    # "lastStep":Ljava/lang/Integer;
    :cond_a
    :goto_1
    if-lez v0, :cond_d

    .line 607
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 608
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 609
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 611
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v0, v2, :cond_c

    .line 612
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    .line 613
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 616
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 617
    nop

    .line 677
    .end local v0    # "moveStep":I
    :cond_d
    :goto_2
    return v1
.end method


# virtual methods
.method public animUpdateVolumeByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "time"    # J
    .param p5, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 541
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 546
    return-void
.end method

.method public getMax()I
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getTargetIsCompleted()Z
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public getTargetLevel()I
    .locals 1

    .line 445
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mIsTracking:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 104
    const v0, 0x7f0a0213

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0a052d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    .line 106
    const v0, 0x7f0a026e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeAdd:Landroid/widget/FrameLayout;

    .line 107
    const v0, 0x7f0a026f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeSub:Landroid/widget/FrameLayout;

    .line 108
    const v0, 0x7f0a04e6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeAdd:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeSub:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;-><init>(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mMySeekBarViewHandler:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;

    .line 114
    return-void
.end method

.method public sendVolumeSeekBarViewDelayedMsg(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "timeOut"    # I

    .line 730
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "VolumeSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendVolumeSeekBarViewDelayedMsg  ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    if-nez p2, :cond_1

    .line 734
    return-void

    .line 736
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 737
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 738
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mMySeekBarViewHandler:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 739
    return-void
.end method

.method public setKnobProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 508
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeTypeIcon(I)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 510
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 518
    return-void
.end method

.method public setMin(I)V
    .locals 1
    .param p1, "min"    # I

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 526
    return-void
.end method

.method public setMusicRowGrey()V
    .locals 3

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 746
    .local v0, "progressDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 747
    .local v1, "progress":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 748
    return-void
.end method

.method public setMusicRowNormal()V
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 755
    .local v0, "progressDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 756
    .local v1, "progress":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 757
    return-void
.end method

.method public setOnSeekBarTargetStateListener(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;

    .line 726
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mOnSeekBarTargetStateListener:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;

    .line 727
    return-void
.end method

.method public setProgress(I)V
    .locals 8
    .param p1, "progress"    # I

    .line 486
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "VolumeSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgress progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mMySeekBarViewHandler:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 491
    iput p1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 493
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->targetStateChange(I)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 498
    :cond_1
    const-string v0, "VolumeSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgress: from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/2addr v0, v1

    int-to-long v5, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->updateVolumeListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->animUpdateVolumeByTime(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setVolumeTypeIcon(I)V

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 505
    :goto_0
    return-void
.end method

.method public setSeekBarDNMode(I)V
    .locals 6
    .param p1, "dayOrNight"    # I

    .line 388
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "VolumeSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSeekBarDNMode , dayOrNight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 393
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Entertainment_open"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 394
    .local v2, "oneWorld":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "launcher_stop_flag"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 395
    .local v1, "launcherFlag":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v2, v3, :cond_1

    .line 396
    const/4 p1, 0x2

    .line 397
    const-string v4, "VolumeSeekBarView"

    const-string v5, "onDayNightModeChange: change theme to night cause onWorld"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    if-ne p1, v3, :cond_3

    .line 401
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 402
    const-string v3, "VolumeSeekBarView"

    const-string v4, "mSeekBar , setThumb ,pmg_icon_volume_slider_pointer_day "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08040d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060155

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 408
    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 409
    const-string v3, "VolumeSeekBarView"

    const-string v4, "mSeekBar , setThumb ,pmg_icon_volume_slider_pointer "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08040c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060157

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 417
    return-void
.end method

.method public setSeekBarStateListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1
    .param p1, "onSeekBarChangeListener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 538
    return-void
.end method

.method public setTargetLevel(I)Z
    .locals 3
    .param p1, "level"    # I

    .line 421
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "VolumeSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTargetLevel level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTargetLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 425
    .local v0, "ret":Z
    iget v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    if-eq p1, v1, :cond_2

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->updateVolumeAdjustQueue(II)Z

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mMySeekBarViewHandler:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$MySeekBarViewHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 432
    iget v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->updateVolumeAdjustQueue(II)Z

    .line 433
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->sendVolumeSeekBarViewDelayedMsg(II)V

    .line 434
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->targetStateChange(I)V

    .line 436
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    .line 437
    const/4 v0, 0x1

    .line 441
    :cond_2
    return v0
.end method

.method public setTracking(Z)V
    .locals 1
    .param p1, "tracking"    # Z

    .line 475
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mIsTracking:Z

    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 479
    :cond_0
    return-void
.end method

.method public setVolumeType(II)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "dayOrNight"    # I

    .line 131
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "VolumeSeekBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVolumeType which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , dayOrNight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isDay:I

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->type:I

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setSeekBarDNMode(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Entertainment_open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "oneWorld":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "launcher_stop_flag"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 141
    .local v1, "launcherFlag":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 142
    const/4 p2, 0x2

    .line 143
    const-string v3, "VolumeSeekBarView"

    const-string v4, "onDayNightModeChange: change theme to night cause onWorld"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    if-eqz p1, :cond_16

    const/4 v3, 0x3

    if-eq p1, v3, :cond_12

    const/16 v3, 0xf

    if-eq p1, v3, :cond_e

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 244
    :pswitch_0
    if-ne p2, v2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const v3, 0x7f0806aa

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const v3, 0x7f0806a9

    if-eqz v2, :cond_4

    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 254
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    goto/16 :goto_7

    .line 228
    :pswitch_1
    if-ne p2, v2, :cond_6

    .line 229
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const v3, 0x7f0806ac

    if-eqz v2, :cond_5

    .line 230
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 232
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 235
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const v3, 0x7f0806ae

    if-eqz v2, :cond_7

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 238
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    goto/16 :goto_7

    .line 196
    :pswitch_2
    if-ne p2, v2, :cond_9

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_8

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0805ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 200
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0805cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 203
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_a

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0805c9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 206
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0805cb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    const-string/jumbo v3, "\u8bed\u97f3\u64ad\u62a5"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    goto/16 :goto_7

    .line 147
    :pswitch_3
    if-ne p2, v2, :cond_c

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_b

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08057c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 151
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08057e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 155
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_d

    .line 156
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08057b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 158
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08057d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    const-string/jumbo v3, "\u5bfc\u822a\u58f0\u97f3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    goto/16 :goto_7

    .line 212
    :cond_e
    if-ne p2, v2, :cond_10

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_f

    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080582

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 216
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080584

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 219
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_11

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080581

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 222
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080583

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    const-string/jumbo v3, "\u8f66\u5916\u58f0\u97f3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    goto/16 :goto_7

    .line 164
    :cond_12
    if-ne p2, v2, :cond_14

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_13

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080570

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 168
    :cond_13
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080572

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 171
    :cond_14
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_15

    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08056f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 174
    :cond_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080571

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    const-string/jumbo v3, "\u591a\u5a92\u4f53"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    goto :goto_7

    .line 180
    :cond_16
    if-ne p2, v2, :cond_18

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_17

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08059c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 184
    :cond_17
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08059e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 187
    :cond_18
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-eqz v2, :cond_19

    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08059b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 190
    :cond_19
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08059d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->volumeType:Landroid/widget/TextView;

    const-string/jumbo v3, "\u901a\u8bdd\u58f0\u97f3"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    nop

    .line 263
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVolumeTypeIcon(I)V
    .locals 3
    .param p1, "process"    # I

    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    goto :goto_0

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_19

    if-nez p1, :cond_19

    .line 269
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    .line 273
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->type:I

    if-eqz v0, :cond_15

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/16 v2, 0xf

    if-eq v0, v2, :cond_d

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 366
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isDay:I

    if-ne v0, v1, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const v1, 0x7f0806aa

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const v1, 0x7f0806a9

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    goto/16 :goto_1

    .line 351
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isDay:I

    if-ne v0, v1, :cond_5

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const v1, 0x7f0806ac

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const v1, 0x7f0806ae

    if-eqz v0, :cond_6

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    goto/16 :goto_1

    .line 321
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isDay:I

    if-ne v0, v1, :cond_8

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0805ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 325
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0805cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 328
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_9

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0805c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 331
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0805cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    goto/16 :goto_1

    .line 275
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isDay:I

    if-ne v0, v1, :cond_b

    .line 276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_a

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08057c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 279
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08057e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 283
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_c

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08057b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 286
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08057d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    goto/16 :goto_1

    .line 336
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isDay:I

    if-ne v0, v1, :cond_f

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_e

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080582

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 340
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080584

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 343
    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_10

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080581

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 346
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080583

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    goto/16 :goto_1

    .line 291
    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isDay:I

    if-ne v0, v1, :cond_13

    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_12

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080570

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 295
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080572

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 298
    :cond_13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_14

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08056f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 301
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080571

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    goto :goto_1

    .line 306
    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isDay:I

    if-ne v0, v1, :cond_17

    .line 307
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_16

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08059c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 310
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08059e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 313
    :cond_17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->isMute:Z

    if-nez v0, :cond_18

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08059b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 316
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->imgVolumeType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08059d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    nop

    .line 384
    :goto_1
    return-void

    .line 271
    :cond_19
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public syncTargetLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mVolumeAdjustQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 450
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->targetStateChange(I)V

    .line 451
    iput p1, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mTargetLevel:I

    .line 452
    return-void
.end method

.method public targetStateChange(I)V
    .locals 1
    .param p1, "state"    # I

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mOnSeekBarTargetStateListener:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->mOnSeekBarTargetStateListener:Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView$OnSeekBarTargetStateListener;->onTargetStateChange(Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;I)V

    .line 723
    :cond_0
    return-void
.end method
