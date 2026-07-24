.class public Lcom/android/systemui/qs/customize/TileAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TileAdapter.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;,
        Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/qs/customize/TileAdapter$Holder;",
        ">;",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;"
    }
.end annotation


# instance fields
.field private mAccessibilityAction:I

.field private mAccessibilityFromIndex:I

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private mEditIndex:I

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mNeedsFocus:Z

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field private mTileDividerIndex:I

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 482
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$5;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 527
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$6;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    .line 95
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 96
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 97
    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;Lcom/android/systemui/qs/customize/TileAdapter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/View;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "x1"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/customize/TileAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->selectPosition(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .line 56
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .line 56
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/TileAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveTiles()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->showAccessibilityDialog(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->startAccessibleAdd(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->startAccessibleMove(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .line 56
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    return v0
.end method

.method private canRemoveTiles()Z
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v1

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private move(IILjava/util/List;)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 431
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemMoved(II)V

    .line 433
    return-void
.end method

.method private move(IILandroid/view/View;)Z
    .locals 7
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "v"    # Landroid/view/View;

    .line 372
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 373
    return v0

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 376
    .local v1, "fromLabel":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-direct {p0, p1, p2, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILjava/util/List;)V

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 378
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-lt p2, v2, :cond_1

    .line 379
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x168

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 380
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x169

    invoke-static {v2, v3, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 383
    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt p1, v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x16a

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 385
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v6

    .line 384
    invoke-static {v2, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x16b

    invoke-static {v2, v5, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 388
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f11009d

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    add-int/lit8 v3, p2, 0x1

    .line 389
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    .line 388
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x16c

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 392
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {v6}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object v6

    .line 391
    invoke-static {v2, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x16d

    invoke-static {v2, v5, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 395
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f11009f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    add-int/lit8 v3, p2, 0x1

    .line 396
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    .line 395
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 398
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    .line 399
    return v0
.end method

.method private recalcSpecs()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 145
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v2

    .line 149
    .local v2, "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    if-eqz v2, :cond_1

    .line 150
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 155
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 156
    .local v1, "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget-boolean v3, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v3, :cond_3

    .line 157
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v1    # "tile":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    move v0, v4

    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 166
    return-void

    .line 143
    :cond_5
    :goto_2
    return-void
.end method

.method private selectPosition(ILandroid/view/View;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 315
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 318
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemRemoved(I)V

    .line 320
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 323
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILandroid/view/View;)Z

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 325
    return-void
.end method

.method private showAccessibilityDialog(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 328
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 329
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 330
    const v5, 0x7f11009a

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v5, v4, v6

    .line 331
    const v5, 0x7f11009c

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 333
    .local v1, "options":[Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/systemui/qs/customize/TileAdapter$4;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/android/systemui/qs/customize/TileAdapter$4;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;ILcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Landroid/view/View;)V

    .line 334
    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 345
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 347
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 348
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 349
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 350
    return-void
.end method

.method private startAccessibleAdd(I)V
    .locals 4
    .param p1, "position"    # I

    .line 353
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 354
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 356
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 357
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 359
    return-void
.end method

.method private startAccessibleMove(I)V
    .locals 1
    .param p1, "position"    # I

    .line 362
    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 363
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 364
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    .line 365
    return-void
.end method

.method private static strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "tileInfo"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 422
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 423
    .local v0, "spec":Ljava/lang/String;
    const-string v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 425
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 427
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method private updateDividerLocations()V
    .locals 3

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 406
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 409
    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne v2, v0, :cond_0

    .line 410
    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    goto :goto_1

    .line 412
    :cond_0
    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 407
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne v0, v1, :cond_3

    .line 417
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemChanged(I)V

    .line 419
    :cond_3
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object v0
.end method

.method public getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 179
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 180
    const/4 v0, 0x2

    return v0

    .line 182
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne p1, v0, :cond_1

    .line 183
    const/4 v0, 0x4

    return v0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 186
    return v1

    .line 188
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 56
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .param p2, "position"    # I

    .line 220
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 221
    iget-object v0, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_0

    move v1, v2

    goto :goto_0

    .line 222
    :cond_0
    nop

    .line 221
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    return-void

    .line 225
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 227
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    if-nez v0, :cond_2

    .line 228
    const v0, 0x7f110226

    .local v0, "titleResId":I
    :goto_1
    goto :goto_2

    .line 229
    .end local v0    # "titleResId":I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveTiles()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getAdapterPosition()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge v0, v1, :cond_3

    .line 230
    const v0, 0x7f110227

    goto :goto_1

    .line 232
    :cond_3
    const v0, 0x7f110228

    .line 234
    .restart local v0    # "titleResId":I
    :goto_2
    iget-object v1, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 235
    return-void

    .line 237
    .end local v0    # "titleResId":I
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getItemViewType()I

    move-result v0

    const v4, 0x7f11009b

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    .line 238
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setClickable(Z)V

    .line 239
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusable(Z)V

    .line 240
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusableInTouchMode(Z)V

    .line 241
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setVisibility(I)V

    .line 242
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setImportantForAccessibility(I)V

    .line 243
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v5, p2, 0x1

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 243
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 245
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    if-eqz v0, :cond_5

    .line 254
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->requestLayout()V

    .line 255
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$2;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 263
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 265
    :cond_5
    return-void

    .line 268
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 270
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v6, :cond_7

    .line 271
    iget-object v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f110099

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v8, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    .line 273
    :cond_7
    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-eqz v6, :cond_8

    .line 274
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    new-array v7, v3, [Ljava/lang/Object;

    add-int/lit8 v8, p2, 0x1

    .line 275
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 274
    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    .line 277
    :cond_8
    iget-object v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f11009e

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v8, p2, 0x1

    .line 278
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    iget-object v8, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v8, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    aput-object v8, v5, v3

    .line 277
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 280
    :goto_3
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizeTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 281
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v5, :cond_9

    iget-boolean v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-nez v5, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    move v5, v2

    :goto_4
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 283
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 284
    iget v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge p2, v4, :cond_a

    goto :goto_5

    :cond_a
    goto :goto_6

    :cond_b
    :goto_5
    move v2, v3

    .line 285
    .local v2, "selectable":Z
    :goto_6
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setClickable(Z)V

    .line 286
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setFocusable(Z)V

    .line 287
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    if-eqz v2, :cond_c

    .line 288
    nop

    .line 287
    move v1, v3

    goto :goto_7

    .line 289
    :cond_c
    nop

    .line 287
    :goto_7
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setImportantForAccessibility(I)V

    .line 290
    if-eqz v2, :cond_d

    .line 291
    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$3;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .end local v2    # "selectable":Z
    :cond_d
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 193
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 195
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    .line 196
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    const v4, 0x7f0d0169

    invoke-virtual {v1, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v3

    .line 198
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 199
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    const v4, 0x7f0d0166

    invoke-virtual {v1, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v3

    .line 201
    :cond_1
    const v3, 0x7f0d016a

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 203
    .local v2, "frame":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v4, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 204
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object v3
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 56
    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 214
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->clearDrag()V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    .line 139
    return-void
.end method

.method public resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p2, "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    .line 125
    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 118
    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 119
    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "currentSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    .line 133
    return-void
.end method
