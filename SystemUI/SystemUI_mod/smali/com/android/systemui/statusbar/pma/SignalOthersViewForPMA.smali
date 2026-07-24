.class public Lcom/android/systemui/statusbar/pma/SignalOthersViewForPMA;
.super Landroid/widget/LinearLayout;
.source "SignalOthersViewForPMA.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 23
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 24
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 29
    return-void
.end method
