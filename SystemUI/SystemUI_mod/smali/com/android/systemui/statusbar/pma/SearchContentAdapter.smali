.class public Lcom/android/systemui/statusbar/pma/SearchContentAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;,
        Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;
    }
.end annotation


# instance fields
.field private mCurrentState:I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/pma/SearchResultInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mCurrentState:I

    .line 57
    return-void
.end method

.method private getSearchingStateDisplayName(I)Ljava/lang/String;
    .locals 5
    .param p1, "pos"    # I

    .line 137
    const-string v0, ""

    .line 138
    .local v0, "displayName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    .line 140
    .local v3, "searchResultInfo":Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 141
    if-ge v1, p1, :cond_0

    .line 142
    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getDisplayName()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v4, v1, p1

    sub-int/2addr v2, v4

    .line 145
    .local v2, "realPos":I
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getDisplayName()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    .line 146
    nop

    .line 148
    .end local v2    # "realPos":I
    .end local v3    # "searchResultInfo":Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    :cond_1
    return-object v0
.end method

.method private getSearchingStateSize()I
    .locals 4

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    .line 131
    .local v2, "searchResultInfo":Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 132
    .end local v2    # "searchResultInfo":Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    goto :goto_0

    .line 133
    :cond_0
    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 116
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mCurrentState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 124
    return v1

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    :goto_0
    return v1

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->getSearchingStateSize()I

    move-result v1

    :goto_1
    return v1

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mCurrentState:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 106
    const/16 v0, 0x14

    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mCurrentState:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 108
    const/16 v0, 0x15

    return v0

    .line 110
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mCurrentState:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 82
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->getItemViewType(I)I

    move-result v0

    .line 83
    .local v0, "type":I
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 89
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;

    .line 90
    .local v1, "singleSearchResultViewHolder":Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;
    iget-object v2, v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;->tvSearchResult:Landroid/widget/TextView;

    const-string v3, "Search in navigation"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iput v0, v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;->mType:I

    .line 92
    .end local v1    # "singleSearchResultViewHolder":Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;
    goto :goto_1

    :cond_1
    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 93
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;

    .line 94
    .restart local v1    # "singleSearchResultViewHolder":Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;
    iget-object v2, v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;->tvSearchResult:Landroid/widget/TextView;

    const-string v3, "Search in app store"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iput v0, v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;->mType:I

    .line 96
    .end local v1    # "singleSearchResultViewHolder":Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;
    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 97
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;

    .line 98
    .restart local v1    # "singleSearchResultViewHolder":Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;
    iget-object v2, v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;->tvSearchResult:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->getSearchingStateDisplayName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iput v0, v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;->mType:I

    .end local v1    # "singleSearchResultViewHolder":Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;
    goto :goto_1

    .line 84
    :cond_3
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;

    .line 85
    .local v1, "searchContentHolder":Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;
    iget-object v2, v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/pma/SearchResultView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/SearchResultView;->setSearchResult(Lcom/android/systemui/statusbar/pma/SearchResultInfo;)V

    .line 86
    iput p2, v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;->mPos:I

    .line 87
    iput v0, v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;->mType:I

    .line 88
    .end local v1    # "searchContentHolder":Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;
    nop

    .line 101
    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 69
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0111

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SingleSearchResultViewHolder;-><init>(Lcom/android/systemui/statusbar/pma/SearchContentAdapter;Landroid/view/View;)V

    return-object v1

    .line 70
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d010f

    .line 71
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/SearchResultView;

    .line 72
    .local v0, "searchResultView":Lcom/android/systemui/statusbar/pma/SearchResultView;
    new-instance v1, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter$SearchResultViewHolder;-><init>(Lcom/android/systemui/statusbar/pma/SearchContentAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/pma/SearchResultInfo;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/pma/SearchResultInfo;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mData:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 60
    iput p1, p0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->mCurrentState:I

    .line 61
    return-void
.end method
