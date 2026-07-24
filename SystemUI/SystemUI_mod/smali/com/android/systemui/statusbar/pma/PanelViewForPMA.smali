.class public Lcom/android/systemui/statusbar/pma/PanelViewForPMA;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "PanelViewForPMA.java"


# instance fields
.field private mHeadsUpAnimatingAway:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected getClearAllHeight()I
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->getMaxPanelHeight()I

    move-result v0

    return v0
.end method

.method protected getMaxPanelHeight()I
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 84
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v2, 0x4b0

    return v2
.end method

.method protected getOpeningHeight()F
    .locals 1

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method protected getOverExpansionAmount()F
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected hasConflictingGestures()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isClearAllVisible()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method protected isInContentBounds(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected onExpandingStarted()V
    .locals 0

    .line 124
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 125
    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 0
    .param p1, "expandedHeight"    # F

    .line 66
    return-void
.end method

.method protected onMiddleClicked()Z
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public resetViews()V
    .locals 0

    .line 105
    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 0
    .param p1, "overExpansion"    # F
    .param p2, "isPixels"    # Z

    .line 61
    return-void
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUseDismissingAnimation()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/PanelViewForPMA;->isTracking()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0
.end method
