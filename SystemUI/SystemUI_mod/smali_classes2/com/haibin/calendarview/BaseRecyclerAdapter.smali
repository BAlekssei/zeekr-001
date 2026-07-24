.class abstract Lcom/haibin/calendarview/BaseRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;,
        Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private onClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;

.field private onItemClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    .local p0, "this":Lcom/haibin/calendarview/BaseRecyclerAdapter;, "Lcom/haibin/calendarview/BaseRecyclerAdapter<TT;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    new-instance v0, Lcom/haibin/calendarview/BaseRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/BaseRecyclerAdapter$1;-><init>(Lcom/haibin/calendarview/BaseRecyclerAdapter;)V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/BaseRecyclerAdapter;)Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/BaseRecyclerAdapter;

    .line 32
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onItemClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method addAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/haibin/calendarview/BaseRecyclerAdapter;, "Lcom/haibin/calendarview/BaseRecyclerAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->notifyItemRangeInserted(II)V

    .line 91
    :cond_0
    return-void
.end method

.method final addItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/haibin/calendarview/BaseRecyclerAdapter;, "Lcom/haibin/calendarview/BaseRecyclerAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->notifyItemChanged(I)V

    .line 98
    :cond_0
    return-void
.end method

.method final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/haibin/calendarview/BaseRecyclerAdapter;, "Lcom/haibin/calendarview/BaseRecyclerAdapter<TT;>;"
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 108
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 78
    .local p0, "this":Lcom/haibin/calendarview/BaseRecyclerAdapter;, "Lcom/haibin/calendarview/BaseRecyclerAdapter<TT;>;"
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/haibin/calendarview/BaseRecyclerAdapter;, "Lcom/haibin/calendarview/BaseRecyclerAdapter<TT;>;"
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 69
    .local p0, "this":Lcom/haibin/calendarview/BaseRecyclerAdapter;, "Lcom/haibin/calendarview/BaseRecyclerAdapter<TT;>;"
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    .line 70
    return-void
.end method

.method abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method abstract onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 59
    .local p0, "this":Lcom/haibin/calendarview/BaseRecyclerAdapter;, "Lcom/haibin/calendarview/BaseRecyclerAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 60
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_0
    return-object v0
.end method

.method setOnItemClickListener(Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;

    .line 82
    .local p0, "this":Lcom/haibin/calendarview/BaseRecyclerAdapter;, "Lcom/haibin/calendarview/BaseRecyclerAdapter<TT;>;"
    iput-object p1, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter;->onItemClickListener:Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;

    .line 83
    return-void
.end method
