.class public Lcom/android/systemui/statusbar/pma/UserRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "UserRecyclerView.java"


# instance fields
.field private currentItemCount:I

.field private maxCnt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->maxCnt:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->currentItemCount:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->maxCnt:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->currentItemCount:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->maxCnt:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->currentItemCount:I

    .line 28
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 43
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->currentItemCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x106

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x83

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->setMeasuredDimension(II)V

    .line 49
    :goto_0
    return-void
.end method

.method public setCurrentItemsCount(I)V
    .locals 1
    .param p1, "cnt"    # I

    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->currentItemCount:I

    if-eq v0, p1, :cond_0

    .line 32
    iput p1, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->currentItemCount:I

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->requestLayout()V

    .line 35
    :cond_0
    return-void
.end method

.method public setMaxCnt(I)V
    .locals 0
    .param p1, "max"    # I

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/pma/UserRecyclerView;->maxCnt:I

    .line 39
    return-void
.end method
