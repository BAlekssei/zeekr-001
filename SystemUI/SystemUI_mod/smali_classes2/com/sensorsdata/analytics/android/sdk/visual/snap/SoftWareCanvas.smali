.class public Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;
.super Landroid/graphics/Canvas;
.source "SoftWareCanvas.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SoftWareCanvas"


# instance fields
.field private bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sensorsdata/analytics/android/sdk/util/WeakSet<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 44
    invoke-direct {p0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    .line 45
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    return-void
.end method

.method private drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    .local v0, "sfBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->add(Ljava/lang/Object;)Z

    .line 54
    return-object v0

    .line 50
    .end local v0    # "sfBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p1
.end method

.method private replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 13
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 58
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 63
    .local v0, "saPaint":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapShader;

    .line 65
    .local v1, "userBitmapShader":Landroid/graphics/BitmapShader;
    :try_start_0
    const-class v2, Landroid/graphics/BitmapShader;

    const-string v3, "mBitmap"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 66
    .local v2, "mBitmap":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_1

    .line 68
    const-class v4, Landroid/graphics/BitmapShader;

    const-string v5, "mTileX"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 69
    .local v4, "mTileX":Ljava/lang/reflect/Field;
    const-class v5, Landroid/graphics/BitmapShader;

    const-string v6, "mTileY"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 70
    .local v5, "mTileY":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 73
    .local v6, "sfBitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    invoke-virtual {v7, v6}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->add(Ljava/lang/Object;)Z

    .line 74
    const-class v7, Landroid/graphics/BitmapShader;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/graphics/Bitmap;

    aput-object v11, v10, v8

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 75
    .local v7, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/graphics/BitmapShader;>;"
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 76
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v8

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v9, v3

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v9, v12

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/BitmapShader;

    .line 77
    .local v3, "bitmapShaderShader":Landroid/graphics/BitmapShader;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 79
    invoke-virtual {v3, v8}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 80
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object v0

    .line 84
    .end local v2    # "mBitmap":Ljava/lang/reflect/Field;
    .end local v3    # "bitmapShaderShader":Landroid/graphics/BitmapShader;
    .end local v4    # "mTileX":Ljava/lang/reflect/Field;
    .end local v5    # "mTileY":Ljava/lang/reflect/Field;
    .end local v6    # "sfBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/graphics/BitmapShader;>;"
    .end local v8    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    goto :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 86
    .end local v0    # "saPaint":Landroid/graphics/Paint;
    .end local v1    # "userBitmapShader":Landroid/graphics/BitmapShader;
    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->bitmapWeakSet:Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->clear()V

    .line 95
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 185
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    :goto_0
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 105
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "drawBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 107
    float-to-int v1, p2

    .line 108
    .local v1, "leftInt":I
    float-to-int v2, p3

    .line 109
    .local v2, "topInt":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-super {p0, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    return-void

    .line 113
    .end local v1    # "leftInt":I
    .end local v2    # "topInt":I
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-super {p0, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 140
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-super {p0, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    :goto_0
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 121
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-super {p0, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 117
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-super {p0, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 118
    return-void
.end method

.method public drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 126
    move-object v11, p0

    move-object/from16 v12, p9

    :try_start_0
    invoke-direct {v11, v12}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v10

    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-super/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    :goto_0
    return-void
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 133
    move-object v11, p0

    move-object/from16 v12, p9

    :try_start_0
    invoke-direct {v11, v12}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v10

    move-object v1, v11

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-super/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    :goto_0
    return-void
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 146
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v9, p0

    move-object/from16 v10, p8

    invoke-direct {v9, v10}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v8

    move-object v0, v9

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-super/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 147
    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 192
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 195
    :goto_0
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 199
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    :goto_0
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 99
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    :goto_0
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 206
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    :goto_0
    return-void
.end method

.method public drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 220
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    :goto_0
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 213
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    :goto_0
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 227
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 230
    :goto_0
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 234
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    :goto_0
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 241
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 244
    :goto_0
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 248
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    :goto_0
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 255
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 258
    :goto_0
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 269
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    :goto_0
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 262
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 265
    :goto_0
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 290
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 294
    :goto_0
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 283
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 286
    :goto_0
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 276
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 279
    :goto_0
    return-void
.end method

.method public drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 158
    :try_start_0
    invoke-direct {p0, p7}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    :goto_0
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 151
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    :goto_0
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 320
    :try_start_0
    invoke-direct {p0, p6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 323
    :goto_0
    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 306
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 309
    :goto_0
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 313
    :try_start_0
    invoke-direct {p0, p6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 316
    :goto_0
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 298
    :try_start_0
    invoke-direct {p0, p6}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 302
    :goto_0
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 334
    :try_start_0
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 337
    :goto_0
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 327
    :try_start_0
    invoke-direct {p0, p7}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 330
    :goto_0
    return-void
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;)I
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 180
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "saveFlags"    # I

    .line 176
    invoke-direct {p0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 172
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v0

    return v0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "saveFlags"    # I

    .line 168
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->replaceBitmapShader(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 164
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/SoftWareCanvas;->drawOnSFCanvas(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    return-void
.end method
