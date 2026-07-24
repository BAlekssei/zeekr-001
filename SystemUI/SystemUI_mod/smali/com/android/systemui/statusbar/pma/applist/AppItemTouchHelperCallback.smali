.class public Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "AppItemTouchHelperCallback.java"


# instance fields
.field private adapter:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

.field private isHiCarApplist:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;->adapter:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;Z)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;
    .param p2, "isHiCarApplist"    # Z

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;->adapter:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    .line 25
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;->isHiCarApplist:Z

    .line 26
    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 69
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->onItemCleared()V

    .line 70
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 71
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 30
    const/16 v0, 0xf

    .line 31
    .local v0, "dragFlags":I
    const/4 v1, 0x0

    .line 32
    .local v1, "swipeFlags":I
    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v2

    return v2
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;->isHiCarApplist:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 47
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppItemTouchHelperCallback;->adapter:Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->onItemMove(II)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 60
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 61
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->onItemSelected()V

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 65
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .line 56
    return-void
.end method
