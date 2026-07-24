.class public Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;
.super Landroid/view/View;
.source "Pm25ViewForPMA.java"


# instance fields
.field private isAqiViliable:Z

.field private mCircleStrokeWidth:F

.field private mFinishWheelPaint:Landroid/graphics/Paint;

.field private mWheelRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mWheelRect:Landroid/graphics/RectF;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->isAqiViliable:Z

    .line 23
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->init(Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mWheelRect:Landroid/graphics/RectF;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->isAqiViliable:Z

    .line 28
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->init(Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mWheelRect:Landroid/graphics/RectF;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->isAqiViliable:Z

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->init(Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mFinishWheelPaint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mFinishWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mFinishWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mFinishWheelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public drawPm25View(Z)V
    .locals 0
    .param p1, "aqiViliable"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->isAqiViliable:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->invalidate()V

    .line 78
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->isAqiViliable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x5

    new-array v4, v0, [F

    fill-array-data v4, :array_0

    .line 50
    .local v4, "position":[F
    new-array v0, v0, [I

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v0, v2

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0601b0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x3

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060165

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060187

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .local v0, "color":[I
    goto :goto_0

    .line 57
    .end local v0    # "color":[I
    .end local v4    # "position":[F
    :cond_0
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    move-object v4, v0

    .line 58
    .restart local v4    # "position":[F
    new-array v0, v3, [I

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v0, v2

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 62
    .restart local v0    # "color":[I
    :goto_0
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mCircleStrokeWidth:F

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mWheelRect:Landroid/graphics/RectF;

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v5, 0x41f80000    # 31.0f

    const/high16 v6, 0x42c60000    # 99.0f

    const/high16 v7, 0x42da0000    # 109.0f

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mFinishWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mCircleStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    new-instance v1, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getWidth()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getHeight()I

    move-result v5

    div-int/2addr v5, v3

    add-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    invoke-direct {v1, v2, v5, v0, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 67
    .local v1, "sweepGradient":Landroid/graphics/SweepGradient;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    .local v2, "matrix":Landroid/graphics/Matrix;
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getWidth()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->getHeight()I

    move-result v7

    div-int/2addr v7, v3

    int-to-float v3, v7

    invoke-virtual {v2, v5, v6, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 70
    invoke-virtual {v1, v2}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 71
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mFinishWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 72
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mWheelRect:Landroid/graphics/RectF;

    const/high16 v7, 0x43200000    # 160.0f

    const/high16 v8, 0x435c0000    # 220.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/pma/Pm25ViewForPMA;->mFinishWheelPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 73
    return-void

    :array_0
    .array-data 4
        0x3e23d70a    # 0.16f
        0x3ea8f5c3    # 0.33f
        0x3f000000    # 0.5f
        0x3f2b851f    # 0.67f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3e23d70a    # 0.16f
        0x3f428f5c    # 0.76f
    .end array-data
.end method
