.class public Lcom/android/systemui/statusbar/pma/SearchResultView;
.super Landroid/widget/LinearLayout;
.source "SearchResultView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAdapter:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

.field private mSearchResult:Landroid/support/v7/widget/RecyclerView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/pma/SearchResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/pma/SearchResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method


# virtual methods
.method public onAppItemClick(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 94
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f0a0408

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SearchResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mSearchResult:Landroid/support/v7/widget/RecyclerView;

    .line 79
    const v0, 0x7f0a04e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/SearchResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->tvTitle:Landroid/widget/TextView;

    .line 80
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mAdapter:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mAdapter:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->setOnItemClickListener(Lcom/android/systemui/statusbar/pma/SearchResultAdapter$IOnItemClickListener;)V

    .line 84
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mSearchResult:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mSearchResult:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/android/systemui/statusbar/pma/SearchResultDecoration;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/pma/SearchResultDecoration;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mSearchResult:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mAdapter:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 89
    return-void
.end method

.method public onImageItemClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "newFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "audio/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 105
    return-void
.end method

.method public onVideoItemClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "newFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 112
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "video/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 116
    return-void
.end method

.method public setSearchResult(Lcom/android/systemui/statusbar/pma/SearchResultInfo;)V
    .locals 2
    .param p1, "searchResult"    # Lcom/android/systemui/statusbar/pma/SearchResultInfo;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pma/SearchResultInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mAdapter:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->setData(Lcom/android/systemui/statusbar/pma/SearchResultInfo;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SearchResultView;->mAdapter:Lcom/android/systemui/statusbar/pma/SearchResultAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SearchResultAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method
