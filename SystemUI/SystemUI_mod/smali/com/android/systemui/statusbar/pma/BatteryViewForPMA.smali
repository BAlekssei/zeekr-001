.class public Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;
.super Landroid/view/View;
.source "BatteryViewForPMA.java"


# static fields
.field private static mBatteryColor:I


# instance fields
.field private StrokeWidth:I

.field private bottom:I

.field private electricQuantity:I

.field private electricQuantityGreenPaint:Landroid/graphics/Paint;

.field private electricQuantityRedPaint:Landroid/graphics/Paint;

.field private gradient:Landroid/graphics/LinearGradient;

.field private left:I

.field private right:I

.field private top:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->mBatteryColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->StrokeWidth:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->left:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->top:I

    .line 32
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->right:I

    .line 33
    const/16 v1, 0x19

    iput v1, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->bottom:I

    .line 36
    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->StrokeWidth:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->left:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->top:I

    .line 32
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->right:I

    .line 33
    const/16 v1, 0x19

    iput v1, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->bottom:I

    .line 36
    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->StrokeWidth:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->left:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->top:I

    .line 32
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->right:I

    .line 33
    const/16 v1, 0x19

    iput v1, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->bottom:I

    .line 36
    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->StrokeWidth:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->left:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->top:I

    .line 32
    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->right:I

    .line 33
    const/16 v1, 0x19

    iput v1, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->bottom:I

    .line 36
    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    return-void
.end method

.method private drawSRCINGraphical(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rectLeft"    # I
    .param p3, "rectTop"    # I
    .param p4, "rectRight"    # I
    .param p5, "rectBottom"    # I
    .param p6, "radiusX"    # I
    .param p7, "radiusY"    # I
    .param p8, "myPaint"    # Landroid/graphics/Paint;

    move-object v0, p0

    .line 126
    iget v1, v0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->left:I

    add-int/lit8 v1, v1, 0x2

    .line 127
    .local v1, "maxLeft":I
    iget v2, v0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->top:I

    add-int/lit8 v2, v2, 0x2

    .line 128
    .local v2, "maxTop":I
    iget v3, v0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->right:I

    iget v4, v0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    .line 129
    .local v3, "maxRight":I
    iget v4, v0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->bottom:I

    add-int/lit8 v4, v4, 0x2

    .line 130
    .local v4, "maxBottom":I
    invoke-virtual/range {p1 .. p5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 131
    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    int-to-float v9, v4

    move/from16 v13, p6

    int-to-float v10, v13

    move/from16 v14, p7

    int-to-float v11, v14

    move-object/from16 v5, p1

    move-object/from16 v12, p8

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor",
            "DrawAllocation"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 98
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->left:I

    const/4 v1, 0x2

    add-int/lit8 v10, v0, 0x2

    .line 102
    .local v10, "ElectricQuantityLeft":I
    iget v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->top:I

    add-int/lit8 v11, v0, 0x2

    .line 103
    .local v11, "ElectricQuantityTop":I
    iget v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->right:I

    iget v2, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->left:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    iget v2, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v12, v0, 0x2

    .line 104
    .local v12, "ElectricQuantityRight":I
    iget v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->bottom:I

    add-int/lit8 v13, v0, 0x2

    .line 107
    .local v13, "ElectricQuantityBottom":I
    sget v0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->mBatteryColor:I

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v15, v10

    const/16 v16, 0x0

    int-to-float v2, v12

    const/16 v18, 0x0

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v0

    move/from16 v17, v2

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->gradient:Landroid/graphics/LinearGradient;

    .line 109
    iget-object v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    iget-object v1, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 110
    iget-object v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    iget v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    if-lez v0, :cond_1

    .line 112
    const/16 v6, 0xf

    const/16 v7, 0xf

    iget-object v8, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityGreenPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->drawSRCINGraphical(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;)V

    goto :goto_0

    .line 114
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->mBatteryColor:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 115
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v15, v10

    const/16 v16, 0x0

    int-to-float v2, v12

    const/16 v18, 0x0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v0

    move/from16 v17, v2

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->gradient:Landroid/graphics/LinearGradient;

    .line 116
    iget-object v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    iget-object v1, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 117
    iget v0, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    if-lez v0, :cond_1

    .line 118
    const/16 v6, 0xf

    const/16 v7, 0xf

    iget-object v8, v9, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantityRedPaint:Landroid/graphics/Paint;

    move-object v0, v9

    move-object/from16 v1, p1

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->drawSRCINGraphical(Landroid/graphics/Canvas;IIIIIILandroid/graphics/Paint;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x4d1ef1c6    # 1.66665312E8f
        -0xe10e3a
    .end array-data

    :array_1
    .array-data 4
        0x4daf1b51    # 3.67225376E8f
        -0x50e4af
    .end array-data
.end method

.method public setBatterySize(I)V
    .locals 5
    .param p1, "size"    # I

    .line 65
    iget v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->right:I

    int-to-double v1, p1

    const-wide v3, 0x4001d70a3d70a3d7L    # 2.23

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->right:I

    .line 66
    iget v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->bottom:I

    int-to-double v1, p1

    const-wide/high16 v3, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->bottom:I

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->invalidate()V

    .line 70
    return-void
.end method

.method public setPopupBatteryColor(I)V
    .locals 3
    .param p1, "batteryColor"    # I

    .line 88
    const-string v0, "BatteryViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupBatteryColor batteryColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sput p1, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->mBatteryColor:I

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->invalidate()V

    .line 93
    return-void
.end method

.method public setPopupBatteryLevel(FI)V
    .locals 3
    .param p1, "electric"    # F
    .param p2, "batteryColor"    # I

    .line 73
    const-string v0, "BatteryViewForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPopupBatteryLevel electric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", batteryColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sput p2, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->mBatteryColor:I

    .line 75
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    if-ltz v1, :cond_0

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_0

    .line 76
    float-to-int v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    goto :goto_0

    .line 77
    :cond_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    goto :goto_0

    .line 79
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 80
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->electricQuantity:I

    .line 83
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/BatteryViewForPMA;->invalidate()V

    .line 84
    return-void
.end method
