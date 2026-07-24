.class public Lcom/android/systemui/statusbar/phone/QuickStepController;
.super Ljava/lang/Object;
.source "QuickStepController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;


# instance fields
.field private mAllowGestureDetection:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentNavigationBarView:Landroid/view/View;

.field private mDarkIntensity:F

.field private mDragPositive:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHighlight:Landroid/graphics/RadialGradient;

.field private mHighlightCenter:F

.field private mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

.field private mIsRTL:Z

.field private mIsVertical:Z

.field private final mNavBarAlphaProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/QuickStepController;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private final mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

.field private mQuickScrubActive:Z

.field private mQuickScrubEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mQuickStepStarted:Z

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTrackAlpha:F

.field private final mTrackAlphaProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/QuickStepController;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackAnimator:Landroid/animation/AnimatorSet;

.field private final mTrackEndPadding:I

.field private final mTrackPaint:Landroid/graphics/Paint;

.field private final mTrackRect:Landroid/graphics/Rect;

.field private mTrackScale:F

.field private final mTrackScaleProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/QuickStepController;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackThickness:I

.field private final mTransformGlobalMatrix:Landroid/graphics/Matrix;

.field private final mTransformLocalMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$1;

    const-string v1, "TrackAlpha"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlphaProperty:Landroid/util/FloatProperty;

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$2;

    const-string v1, "TrackScale"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScaleProperty:Landroid/util/FloatProperty;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$3;

    const-string v1, "NavBarAlpha"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavBarAlphaProperty:Landroid/util/FloatProperty;

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStepController$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    .line 155
    const-class v1, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    .line 156
    const v1, 0x7f0702ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    .line 157
    const v1, 0x7f0702ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickStepController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/QuickStepController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;
    .param p1, "x1"    # F

    .line 62
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickStepController;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickStepController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/QuickStepController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;
    .param p1, "x1"    # F

    .line 62
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickStepController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mCurrentNavigationBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickStepController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->resetQuickScrub()V

    return-void
.end method

