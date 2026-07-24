.class Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResultItemViewHolder"
.end annotation


# instance fields
.field public imgIcon:Landroid/widget/ImageView;

.field public mPos:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

.field public tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    .line 84
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    const p1, 0x7f0a020a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->imgIcon:Landroid/widget/ImageView;

    .line 86
    const p1, 0x7f0a04de

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->tvName:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->access$000(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->access$100(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->access$100(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;

    .line 107
    .local v0, "videoSearchResultInfo":Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->access$000(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;->getFilePath()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->mPos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;->onVideoItemClick(Ljava/lang/String;)V

    .end local v0    # "videoSearchResultInfo":Lcom/android/systemui/statusbar/pma/VideoSearchResultInfo;
    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->access$100(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;

    .line 103
    .local v0, "imageSearchResultInfo":Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->access$000(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;->getFilePath()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->mPos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;->onImageItemClick(Ljava/lang/String;)V

    .line 104
    goto :goto_0

    .line 98
    .end local v0    # "imageSearchResultInfo":Lcom/android/systemui/statusbar/pma/ImageSearchResultInfo;
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->access$100(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;

    .line 99
    .local v0, "appSearchResultInfo":Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->this$0:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->access$000(Lcom/android/systemui/statusbar/pma/SearchResultAdapter;)Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;->getLaunchIntent()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$SearchResultItemViewHolder;->mPos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;->onAppItemClick(Landroid/content/Intent;)V

    .line 100
    nop

    .line 110
    .end local v0    # "appSearchResultInfo":Lcom/android/systemui/statusbar/pma/AppSearchResultInfo;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
