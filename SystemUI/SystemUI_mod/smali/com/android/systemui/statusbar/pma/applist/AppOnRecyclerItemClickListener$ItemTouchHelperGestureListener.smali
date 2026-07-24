.class Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AppOnRecyclerItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$1;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->access$100(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->access$200(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->access$200(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 61
    .local v1, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getUninstallable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getClickFunction()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->showAppDeleteBin(Ljava/lang/Boolean;II)V

    .line 63
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->translateDeleteBin()V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->showAppDeleteBin(Ljava/lang/Boolean;II)V

    .line 67
    :goto_0
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->startAnimationBig()V

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->access$200(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 70
    .end local v1    # "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 72
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->showAppDeleteBin(Ljava/lang/Boolean;II)V

    .line 52
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
