.class public abstract Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;
.super Ljava/lang/Object;
.source "AppOnRecyclerItemClickListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;,
        Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private isHicar:Z

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$1;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "isHicar"    # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->isHicar:Z

    .line 31
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$ItemTouchHelperGestureListener;-><init>(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$1;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->isHicar:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public static startDrag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .param p0, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p1, "vh"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getBackground()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 87
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 88
    .local v0, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener$DragData;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 90
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getBackground()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 91
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public abstract onItemLongClick(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 46
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/applist/AppOnRecyclerItemClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    return-void
.end method

.method public abstract showAppDeleteBin(Ljava/lang/Boolean;II)V
.end method

.method public abstract translateDeleteBin()V
.end method
