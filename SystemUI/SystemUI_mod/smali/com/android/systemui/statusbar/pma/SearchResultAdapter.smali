.class public Lcom/android/systemui/statusbar/pma/SearchResultAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;,
        Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;
    }
.end annotation


# instance fields
.field private mData:Lcom/android/systemui/statusbar/pma/SearchResultInfo;

.field private mIOnItemClickListener:Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->mIOnItemClickListener:Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->mData:Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->mData:Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->mData:Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getSize()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 66
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;

    .line 67
    .local v0, "searchResultItemViewHolder":Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;
    iget-object v1, v0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->mData:Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getDisplayName()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->imgIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->mData:Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getDisplayImage()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iput p2, v0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->mPos:I

    .line 70
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0110

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;-><init>(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setData(Lcom/android/systemui/statusbar/pma/SearchResultInfo;)V
    .locals 0
    .param p1, "searchResultInfo"    # Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->mData:Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    .line 52
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->mIOnItemClickListener:Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;

    .line 56
    return-void
.end method