.method private animateEnd()V
    .locals 7

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 482
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlphaProperty:Landroid/util/FloatProperty;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 483
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScaleProperty:Landroid/util/FloatProperty;

    new-array v4, v3, [F

    const v5, 0x3f733333    # 0.95f

    aput v5, v4, v6

    .line 484
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    .line 482
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 485
    .local v1, "trackAnimator":Landroid/animation/ObjectAnimator;
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 486
    const-wide/16 v4, 0x86

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 487
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavBarAlphaProperty:Landroid/util/FloatProperty;

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 488
    .local v2, "navBarAnimator":Landroid/animation/ObjectAnimator;
    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 489
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 490
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    .line 491
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v6

    aput-object v2, v0, v3

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 494
    return-void
.end method

.method private endQuickScrub(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->animateEnd()V

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickScrubEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickStepController"

    const-string v2, "Failed to send end of quick scrub."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    .line 475
    :cond_1
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v1, p0

    .line 188
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 189
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDownHitTarget()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 190
    .local v4, "deadZoneConsumed":Z
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 191
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_10

    .line 194
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 197
    .local v6, "action":I
    packed-switch v6, :pswitch_data_0

    .line 306
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 225
    :pswitch_0
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    if-nez v0, :cond_3

    .line 226
    goto :goto_1

    .line 228
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v7, v0

    .line 229
    .local v7, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v8, v0

    .line 230
    .local v8, "y":I
    iget v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownX:I

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 231
    .local v9, "xDiff":I
    iget v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownY:I

    sub-int v0, v8, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 236
    .local v10, "yDiff":I
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    if-eqz v0, :cond_6

    .line 237
    nop

    .line 238
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickScrubTouchSlopPx()I

    move-result v0

    if-le v10, v0, :cond_4

    if-le v10, v9, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 239
    .local v0, "exceededScrubTouchSlop":Z
    :goto_2
    nop

    .line 240
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickStepTouchSlopPx()I

    move-result v11

    if-le v9, v11, :cond_5

    if-le v9, v10, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    .line 241
    .local v11, "exceededSwipeUpTouchSlop":Z
    :goto_3
    move v12, v8

    .line 242
    .local v12, "pos":I
    iget v13, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownY:I

    .line 243
    .local v13, "touchDown":I
    iget-object v14, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int v14, v12, v14

    .line 244
    .local v14, "offset":I
    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 253
    .local v0, "offset":I
    .local v12, "exceededScrubTouchSlop":Z
    .local v13, "pos":I
    .local v14, "touchDown":I
    .local v15, "trackSize":I
    :goto_4
    move/from16 v19, v12

    move v12, v0

    move v0, v14

    move v14, v13

    move/from16 v13, v19

    goto :goto_7

    .line 246
    .end local v0    # "offset":I
    .end local v11    # "exceededSwipeUpTouchSlop":Z
    .end local v12    # "exceededScrubTouchSlop":Z
    .end local v13    # "pos":I
    .end local v14    # "touchDown":I
    .end local v15    # "trackSize":I
    :cond_6
    nop

    .line 247
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickScrubTouchSlopPx()I

    move-result v0

    if-le v9, v0, :cond_7

    if-le v9, v10, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    .line 248
    .local v0, "exceededScrubTouchSlop":Z
    :goto_5
    nop

    .line 249
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickStepTouchSlopPx()I

    move-result v11

    if-le v10, v11, :cond_8

    if-le v10, v9, :cond_8

    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    .line 250
    .restart local v11    # "exceededSwipeUpTouchSlop":Z
    :goto_6
    move v12, v7

    .line 251
    .local v12, "pos":I
    iget v13, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownX:I

    .line 252
    .local v13, "touchDown":I
    iget-object v14, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int v14, v12, v14

    .line 253
    .local v14, "offset":I
    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    goto :goto_4

    .line 257
    .local v0, "offset":I
    .local v12, "exceededScrubTouchSlop":Z
    .local v13, "pos":I
    .local v14, "touchDown":I
    .restart local v15    # "trackSize":I
    :goto_7
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v2, :cond_9

    if-eqz v11, :cond_9

    .line 258
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->startQuickStep(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 265
    :cond_9
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 266
    goto/16 :goto_1

    .line 269
    :cond_a
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-nez v2, :cond_c

    .line 270
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_8

    :cond_b
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_8
    sub-int/2addr v0, v2

    .line 273
    .end local v0    # "offset":I
    .local v2, "offset":I
    :cond_c
    move v2, v0

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-nez v0, :cond_e

    .line 274
    if-gez v2, :cond_d

    if-ge v13, v14, :cond_d

    :goto_9
    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    goto :goto_a

    :cond_e
    if-ltz v2, :cond_d

    if-le v13, v14, :cond_d

    goto :goto_9

    :goto_a
    move/from16 v16, v0

    .line 275
    .local v16, "allowDrag":Z
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    int-to-float v3, v15

    div-float/2addr v0, v3

    const/4 v3, 0x0

    move/from16 v17, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v8}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v3

    .line 276
    .end local v8    # "y":I
    .local v3, "scrubFraction":F
    .local v17, "y":I
    if-eqz v16, :cond_f

    .line 278
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_f

    if-eqz v12, :cond_f

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->startQuickScrub()V

    .line 283
    :cond_f
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-eqz v0, :cond_10

    if-gez v2, :cond_11

    :cond_10
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-nez v0, :cond_2

    if-gtz v2, :cond_2

    .line 286
    :cond_11
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickScrubProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    nop

    .line 293
    move/from16 v18, v2

    goto :goto_b

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "QuickStepController"

    move/from16 v18, v2

    const-string v2, "Failed to send progress of quick scrub."

    .end local v2    # "offset":I
    .local v18, "offset":I
    invoke-static {v8, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b
    int-to-float v0, v7

    iput v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHighlightCenter:F

    .line 294
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->invalidate()V

    goto/16 :goto_1

    .line 300
    .end local v3    # "scrubFraction":F
    .end local v7    # "x":I
    .end local v9    # "xDiff":I
    .end local v10    # "yDiff":I
    .end local v11    # "exceededSwipeUpTouchSlop":Z
    .end local v12    # "exceededScrubTouchSlop":Z
    .end local v13    # "pos":I
    .end local v14    # "touchDown":I
    .end local v15    # "trackSize":I
    .end local v16    # "allowDrag":Z
    .end local v17    # "y":I
    .end local v18    # "offset":I
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickStepController;->endQuickScrub(Z)V

    goto/16 :goto_1

    .line 199
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 200
    .local v0, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 203
    .local v2, "y":I
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_12

    .line 204
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 205
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    .line 208
    :cond_12
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mCurrentNavigationBarView:Landroid/view/View;

    .line 209
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonAtPosition(II)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 210
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    if-eqz v3, :cond_13

    .line 212
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setDelayTouchFeedback(Z)V

    .line 214
    :cond_13
    iput v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownX:I

    .line 215
    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownY:I

    .line 216
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    sget-object v7, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 217
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    sget-object v7, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 218
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 219
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 220
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    .line 221
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    .line 222
    nop

    .line 306
    .end local v0    # "x":I
    .end local v2    # "y":I
    :goto_c
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_15

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    if-nez v0, :cond_14

    const/4 v0, 0x3

    if-eq v6, v0, :cond_14

    const/4 v2, 0x1

    if-ne v6, v2, :cond_16

    goto :goto_d

    .line 308
    :cond_14
    const/4 v2, 0x1

    :goto_d
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->proxyMotionEvents(Landroid/view/MotionEvent;)Z

    goto :goto_e

    .line 310
    :cond_15
    const/4 v2, 0x1

    :cond_16
    :goto_e
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_18

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    if-nez v0, :cond_18

    if-eqz v4, :cond_17

    goto :goto_f

    :cond_17
    move v2, v3

    nop

    :cond_18
    :goto_f
    return v2

    .line 192
    .end local v6    # "action":I
    :cond_19
    :goto_10
    move-object/from16 v5, p1

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private proxyMotionEvents(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    .line 523
    .local v0, "overviewProxy":Lcom/android/systemui/shared/recents/IOverviewProxy;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 525
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDownHitTarget()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onPreMotionEvent(I)V

    .line 528
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    const/4 v1, 0x1

    .line 536
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 532
    return v1

    .line 536
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "QuickStepController"

    const-string v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 536
    .end local v1    # "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 537
    nop

    .line 538
    const/4 v1, 0x0

    return v1

    .line 536
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    throw v1
.end method

.method private resetQuickScrub()V
    .locals 1

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    .line 498
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mCurrentNavigationBarView:Landroid/view/View;

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->updateHighlight()V

    .line 501
    return-void
.end method

.method private startQuickScrub()V
    .locals 7

    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->updateHighlight()V

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    .line 426
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlphaProperty:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 427
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScaleProperty:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    aput v5, v4, v6

    .line 428
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v0

    .line 426
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 429
    .local v2, "trackAnimator":Landroid/animation/ObjectAnimator;
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 430
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 431
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavBarAlphaProperty:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 432
    .local v3, "navBarAnimator":Landroid/animation/ObjectAnimator;
    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 433
    const-wide/16 v4, 0x86

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 434
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    .line 435
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v6

    aput-object v3, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateSlippery()V

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickScrubStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickStepController"

    const-string v4, "Failed to send start of quick scrub."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->notifyQuickScrubStarted()V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    .line 455
    .end local v2    # "trackAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "navBarAnimator":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method private startQuickStep(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickStep(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 409
    goto :goto_1

    .line 408
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "QuickStepController"

    const-string v2, "Failed to send quick step started."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 410
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->notifyQuickStepStarted()V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    .line 417
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-eqz v0, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->animateEnd()V

    .line 420
    :cond_1
    return-void

    .line 408
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    throw v0
.end method

.method private updateHighlight()V
    .locals 9

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    return-void

    .line 508
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkIntensity:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    const v1, 0x7f060173

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 510
    .local v0, "colorBase":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    const v2, 0x7f060175

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 513
    .local v6, "colorGrad":I
    :goto_0
    move v6, v1

    goto :goto_1

    .line 512
    .end local v0    # "colorBase":I
    .end local v6    # "colorGrad":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    const v1, 0x7f060174

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 513
    .restart local v0    # "colorBase":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    const v2, 0x7f060176

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 515
    .restart local v6    # "colorGrad":I
    :goto_1
    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    .line 516
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v5, v2

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    move v7, v0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHighlight:Landroid/graphics/RadialGradient;

    .line 518
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHighlight:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 519
    return-void
.end method


# virtual methods
.method public onDarkIntensityChange(F)V
    .locals 3
    .param p1, "intensity"    # F

    .line 359
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkIntensity:F

    .line 360
    .local v0, "oldIntensity":F
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkIntensity:F

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->updateHighlight()V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->invalidate()V

    .line 369
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlpha:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 322
    .local v0, "radius":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    iget v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHighlightCenter:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v9

    .line 324
    .local v9, "translate":F
    const/4 v1, 0x0

    invoke-virtual {p1, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    iget v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScaleX()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 326
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScaleY()F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    .line 327
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 325
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v2, v1, v9

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v4, v1, v9

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v0

    move v7, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 330
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 331
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 335
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingLeft()I

    move-result v1

    .line 336
    .local v1, "paddingLeft":I
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingTop()I

    move-result v2

    .line 337
    .local v2, "paddingTop":I
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingRight()I

    move-result v3

    .line 338
    .local v3, "paddingRight":I
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingBottom()I

    move-result v4

    .line 339
    .local v4, "paddingBottom":I
    sub-int v5, p4, p2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    .line 340
    .local v5, "width":I
    sub-int v6, p5, p3

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    .line 342
    .local v6, "height":I
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    const/4 v8, 0x2

    if-eqz v7, :cond_0

    .line 343
    iget v7, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    sub-int v7, v5, v7

    div-int/2addr v7, v8

    add-int/2addr v7, v1

    .line 344
    .local v7, "x1":I
    iget v9, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    add-int/2addr v9, v7

    .line 345
    .local v9, "x2":I
    iget v10, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    add-int/2addr v10, v2

    .line 346
    .local v10, "y1":I
    add-int v11, v10, v6

    move v12, v1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    .end local v1    # "paddingLeft":I
    .local v12, "paddingLeft":I
    mul-int/2addr v8, v1

    sub-int/2addr v11, v8

    .local v11, "y2":I
    goto :goto_0

    .line 348
    .end local v7    # "x1":I
    .end local v9    # "x2":I
    .end local v10    # "y1":I
    .end local v11    # "y2":I
    .end local v12    # "paddingLeft":I
    .restart local v1    # "paddingLeft":I
    :cond_0
    move v12, v1

    .end local v1    # "paddingLeft":I
    .restart local v12    # "paddingLeft":I
    iget v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    sub-int v1, v6, v1

    div-int/2addr v1, v8

    add-int v10, v1, v2

    .line 349
    .restart local v10    # "y1":I
    iget v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    add-int v11, v10, v1

    .line 350
    .restart local v11    # "y2":I
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingStart()I

    move-result v1

    iget v7, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    add-int/2addr v7, v1

    .line 351
    .restart local v7    # "x1":I
    add-int v1, v7, v5

    iget v9, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    mul-int/2addr v8, v9

    sub-int v9, v1, v8

    .restart local v9    # "x2":I
    :goto_0
    move v1, v9

    .line 353
    .end local v9    # "x2":I
    .local v1, "x2":I
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v7, v10, v1, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 354
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->updateHighlight()V

    .line 355
    return-void
.end method

.method public onNavigationButtonLongPress(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    .line 183
    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 184
    .local v0, "ignoreProxyDownEvent":Z
    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method public setBarState(ZZ)V
    .locals 5
    .param p1, "isVertical"    # Z
    .param p2, "isRTL"    # Z

    .line 373
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsRTL:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 374
    .local v0, "changed":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 376
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->endQuickScrub(Z)V

    .line 378
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    .line 379
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsRTL:Z

    .line 381
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindowManager;->getNavBarPosition()I

    move-result v3

    .line 382
    .local v3, "navbarPos":I
    if-eq v3, v2, :cond_4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    .line 383
    if-eqz p2, :cond_5

    .line 384
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v3    # "navbarPos":I
    :cond_5
    goto :goto_4

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "QuickStepController"

    const-string v3, "Failed to get nav bar position."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method public setComponents(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .param p1, "navigationBarView"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 164
    return-void
.end method
