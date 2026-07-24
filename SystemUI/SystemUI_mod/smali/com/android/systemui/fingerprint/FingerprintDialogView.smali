.class public Lcom/android/systemui/fingerprint/FingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "FingerprintDialogView.java"


# instance fields
.field private mAnimatingAway:Z

.field private final mAnimationTranslationOffset:F

.field private mBundle:Landroid/os/Bundle;

.field private final mDialog:Landroid/widget/LinearLayout;

.field private final mDisplayWidth:F

.field private final mErrorColor:I

.field private final mErrorText:Landroid/widget/TextView;

.field private final mFingerprintColor:I

.field private mHandler:Landroid/os/Handler;

.field private mLastState:I

.field private mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private final mTextColor:I

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    .line 83
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    .line 103
    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    .line 104
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    const v1, 0x7f070175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    .line 110
    nop

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    .line 112
    nop

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFingerprintColor:I

    .line 115
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 116
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 117
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 121
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f0d0069

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    .line 122
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->addView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a011c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    .line 126
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a0148

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    .line 128
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 147
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a043d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, "space":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a0294

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 149
    .local v3, "leftSpace":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a03b8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 150
    .local v4, "rightSpace":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v6, 0x7f0a00af

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 151
    .local v5, "negative":Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v7, 0x7f0a00ae

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 153
    .local v6, "positive":Landroid/widget/Button;
    invoke-direct {p0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 154
    invoke-direct {p0, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 155
    invoke-direct {p0, v4}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    .line 157
    new-instance v7, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;

    invoke-direct {v7, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v7, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;

    invoke-direct {v7, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 166
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 52
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    return v0
.end method

.method private getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 358
    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 359
    const v0, 0x7f080154

    .local v0, "iconRes":I
    :goto_0
    goto :goto_1

    .line 360
    .end local v0    # "iconRes":I
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 361
    const v0, 0x7f080154

    goto :goto_0

    .line 362
    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    .line 363
    const v0, 0x7f080153

    goto :goto_0

    .line 364
    :cond_2
    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 366
    const v0, 0x7f080153

    goto :goto_0

    .line 369
    .restart local v0    # "iconRes":I
    :goto_1
    nop

    .line 371
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 369
    .end local v0    # "iconRes":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    return-void
.end method

.method public static synthetic lambda$setDismissesDialog$2(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 233
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    return v1
.end method

.method private setDismissesDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 232
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    return-void
.end method

.method private shouldAnimateForTransition(II)Z
    .locals 3
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 343
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    .line 344
    return v0

    .line 345
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 346
    return v1

    .line 347
    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    .line 348
    return v1

    .line 349
    :cond_2
    if-ne p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 351
    return v0

    .line 353
    :cond_3
    return v0
.end method

.method private showTemporaryMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 307
    return-void
.end method

.method private updateFingerprintIcon(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 320
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 322
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 323
    const-string v1, "FingerprintDialogView"

    const-string v2, "Animation not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 327
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 328
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    .line 329
    :cond_1
    const/4 v1, 0x0

    .line 331
    .local v1, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a0163

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 332
    .local v2, "fingerprint_icon":Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    if-eqz v1, :cond_2

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldAnimateForTransition(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 336
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 339
    :cond_2
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    .line 340
    return-void
.end method


# virtual methods
.method public forceRemove()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    .line 281
    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 375
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7de

    const/high16 v4, 0x1000000

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 381
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 382
    const-string v1, "FingerprintDialogView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 384
    return-object v0
.end method

.method public isAnimatingAway()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 12

    .line 171
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a047a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a0453

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    .local v1, "subtitle":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a0107

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 176
    .local v2, "description":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a00af

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 177
    .local v3, "negative":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a00ae

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 179
    .local v4, "positive":Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 181
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    .line 182
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 184
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 187
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "subtitle"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 188
    .local v6, "subtitleText":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0x8

    if-eqz v7, :cond_0

    .line 189
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v9, "description"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 196
    .local v7, "descriptionText":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 197
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 199
    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v10, "negative_text"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v9, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v10, "positive_text"

    .line 206
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 207
    .local v9, "positiveText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    if-eqz v9, :cond_2

    .line 209
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    const/4 v10, 0x0

    if-nez v8, :cond_3

    .line 216
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 217
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 218
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 221
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 222
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 223
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 224
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 225
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 227
    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    .line 228
    return-void
.end method

.method protected resetMessage()V
    .locals 2

    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    const v1, 0x7f110248

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 288
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    .line 289
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .line 314
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    .line 316
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 315
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    return-void
.end method

.method public showHelpMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 310
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public startDismiss()V
    .locals 2

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    .line 242
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    .line 250
    .local v0, "endActionRunnable":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method
