.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileView;
.source "CustomizeTileView.java"


# instance fields
.field private mShowAppLabel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/plugins/qs/QSIconView;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected animationsEnabled()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getAppLabel()Landroid/widget/TextView;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 40
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mShowAppLabel:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    return-void
.end method

.method public setShowAppLabel(Z)V
    .locals 2
    .param p1, "showAppLabel"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mShowAppLabel:Z

    .line 34
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mSecondLine:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 36
    return-void
.end method
