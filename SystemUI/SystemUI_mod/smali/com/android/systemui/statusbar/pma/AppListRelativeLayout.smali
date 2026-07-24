.class public Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "AppListRelativeLayout.java"


# instance fields
.field private DeleteBinShow:Z

.field private downX:F

.field private downY:F

.field private mAppListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->DeleteBinShow:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->DeleteBinShow:Z

    .line 19
    return-void
.end method


# virtual methods
.method public DeleteBinShow(Z)V
    .locals 0
    .param p1, "is"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->DeleteBinShow:Z

    .line 47
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->mAppListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->mAppListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;->closeApplistDelayed()V

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->downX:F

    sub-float/2addr v0, v1

    .line 31
    .local v0, "distanceX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->downY:F

    sub-float/2addr v1, v3

    .line 32
    .local v1, "distanceY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/high16 v3, 0x42200000    # 40.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    .line 33
    return v2

    .line 35
    .end local v0    # "distanceX":F
    .end local v1    # "distanceY":F
    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->downX:F

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->downY:F

    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->downX:F

    const/high16 v1, 0x443e0000    # 760.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->downX:F

    const/high16 v1, 0x44910000    # 1160.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->downY:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->DeleteBinShow:Z

    if-nez v0, :cond_3

    .line 39
    return v2

    .line 42
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAppListTouchListener(Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->mAppListTouchListener:Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppListTouchListener;

    .line 51
    return-void
.end method
