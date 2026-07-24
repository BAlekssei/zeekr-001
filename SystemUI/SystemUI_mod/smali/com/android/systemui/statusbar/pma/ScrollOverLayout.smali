.class public Lcom/android/systemui/statusbar/pma/ScrollOverLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollOverLayout.java"


# instance fields
.field private H:Landroid/os/Handler;

.field private animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private autoScroll:Landroid/animation/ValueAnimator;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private direction:I

.field gestureDetector:Landroid/view/GestureDetector;

.field private isAnimBottomBack:Z

.field private isAnimOsTop:Z

.field private isOverScrollBottomLocked:Z

.field private mChildView:Landroidx/viewpager/widget/ViewPager;

.field private mContext:Landroid/content/Context;

.field protected mOverScrollHeight:F

.field private mTouchX:F

.field private mTouchY:F

.field private mVelocityX:F

.field private overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private scrollBottomLocked:Z

.field private scrollToLeftListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->isAnimOsTop:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->isOverScrollBottomLocked:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->isAnimBottomBack:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->scrollBottomLocked:Z

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$1;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->H:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$2;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->scrollToLeftListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$4;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 189
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$5;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 219
    new-instance v0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$6;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mOverScrollHeight:F

    .line 62
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->isAnimOsTop:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->isOverScrollBottomLocked:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->isAnimBottomBack:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->scrollBottomLocked:Z

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$1;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->H:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$2;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->scrollToLeftListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$4;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 189
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$5;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 219
    new-instance v0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$6;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->overScrollBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mContext:Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mOverScrollHeight:F

    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->autoScroll:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ScrollOverLayout;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->animBottomUpListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/ScrollOverLayout;
    .param p1, "x1"    # F

    .line 26
    iput p1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mVelocityX:F

    return p1
.end method


# virtual methods
.method public dealPullRelease()V
    .locals 5

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->isAnimBottomBack:Z

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    .line 164
    .local v1, "start":I
    iget v2, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mOverScrollHeight:F

    float-to-int v2, v2

    .line 165
    .local v2, "end":I
    if-ne v1, v2, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 169
    .local v0, "va":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    new-instance v3, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout$3;-><init>(Lcom/android/systemui/statusbar/pma/ScrollOverLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    sub-int v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 178
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 179
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    .line 69
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 106
    const-string v0, "ScrollOverLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mTouchX:F

    sub-float/2addr v0, v1

    .line 115
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mTouchY:F

    sub-float/2addr v1, v2

    .line 116
    .local v1, "dy":F
    const-string v2, "ScrollOverLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 118
    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v5}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 119
    iput v6, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->direction:I

    .line 120
    return v6

    .line 121
    :cond_1
    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v6}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 122
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->direction:I

    .line 123
    return v6

    .line 125
    :cond_2
    const-string v2, "ScrollOverLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->direction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput v5, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->direction:I

    .end local v0    # "dx":F
    .end local v1    # "dy":F
    goto :goto_0

    .line 109
    :cond_3
    const-string v0, "ScrollOverLayout"

    const-string v1, "onInterceptTouchEvent: scrollToLEFT false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mTouchX:F

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mTouchY:F

    .line 112
    nop

    .line 131
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 149
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mTouchX:F

    sub-float/2addr v0, v2

    .line 140
    .local v0, "dx":F
    iget v2, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->direction:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 141
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->direction:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->scrollRightByMove(FI)V

    .line 143
    :cond_0
    return v1

    .line 146
    .end local v0    # "dx":F
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->dealPullRelease()V

    .line 147
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollRightByMove(FI)V
    .locals 3
    .param p1, "moveX"    # F
    .param p2, "direction"    # I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x44e00000    # 1792.0f

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    .line 154
    .local v0, "offsetX":F
    if-nez p2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    neg-float v2, v0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setTranslationX(F)V

    goto :goto_0

    .line 156
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setTranslationX(F)V

    .line 159
    :cond_1
    :goto_0
    return-void
.end method

.method public setTargetViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "child"    # Landroidx/viewpager/widget/ViewPager;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/ScrollOverLayout;->mChildView:Landroidx/viewpager/widget/ViewPager;

    .line 103
    return-void
.end method
