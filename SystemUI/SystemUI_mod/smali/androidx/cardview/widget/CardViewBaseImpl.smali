.class Landroidx/cardview/widget/CardViewBaseImpl;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroidx/cardview/widget/CardViewImpl;


# instance fields
.field private final mCornerRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$000(Landroidx/cardview/widget/CardViewBaseImpl;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Landroidx/cardview/widget/CardViewBaseImpl;

    .line 27
    iget-object v0, p0, Landroidx/cardview/widget/CardViewBaseImpl;->mCornerRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method private createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p3, "radius"    # F
    .param p4, "elevation"    # F
    .param p5, "maxElevation"    # F

    .line 92
    new-instance v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object v6
.end method

.method private getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    .locals 1
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 170
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    return-object v0
.end method


# virtual methods
.method public getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 166
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F
    .locals 1
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 161
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMinWidth()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 1

    .line 36
    new-instance v0, Landroidx/cardview/widget/CardViewBaseImpl$1;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardViewBaseImpl$1;-><init>(Landroidx/cardview/widget/CardViewBaseImpl;)V

    sput-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 77
    return-void
.end method

.method public initialize(Landroidx/cardview/widget/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p4, "radius"    # F
    .param p5, "elevation"    # F
    .param p6, "maxElevation"    # F

    .line 82
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/CardViewBaseImpl;->createBackground(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v0

    .line 84
    .local v0, "background":Landroidx/cardview/widget/RoundRectDrawableWithShadow;
    invoke-interface {p1}, Landroidx/cardview/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->setAddPaddingForCorners(Z)V

    .line 85
    invoke-interface {p1, v0}, Landroidx/cardview/widget/CardViewDelegate;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V

    .line 87
    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/CardViewDelegate;)V
    .locals 5
    .param p1, "cardView"    # Landroidx/cardview/widget/CardViewDelegate;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 99
    .local v0, "shadowPadding":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getShadowBackground(Landroidx/cardview/widget/CardViewDelegate;)Landroidx/cardview/widget/RoundRectDrawableWithShadow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V

    .line 100
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getMinWidth(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 101
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/CardViewBaseImpl;->getMinHeight(Landroidx/cardview/widget/CardViewDelegate;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 100
    invoke-interface {p1, v1, v2}, Landroidx/cardview/widget/CardViewDelegate;->setMinWidthHeightInternal(II)V

    .line 102
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v4}, Landroidx/cardview/widget/CardViewDelegate;->setShadowPadding(IIII)V

    .line 104
    return-void
.end method
