.class Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;
.super Landroid/widget/EditText;
.source "PairingCodeEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface;


# static fields
.field private static final DEFAULT_CURSOR_DURATION:I = 0x190


# instance fields
.field private isCursorShowing:Z

.field private mBottomLineHeight:F

.field private mBottomNormalColor:I

.field private mBottomNormalPaint:Landroid/graphics/Paint;

.field private mBottomSelectedColor:I

.field private mBottomSelectedPaint:Landroid/graphics/Paint;

.field private mCurrentPosition:I

.field private mCursorColor:I

.field private mCursorDuration:I

.field private mCursorPaint:Landroid/graphics/Paint;

.field private mCursorTimer:Ljava/util/Timer;

.field private mCursorTimerTask:Ljava/util/TimerTask;

.field private mCursorWidth:I

.field private mEachRectLength:I

.field private mFigures:I

.field private mNormalBackgroundPaint:Landroid/graphics/Paint;

.field private mPairingCodeMargin:I

.field private mSelectedBackgroundColor:I

.field private mSelectedBackgroundPaint:Landroid/graphics/Paint;

.field private onCodeChangedListener:Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCurrentPosition:I

    .line 65
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mEachRectLength:I

    .line 84
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->initAttrs()V

    .line 85
    const v0, 0x106000d

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->setBackgroundColor(I)V

    .line 86
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->initPaint()V

    .line 87
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->initCursorTimer()V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->setFocusableInTouchMode(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->setSelection(I)V

    .line 90
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->requestFocus()Z

    .line 91
    invoke-super {p0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;

    .line 39
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->isCursorShowing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->isCursorShowing:Z

    return p1
.end method

.method private dp2px(I)I
    .locals 3
    .param p1, "dp"    # I

    .line 323
    int-to-float v0, p1

    .line 324
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 323
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "color"    # I

    .line 319
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 328
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 329
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 330
    .local v1, "wm":Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    .line 331
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 333
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method private initAttrs()V
    .locals 2

    .line 118
    const/4 v0, 0x4

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    .line 119
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mPairingCodeMargin:I

    .line 120
    const-string v0, "#00c48e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomSelectedColor:I

    .line 121
    const/high16 v0, 0x1060000

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomNormalColor:I

    .line 122
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->dp2px(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomLineHeight:F

    .line 123
    const v0, 0x106000d

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mSelectedBackgroundColor:I

    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorWidth:I

    .line 125
    const-string v0, "#00c48e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorColor:I

    .line 126
    const/16 v0, 0x190

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorDuration:I

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->setLayoutDirection(I)V

    .line 130
    :cond_0
    return-void
.end method

.method private initCursorTimer()V
    .locals 1

    .line 133
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText$1;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorTimerTask:Ljava/util/TimerTask;

    .line 141
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorTimer:Ljava/util/Timer;

    .line 142
    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mSelectedBackgroundPaint:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mSelectedBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mSelectedBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mNormalBackgroundPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mNormalBackgroundPaint:Landroid/graphics/Paint;

    const v1, 0x106000d

    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomSelectedPaint:Landroid/graphics/Paint;

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomNormalPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomNormalPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomLineHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomNormalPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomLineHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorPaint:Landroid/graphics/Paint;

    .line 111
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 265
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCurrentPosition:I

    .line 266
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->postInvalidate()V

    .line 268
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->onCodeChangedListener:Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->onCodeChangedListener:Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;->onInputCompleted(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    if-le v0, v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 275
    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 250
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCurrentPosition:I

    .line 251
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->postInvalidate()V

    .line 252
    return-void
.end method

.method clearText()V
    .locals 3

    .line 351
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 352
    return-void
.end method

.method hiddenKeyBord()V
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 345
    .local v0, "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 348
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 146
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 149
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorTimerTask:Ljava/util/TimerTask;

    iget v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorDuration:I

    int-to-long v4, v2

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 150
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 155
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 156
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iput v1, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCurrentPosition:I

    .line 190
    iget v1, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mEachRectLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 191
    .local v1, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getMeasuredHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 192
    .local v2, "height":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    iget v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    if-ge v4, v5, :cond_1

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    mul-int v5, v1, v4

    iget v6, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mPairingCodeMargin:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    .line 195
    .local v5, "start":I
    add-int v6, v1, v5

    .line 197
    .local v6, "end":I
    iget v7, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCurrentPosition:I

    if-ne v4, v7, :cond_0

    .line 198
    int-to-float v9, v5

    const/4 v10, 0x0

    int-to-float v11, v6

    int-to-float v12, v2

    iget-object v13, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mSelectedBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 200
    :cond_0
    int-to-float v15, v5

    const/16 v16, 0x0

    int-to-float v7, v6

    int-to-float v8, v2

    iget-object v9, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mNormalBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v9

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 202
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    .end local v5    # "start":I
    .end local v6    # "end":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    .end local v4    # "i":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "value":Ljava/lang/String;
    move v5, v3

    .local v5, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ge v5, v6, :cond_2

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    mul-int v6, v1, v5

    iget v8, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mPairingCodeMargin:I

    mul-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 209
    .local v6, "start":I
    div-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v6

    int-to-float v8, v8

    .line 210
    .local v8, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 211
    .local v9, "paint":Landroid/text/TextPaint;
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getCurrentTextColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 213
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 214
    .local v10, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    int-to-float v11, v2

    iget v12, v10, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v11, v12

    iget v12, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v11, v12

    div-float/2addr v11, v7

    iget v7, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v11, v7

    .line 216
    .local v11, "baseline":F
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, p1

    invoke-virtual {v15, v7, v8, v11, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 206
    .end local v6    # "start":I
    .end local v8    # "x":F
    .end local v9    # "paint":Landroid/text/TextPaint;
    .end local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v11    # "baseline":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 220
    .end local v5    # "i":I
    :cond_2
    move-object/from16 v15, p1

    .local v3, "i":I
    :goto_3
    iget v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    if-ge v3, v5, :cond_4

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    int-to-float v5, v2

    iget v6, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomLineHeight:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 223
    .local v5, "lineY":F
    mul-int v6, v1, v3

    iget v8, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mPairingCodeMargin:I

    mul-int/2addr v8, v3

    add-int/2addr v6, v8

    .line 224
    .restart local v6    # "start":I
    add-int v8, v1, v6

    .line 225
    .local v8, "end":I
    iget v9, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCurrentPosition:I

    if-ge v3, v9, :cond_3

    .line 226
    int-to-float v13, v6

    int-to-float v9, v8

    iget-object v10, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomSelectedPaint:Landroid/graphics/Paint;

    move-object v12, v15

    move v14, v5

    move v15, v9

    move/from16 v16, v5

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 228
    :cond_3
    int-to-float v13, v6

    int-to-float v15, v8

    iget-object v9, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomNormalPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v14, v5

    move/from16 v16, v5

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 230
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    .end local v5    # "lineY":F
    .end local v6    # "start":I
    .end local v8    # "end":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v15, p1

    goto :goto_3

    .line 233
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x1

    .line 234
    .local v3, "isCursorVisible":Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_5

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->isCursorVisible()Z

    move-result v3

    .line 237
    :cond_5
    iget-boolean v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->isCursorShowing:Z

    if-nez v5, :cond_6

    if-eqz v3, :cond_6

    iget v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCurrentPosition:I

    iget v6, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    if-ge v5, v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 239
    iget v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCurrentPosition:I

    iget v6, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mPairingCodeMargin:I

    add-int/2addr v6, v1

    mul-int/2addr v5, v6

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    .line 240
    .local v5, "startX":I
    div-int/lit8 v6, v2, 0x4

    .line 241
    .local v6, "startY":I
    move v7, v5

    .line 242
    .local v7, "endX":I
    div-int/lit8 v8, v2, 0x4

    sub-int v8, v2, v8

    .line 243
    .local v8, "endY":I
    int-to-float v13, v5

    int-to-float v14, v6

    int-to-float v15, v7

    int-to-float v9, v8

    iget-object v10, v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCursorPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 246
    .end local v5    # "startX":I
    .end local v6    # "startY":I
    .end local v7    # "endX":I
    .end local v8    # "endY":I
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 165
    const/4 v0, 0x0

    .local v0, "widthResult":I
    const/4 v1, 0x0

    .line 167
    .local v1, "heightResult":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 168
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 169
    .local v3, "widthSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_0

    .line 170
    move v0, v3

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 175
    :goto_0
    iget v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mPairingCodeMargin:I

    iget v6, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    sub-int v5, v0, v5

    iget v6, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mEachRectLength:I

    .line 177
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 178
    .local v5, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 179
    .local v6, "heightSize":I
    if-ne v5, v4, :cond_1

    .line 180
    move v1, v6

    goto :goto_1

    .line 182
    :cond_1
    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mEachRectLength:I

    .line 184
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->setMeasuredDimension(II)V

    .line 185
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 256
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mCurrentPosition:I

    .line 257
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->postInvalidate()V

    .line 258
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->onCodeChangedListener:Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->onCodeChangedListener:Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;->onPairingCodeChanged(Ljava/lang/CharSequence;III)V

    .line 261
    :cond_0
    return-void
.end method

.method public setBottomLineHeight(I)V
    .locals 1
    .param p1, "bottomLineHeight"    # I

    .line 309
    int-to-float v0, p1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomLineHeight:F

    .line 310
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->postInvalidate()V

    .line 311
    return-void
.end method

.method public setBottomNormalColor(I)V
    .locals 1
    .param p1, "bottomNormalColor"    # I

    .line 297
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomSelectedColor:I

    .line 298
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->postInvalidate()V

    .line 299
    return-void
.end method

.method public setBottomSelectedColor(I)V
    .locals 1
    .param p1, "bottomSelectedColor"    # I

    .line 291
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mBottomSelectedColor:I

    .line 292
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->postInvalidate()V

    .line 293
    return-void
.end method

.method public final setCursorVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 160
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 161
    return-void
.end method

.method public setFigures(I)V
    .locals 0
    .param p1, "figures"    # I

    .line 279
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mFigures:I

    .line 280
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->postInvalidate()V

    .line 281
    return-void
.end method

.method public setOnPairingCodeChangedListener(Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;

    .line 315
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->onCodeChangedListener:Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;

    .line 316
    return-void
.end method

.method public setPairingCodeMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 285
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mPairingCodeMargin:I

    .line 286
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->postInvalidate()V

    .line 287
    return-void
.end method

.method public setSelectedBackgroundColor(I)V
    .locals 1
    .param p1, "selectedBackground"    # I

    .line 303
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->mSelectedBackgroundColor:I

    .line 304
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->postInvalidate()V

    .line 305
    return-void
.end method

.method showKeyBoard(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 337
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 338
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 339
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 341
    :cond_0
    return-void
.end method
