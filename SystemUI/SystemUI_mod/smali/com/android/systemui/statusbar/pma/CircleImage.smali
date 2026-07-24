.class public Lcom/android/systemui/statusbar/pma/CircleImage;
.super Landroid/widget/ImageView;
.source "CircleImage.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/android/systemui/statusbar/pma/CircleImage;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 24
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/android/systemui/statusbar/pma/CircleImage;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderRect:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderPaint:Landroid/graphics/Paint;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/pma/CircleImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderRect:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderPaint:Landroid/graphics/Paint;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    .line 57
    sget-object v1, Lcom/android/systemui/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 58
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mReady:Z

    .line 61
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mSetupPending:Z

    if-eqz v2, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->setup()V

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mSetupPending:Z

    .line 65
    :cond_0
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 104
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 105
    return-object v0

    .line 107
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 108
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 113
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 114
    sget-object v1, Lcom/android/systemui/statusbar/pma/CircleImage;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 116
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/android/systemui/statusbar/pma/CircleImage;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 120
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-object v1

    .line 123
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    return-object v0
.end method

.method private setup()V
    .locals 7

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 130
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mSetupPending:Z

    .line 131
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 135
    return-void

    .line 138
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapHeight:I

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapWidth:I

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderRadius:F

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRadius:F

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->updateShaderMatrix()V

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->invalidate()V

    .line 159
    return-void
.end method

.method private updateShaderMatrix()V
    .locals 7

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 165
    .local v1, "dy":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 166
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    if-lez v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 168
    .local v2, "scale":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    mul-float v0, v4, v3

    goto :goto_0

    .line 170
    .end local v2    # "scale":F
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 171
    .restart local v2    # "scale":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    mul-float v1, v4, v3

    .line 173
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 174
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v5, v0, v3

    float-to-int v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v3, v1

    float-to-int v3, v3

    iget v6, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderWidth:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 175
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 176
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mDrawableRadius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderRadius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->setup()V

    .line 80
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->setup()V

    .line 87
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CircleImage;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->setup()V

    .line 94
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 98
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CircleImage;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CircleImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CircleImage;->setup()V

    .line 101
    return-void
.end method
