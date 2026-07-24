.class public Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;
.super Landroid/view/View;
.source "PmaLoadingIndicatorView.java"


# static fields
.field private static final DEFAULT_INDICATOR:Lcom/android/systemui/statusbar/pma/BallPulseIndicator;


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

.field private mIndicatorColor:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mPostedHide:Z

.field private mPostedShow:Z

.field private mShouldStartAnimationDrawable:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/pma/BallPulseIndicator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/BallPulseIndicator;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/android/systemui/statusbar/pma/BallPulseIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mStartTime:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedHide:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedShow:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDismissed:Z

    .line 37
    new-instance v1, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 47
    new-instance v1, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$2;-><init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 71
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mStartTime:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedHide:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedShow:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDismissed:Z

    .line 37
    new-instance v1, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 47
    new-instance v1, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$2;-><init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mStartTime:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedHide:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedShow:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDismissed:Z

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$2;-><init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mStartTime:J

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedHide:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedShow:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDismissed:Z

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$1;-><init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView$2;-><init>(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedHide:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;
    .param p1, "x1"    # J

    .line 20
    iput-wide p1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mPostedShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;

    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDismissed:Z

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 91
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mMinWidth:I

    .line 92
    const/16 v1, 0x30

    iput v1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mMaxWidth:I

    .line 93
    iput v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mMinHeight:I

    .line 94
    iput v1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mMaxHeight:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/android/systemui/statusbar/pma/BallPulseIndicator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->setIndicator(Lcom/android/systemui/statusbar/pma/Indicator;)V

    .line 98
    :cond_0
    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method

.method private updateDrawableBounds(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 232
    move v0, p1

    .line 233
    .local v0, "right":I
    move v1, p2

    .line 234
    .local v1, "bottom":I
    const/4 v2, 0x0

    .line 235
    .local v2, "top":I
    const/4 v3, 0x0

    .line 237
    .local v3, "left":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    if-eqz v4, :cond_2

    .line 240
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/Indicator;->getIntrinsicWidth()I

    move-result v4

    .line 241
    .local v4, "intrinsicWidth":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/Indicator;->getIntrinsicHeight()I

    move-result v5

    .line 242
    .local v5, "intrinsicHeight":I
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 243
    .local v6, "intrinsicAspect":F
    int-to-float v7, p1

    int-to-float v8, p2

    div-float/2addr v7, v8

    .line 244
    .local v7, "boundAspect":F
    cmpl-float v8, v6, v7

    if-eqz v8, :cond_1

    .line 245
    cmpl-float v8, v7, v6

    if-lez v8, :cond_0

    .line 247
    int-to-float v8, p2

    mul-float/2addr v8, v6

    float-to-int v8, v8

    .line 248
    .local v8, "width":I
    sub-int v9, p1, v8

    div-int/lit8 v9, v9, 0x2

    .line 249
    .end local v3    # "left":I
    .local v9, "left":I
    add-int/2addr v8, v9

    .line 250
    .end local v0    # "right":I
    .local v8, "right":I
    nop

    .line 257
    move v0, v8

    move v3, v9

    goto :goto_0

    .line 252
    .end local v8    # "right":I
    .end local v9    # "left":I
    .restart local v0    # "right":I
    .restart local v3    # "left":I
    :cond_0
    int-to-float v8, p1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 253
    .local v8, "height":I
    sub-int v9, p2, v8

    div-int/lit8 v9, v9, 0x2

    .line 254
    .end local v2    # "top":I
    .local v9, "top":I
    add-int/2addr v8, v9

    .line 257
    .end local v1    # "bottom":I
    .local v8, "bottom":I
    move v1, v8

    move v2, v9

    .end local v8    # "bottom":I
    .end local v9    # "top":I
    .restart local v1    # "bottom":I
    .restart local v2    # "top":I
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    invoke-virtual {v8, v3, v2, v0, v1}, Lcom/android/systemui/statusbar/pma/Indicator;->setBounds(IIII)V

    .line 259
    .end local v4    # "intrinsicWidth":I
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicAspect":F
    .end local v7    # "boundAspect":F
    :cond_2
    return-void
.end method

.method private updateDrawableState()V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getDrawableState()[I

    move-result-object v0

    .line 315
    .local v0, "state":[I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/Indicator;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/Indicator;->setState([I)Z

    .line 318
    :cond_0
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    .line 269
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 274
    .local v1, "saveCount":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 276
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 279
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    if-eqz v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    .line 280
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 281
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 284
    .end local v1    # "saveCount":I
    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 323
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/pma/Indicator;->setHotspot(FF)V

    .line 328
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 309
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->updateDrawableState()V

    .line 311
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 211
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 212
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 214
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->invalidate(IIII)V

    .line 216
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    goto :goto_0

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 332
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->startAnimation()V

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->removeCallbacks()V

    .line 335
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->stopAnimation()V

    .line 342
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->removeCallbacks()V

    .line 344
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 263
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 262
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;
    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "dw":I
    const/4 v1, 0x0

    .line 291
    .local v1, "dh":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    .line 292
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 293
    iget v3, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mMinWidth:I

    iget v4, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .line 294
    iget v3, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mMinHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->updateDrawableState()V

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 302
    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result v4

    .line 303
    .local v4, "measuredWidth":I
    invoke-static {v1, p2, v3}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result v3

    .line 304
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 287
    .end local v0    # "dw":I
    .end local v1    # "dh":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;
    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->updateDrawableBounds(II)V

    .line 224
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 199
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 200
    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->startAnimation()V

    goto :goto_1

    .line 201
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->stopAnimation()V

    .line 205
    :goto_1
    return-void
.end method

.method public setIndicator(Lcom/android/systemui/statusbar/pma/Indicator;)V
    .locals 2
    .param p1, "d"    # Lcom/android/systemui/statusbar/pma/Indicator;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    if-eq v0, p1, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    .line 113
    iget v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->setIndicatorColor(I)V

    .line 114
    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/pma/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->postInvalidate()V

    .line 119
    :cond_2
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicatorColor:I

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/Indicator;->setColor(I)V

    .line 137
    return-void
.end method

.method startAnimation()V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->postInvalidate()V

    .line 187
    return-void
.end method

.method stopAnimation()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/Indicator;->stop()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->postInvalidate()V

    .line 195
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PmaLoadingIndicatorView;->mIndicator:Lcom/android/systemui/statusbar/pma/Indicator;

    if-eq p1, v0, :cond_1

    .line 175
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 174
    :goto_1
    return v0
.end method
