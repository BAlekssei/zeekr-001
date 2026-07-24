.class public Lcom/android/systemui/qs/SlashDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SlashDrawable.java"


# instance fields
.field private mAnimationEnabled:Z

.field private mCurrentSlashLength:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mRotation:F

.field private final mSlashLengthProp:Landroid/util/FloatProperty;

.field private final mSlashRect:Landroid/graphics/RectF;

.field private mSlashed:Z

.field private mTintList:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    .line 65
    iput-boolean v1, p0, Lcom/android/systemui/qs/SlashDrawable;->mAnimationEnabled:Z

    .line 108
    new-instance v0, Lcom/android/systemui/qs/SlashDrawable$1;

    const-string/jumbo v1, "slashLength"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/SlashDrawable$1;-><init>(Lcom/android/systemui/qs/SlashDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashLengthProp:Landroid/util/FloatProperty;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/SlashDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/SlashDrawable;

    .line 38
    iget v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mCurrentSlashLength:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/SlashDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/SlashDrawable;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mCurrentSlashLength:F

    return p1
.end method

.method public static synthetic lambda$setSlashed$0(Lcom/android/systemui/qs/SlashDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    return-void
.end method

.method private scale(FI)F
    .locals 1
    .param p1, "frac"    # F
    .param p2, "width"    # I

    .line 179
    int-to-float v0, p2

    mul-float/2addr v0, p1

    return v0
.end method

.method private updateRect(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    .line 187
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 144
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 145
    .local v2, "height":I
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v4

    .line 146
    .local v4, "radiusX":F
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v5

    .line 147
    .local v5, "radiusY":F
    nop

    .line 148
    const v6, 0x3ecf96ed

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v6

    .line 149
    const v7, -0x424a2cd0

    invoke-direct {p0, v7, v2}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v8

    .line 150
    const v9, 0x3ef6cf78

    invoke-direct {p0, v9, v1}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/SlashDrawable;->mCurrentSlashLength:F

    add-float/2addr v7, v10

    .line 151
    invoke-direct {p0, v7, v2}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v7

    .line 147
    invoke-direct {p0, v6, v8, v9, v7}, Lcom/android/systemui/qs/SlashDrawable;->updateRect(FFFF)V

    .line 154
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 156
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 158
    iget v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    const/high16 v7, -0x3dcc0000    # -45.0f

    add-float/2addr v6, v7

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v6, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 159
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 160
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    iget v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    neg-float v6, v6

    sub-float/2addr v6, v7

    div-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v6, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 164
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 167
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 168
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 169
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    int-to-float v9, v1

    mul-float/2addr v9, v3

    int-to-float v10, v2

    mul-float/2addr v3, v10

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v8, v9, v3, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 170
    iget v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    add-float/2addr v3, v7

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v3, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 171
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 172
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 174
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 176
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 230
    const/16 v0, 0xff

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 83
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 85
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 220
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mAnimationEnabled:Z

    .line 104
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 224
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 226
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    .line 94
    return-void
.end method

.method protected setDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 207
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 97
    iget v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    .line 100
    return-void
.end method

.method public setSlashed(Z)V
    .locals 5
    .param p1, "slashed"    # Z

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 123
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashed:Z

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashed:Z

    const/4 v1, 0x0

    const v2, 0x3f955555

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 126
    .local v0, "end":F
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashed:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 128
    .local v1, "start":F
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/SlashDrawable;->mAnimationEnabled:Z

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashLengthProp:Landroid/util/FloatProperty;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 130
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/systemui/qs/-$$Lambda$SlashDrawable$d6ImpYshN38WeANK1PRMKepeaRo;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/-$$Lambda$SlashDrawable$d6ImpYshN38WeANK1PRMKepeaRo;-><init>(Lcom/android/systemui/qs/SlashDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 131
    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 132
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 133
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 134
    :cond_3
    iput v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mCurrentSlashLength:F

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    .line 137
    :goto_2
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 191
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 198
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintList:Landroid/content/res/ColorStateList;

    .line 199
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SlashDrawable;->setDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    .line 203
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 211
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 212
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 214
    return-void
.end method
