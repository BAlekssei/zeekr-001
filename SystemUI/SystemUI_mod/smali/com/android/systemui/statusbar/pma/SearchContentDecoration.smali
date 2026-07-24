.class public Lcom/android/systemui/statusbar/pma/SearchContentDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SearchContentDecoration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 36
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/16 v0, 0x20

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 39
    :cond_0
    return-void
.end method
