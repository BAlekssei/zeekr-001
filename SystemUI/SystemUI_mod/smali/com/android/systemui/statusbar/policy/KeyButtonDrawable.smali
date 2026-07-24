.class public Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "KeyButtonDrawable.java"


# instance fields
.field private final mHasDarkDrawable:Z


# direct methods
.method protected constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawables"    # [Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 61
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 62
    const/16 v2, 0x11

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setLayerGravity(II)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 65
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 67
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 9
    .param p0, "lightContext"    # Landroid/content/Context;
    .param p1, "lightDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "darkDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "hasShadow"    # Z

    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 41
    new-instance v2, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .local v2, "light":Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
    new-instance v3, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .local v3, "dark":Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
    if-eqz p3, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 46
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0702e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 47
    .local v5, "offsetX":I
    const v6, 0x7f0702ea

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 48
    .local v6, "offsetY":I
    const v7, 0x7f0702eb

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 49
    .local v7, "radius":I
    const v8, 0x7f060139

    invoke-virtual {p0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 50
    .local v8, "color":I
    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setShadowProperties(IIII)V

    .line 52
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    .end local v7    # "radius":I
    .end local v8    # "color":I
    :cond_0
    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v4

    .line 54
    .end local v2    # "light":Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
    .end local v3    # "dark":Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    aput-object v3, v0, v1

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-object v2
.end method


# virtual methods
.method public setDarkIntensity(F)V
    .locals 3
    .param p1, "intensity"    # F

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-float/2addr v2, p1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->invalidateSelf()V

    .line 76
    return-void
.end method

.method public setRotation(F)V
    .locals 2
    .param p1, "degrees"    # F

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setRotation(F)V

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mHasDarkDrawable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setRotation(F)V

    .line 85
    :cond_1
    return-void
.end method
