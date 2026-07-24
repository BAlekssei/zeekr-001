.class public Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;
.super Landroid/view/View;
.source "ArcDragViewForPMA.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private resultAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "ArcDragViewForPMA"

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->resultAngle:F

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const-string v0, "ArcDragViewForPMA"

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->resultAngle:F

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const-string v0, "ArcDragViewForPMA"

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->resultAngle:F

    .line 60
    return-void
.end method


# virtual methods
.method public changeAngle(I)V
    .locals 2
    .param p1, "pm25Num"    # I

    .line 63
    const/16 v0, 0x11d

    if-le p1, v0, :cond_0

    .line 64
    const/16 p1, 0x11d

    goto :goto_0

    .line 65
    :cond_0
    if-gez p1, :cond_1

    .line 66
    const/4 p1, 0x0

    .line 68
    :cond_1
    :goto_0
    const v0, 0x3f451eb8    # 0.77f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->resultAngle:F

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->invalidate()V

    .line 71
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->TAG:Ljava/lang/String;

    const-string v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 79
    .local v0, "paintDegree":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    const/16 v1, 0xf8

    const/16 v2, 0xff

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    const-string v1, "#88000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 83
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 87
    iget v1, p0, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->resultAngle:F

    const/high16 v2, 0x42e00000    # 112.0f

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/ArcDragViewForPMA;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 88
    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, 0x41d00000    # 26.0f

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, 0x42140000    # 37.0f

    move-object v1, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    return-void
.end method
