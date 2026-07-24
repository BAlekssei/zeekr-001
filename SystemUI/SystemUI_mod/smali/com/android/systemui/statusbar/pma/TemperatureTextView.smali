.class public Lcom/android/systemui/statusbar/pma/TemperatureTextView;
.super Landroid/view/View;
.source "TemperatureTextView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstPaint:Landroid/graphics/Paint;

.field private mFirstPart:Ljava/lang/String;

.field private mFirstPartBound:Landroid/graphics/Rect;

.field private mIntegerPartSize:I

.field private mLetterPartSize:I

.field private mSecondPaint:Landroid/graphics/Paint;

.field private mSecondParSize:I

.field private mSecondPart:Ljava/lang/String;

.field private mSecondPartBound:Landroid/graphics/Rect;

.field private mTextColor:I

.field private offset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPartBound:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPartBound:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPaint:Landroid/graphics/Paint;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mTextColor:I

    .line 54
    const/16 v0, 0x2e

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mIntegerPartSize:I

    .line 55
    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mLetterPartSize:I

    .line 56
    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondParSize:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->offset:I

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPartBound:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPartBound:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPaint:Landroid/graphics/Paint;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mTextColor:I

    .line 54
    const/16 v0, 0x2e

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mIntegerPartSize:I

    .line 55
    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mLetterPartSize:I

    .line 56
    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondParSize:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->offset:I

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "integerPart"    # Ljava/lang/String;
    .param p2, "decimalPart"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPart:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPart:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->invalidate()V

    .line 127
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 73
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mTextColor:I

    const v2, -0x66000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondParSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPart:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPart:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPart:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPart:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPartBound:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPart:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPart:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPartBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPart:Ljava/lang/String;

    const-string v1, "HIGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPart:Ljava/lang/String;

    const-string v1, "LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPart:Ljava/lang/String;

    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mIntegerPartSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPart:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x429c0000    # 78.0f

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPart:Ljava/lang/String;

    const/high16 v1, 0x42b60000    # 91.0f

    const/high16 v2, 0x42800000    # 64.0f

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mSecondPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mLetterPartSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPart:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPartBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->offset:I

    rsub-int/lit8 v2, v2, 0x4e

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mFirstPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 97
    :cond_2
    :goto_1
    return-void
.end method

.method public setNormalTempState(F)V
    .locals 5
    .param p1, "temp"    # F

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->offset:I

    .line 119
    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "str":[Ljava/lang/String;
    const-string v3, "%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u2103"

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public setTempState(Ljava/lang/String;)V
    .locals 1
    .param p1, "temp"    # Ljava/lang/String;

    .line 108
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 104
    iput p1, p0, Lcom/android/systemui/statusbar/pma/TemperatureTextView;->mTextColor:I

    .line 105
    return-void
.end method
