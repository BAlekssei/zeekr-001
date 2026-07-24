.class public Lcom/android/systemui/statusbar/pma/DimensionUtil;
.super Ljava/lang/Object;
.source "DimensionUtil.java"


# direct methods
.method public static dp2px(F)F
    .locals 2
    .param p0, "dp"    # F

    .line 8
    nop

    .line 9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 8
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method
