.class Lcom/android/systemui/qs/customize/TileAdapter$6;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .line 527
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "current"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 569
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$500(Lcom/android/systemui/qs/customize/TileAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 570
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v3

    if-ge v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 572
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v3

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 577
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    const/16 v0, 0xf

    .line 582
    .local v0, "dragFlags":I
    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter$6;->makeMovementFlags(II)I

    move-result v1

    return v1

    .line 578
    .end local v0    # "dragFlags":I
    :cond_1
    :goto_0
    invoke-static {v1, v1}, Lcom/android/systemui/qs/customize/TileAdapter$6;->makeMovementFlags(II)I

    move-result v0

    return v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 587
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 588
    .local v0, "from":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 589
    .local v1, "to":I
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v0, v1, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1000(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z

    move-result v2

    return v2
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 541
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 542
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 543
    const/4 p1, 0x0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getAdapterPosition()I

    move-result v0

    .line 548
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1200(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 549
    .local v1, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 550
    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v3

    if-le v0, v3, :cond_2

    iget-boolean v3, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 549
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 551
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->stopDrag()V

    .line 552
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1102(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 554
    .end local v0    # "position":I
    .end local v1    # "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_3
    if-eqz p1, :cond_4

    .line 555
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1102(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 556
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->startDrag()V

    .line 558
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1300(Lcom/android/systemui/qs/customize/TileAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$6$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/TileAdapter$6$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 564
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .line 594
    return-void
.end method
