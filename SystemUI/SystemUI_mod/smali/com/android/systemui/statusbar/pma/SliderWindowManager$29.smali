.class Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;
.super Ljava/lang/Object;
.source "SliderWindowManager.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 1436
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 1439
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;

    .line 1440
    .local v0, "dragData":Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;
    const/4 v1, 0x1

    .line 1441
    .local v1, "removeVacancy":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_3

    .line 1442
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v9, 0x2

    if-eq v2, v9, :cond_0

    if-eq v2, v6, :cond_0

    goto :goto_0

    .line 1445
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v9

    sub-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v9, 0x42200000    # 40.0f

    cmpl-float v2, v2, v9

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v10

    sub-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_2

    .line 1446
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3602(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1447
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getBackground()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1448
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    new-instance v9, Landroid/view/View$DragShadowBuilder;

    iget-object v10, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v10, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getBackground()Landroid/view/View;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 1449
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1450
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v9, 0xa

    invoke-virtual {v2, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1452
    :cond_2
    :goto_0
    goto :goto_1

    .line 1455
    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v7, :cond_4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 1456
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3602(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1460
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_7

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_7

    .line 1461
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 1462
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    goto :goto_2

    .line 1464
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3902(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1467
    :cond_7
    :goto_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0x69

    const/16 v6, 0x6a

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 1477
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1478
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setAppDeleteIconVisible(Z)V

    .line 1479
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Landroid/view/View$DragShadowBuilder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getBackground()Landroid/view/View;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 1480
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1481
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1482
    goto/16 :goto_4

    .line 1484
    :pswitch_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setAppDeleteIconVisible(Z)V

    .line 1485
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1486
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Landroid/view/View$DragShadowBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v4, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getBackground()Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 1488
    :cond_8
    const/4 v1, 0x0

    .line 1489
    goto/16 :goto_4

    .line 1538
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1539
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->setAppDeleteIconVisible(Z)V

    .line 1540
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->startAnimationSmall()V

    .line 1541
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v9, 0xb

    const-wide/16 v10, 0x15e

    invoke-virtual {v2, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1542
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 1543
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 1544
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1546
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1547
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1548
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1550
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1551
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    const/16 v4, 0x6d

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1552
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    const-wide/16 v9, 0x7d0

    invoke-virtual {v2, v4, v9, v10}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1554
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getUninstallable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1555
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    const/16 v3, 0x70

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessage(I)Z

    .line 1556
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Landroid/view/View$DragShadowBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    goto :goto_3

    .line 1558
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 1560
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4

    .line 1491
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    .line 1492
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    .line 1493
    const/4 v1, 0x0

    .line 1495
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v3, v5, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4076(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)Z

    .line 1498
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1499
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1500
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    goto/16 :goto_4

    .line 1504
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_f

    .line 1505
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e

    .line 1506
    const/4 v1, 0x0

    .line 1507
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    if-eqz v2, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)J

    move-result-wide v9

    sub-long/2addr v2, v9

    const-wide/16 v9, 0x1f4

    cmp-long v2, v2, v9

    if-lez v2, :cond_e

    .line 1508
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v3, v5, p2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4076(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)Z

    .line 1511
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1512
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1513
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    goto/16 :goto_4

    .line 1514
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    .line 1515
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    const-wide/16 v8, 0x3e8

    if-lez v2, :cond_10

    .line 1516
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 1517
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1518
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1519
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v6, v8, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 1522
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    .line 1523
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 1524
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1525
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1526
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v4, v8, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 1532
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1533
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1534
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 1536
    goto :goto_4

    .line 1469
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3702(Lcom/android/systemui/statusbar/pma/SliderWindowManager;F)F

    .line 1470
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;F)F

    .line 1471
    const/4 v1, 0x0

    .line 1472
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 1473
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v4, v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object v4, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1474
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1475
    nop

    .line 1563
    :cond_12
    :goto_4
    if-eqz v1, :cond_13

    .line 1564
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->removeVacancy()Z

    .line 1565
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$29;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    .line 1567
    :cond_13
    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
