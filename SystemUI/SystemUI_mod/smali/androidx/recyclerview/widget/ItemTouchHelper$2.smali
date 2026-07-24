.class Landroidx/recyclerview/widget/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 306
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 310
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$500(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 315
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 316
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$602(Landroidx/recyclerview/widget/ItemTouchHelper;I)I

    .line 317
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$702(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 318
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$802(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 319
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$900(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 320
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$000(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_5

    .line 321
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1000(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-result-object v3

    .line 322
    .local v3, "animation":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    if-eqz v3, :cond_1

    .line 323
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$700(Landroidx/recyclerview/widget/ItemTouchHelper;)F

    move-result v5

    iget v6, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$702(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 324
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$800(Landroidx/recyclerview/widget/ItemTouchHelper;)F

    move-result v5

    iget v6, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v5, v6

    invoke-static {v4, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$802(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 325
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v4, v5, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1100(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 326
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v5, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1200(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$400(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    iget-object v6, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 329
    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v6, v3, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-static {v4, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 330
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1400(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v5

    invoke-static {v4, p2, v5, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1500(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 332
    .end local v3    # "animation":Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_1
    goto :goto_1

    .line 333
    :cond_2
    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 336
    :cond_3
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 339
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 343
    .local v3, "index":I
    if-ltz v3, :cond_5

    .line 344
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v4, v0, p2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1600(Landroidx/recyclerview/widget/ItemTouchHelper;ILandroid/view/MotionEvent;I)V

    .end local v3    # "index":I
    goto :goto_1

    .line 334
    :cond_4
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$602(Landroidx/recyclerview/widget/ItemTouchHelper;I)I

    .line 335
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 347
    :cond_5
    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 348
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 350
    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$000(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .line 413
    if-nez p1, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 417
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 355
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$500(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 360
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 363
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 364
    return-void

    .line 366
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 367
    .local v0, "action":I
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 368
    .local v2, "activePointerIndex":I
    if-ltz v2, :cond_2

    .line 369
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3, v0, p2, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1600(Landroidx/recyclerview/widget/ItemTouchHelper;ILandroid/view/MotionEvent;I)V

    .line 371
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$000(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 372
    .local v3, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_3

    .line 373
    return-void

    .line 375
    :cond_3
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eq v0, v4, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 388
    :pswitch_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 389
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 378
    :pswitch_1
    if-ltz v2, :cond_7

    .line 379
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1400(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v4

    invoke-static {v1, p2, v4, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1500(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 380
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$200(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 381
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$400(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$300(Landroidx/recyclerview/widget/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 382
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$300(Landroidx/recyclerview/widget/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 383
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$400(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    goto :goto_1

    .line 393
    :cond_4
    :goto_0
    :pswitch_2
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 394
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v4, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$602(Landroidx/recyclerview/widget/ItemTouchHelper;I)I

    .line 395
    goto :goto_1

    .line 397
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 398
    .local v1, "pointerIndex":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 399
    .local v4, "pointerId":I
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v6

    if-ne v4, v6, :cond_7

    .line 402
    if-nez v1, :cond_6

    const/4 v5, 0x1

    nop

    .line 403
    .local v5, "newPointerIndex":I
    :cond_6
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-static {v6, v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$602(Landroidx/recyclerview/widget/ItemTouchHelper;I)I

    .line 404
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v7}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1400(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v7

    invoke-static {v6, p2, v7, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1500(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 405
    .end local v5    # "newPointerIndex":I
    nop

    .line 409
    .end local v1    # "pointerIndex":I
    .end local v4    # "pointerId":I
    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
