.class public Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;
.super Landroid/widget/LinearLayout;
.source "DropDownBoxContentViewForPMA.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mCarNotificationAdapter:Lcom/android/systemui/statusbar/pma/CarNotificationAdapter;

.field private mCarNotificationContent:Landroid/support/v7/widget/RecyclerView;

.field private mCarNotificationContentView:Landroid/view/View;

.field private mGlobalSearchManager:Lcom/android/systemui/statusbar/pma/GlobalSearchManager;

.field private mImageClearText:Landroid/view/View;

.field private mImageSearch:Landroid/view/View;

.field private mNotificationContentView:Landroid/view/View;

.field private mSearchAdapter:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

.field private mSearchContent:Landroid/support/v7/widget/RecyclerView;

.field private mSearchContentView:Landroid/view/View;

.field private mSearchDisposable:Lio/reactivex/disposables/Disposable;

.field private mSearchInputView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 111
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->searchInternal(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$2(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Z

    .line 131
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchAdapter:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->setState(I)V

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchAdapter:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mGlobalSearchManager:Lcom/android/systemui/statusbar/pma/GlobalSearchManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->getSuggestedApps()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->setData(Ljava/util/List;)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->showNotificationView(Z)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->showSearchResultView(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchAdapter:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->showSearchResultView(Z)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->showNotificationView(Z)V

    .line 142
    :goto_0
    return-void
.end method

.method public static synthetic lambda$searchInternal$4(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;ILjava/util/List;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "resultInfoList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchAdapter:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->setState(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchAdapter:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->setData(Ljava/util/List;)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->showNotificationView(Z)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->showSearchResultView(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchAdapter:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;->notifyDataSetChanged()V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchDisposable:Lio/reactivex/disposables/Disposable;

    .line 218
    return-void
.end method

.method public static synthetic lambda$searchInternal$5(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchDisposable:Lio/reactivex/disposables/Disposable;

    .line 221
    const-string v0, "DropDownBoxContentViewForPMA"

    const-string v1, "Search Error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method private searchInternal(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "title"    # Ljava/lang/String;

    .line 198
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 200
    .local v0, "input":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    return-void

    .line 203
    :cond_1
    const-string v1, "DropDownBoxContentViewForPMA"

    const-string v2, "The search input is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mGlobalSearchManager:Lcom/android/systemui/statusbar/pma/GlobalSearchManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;->search(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 209
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$P783UNT6-8aDrddvTCU1oin7mrU;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$P783UNT6-8aDrddvTCU1oin7mrU;-><init>(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;I)V

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$Na4hLqCRqA6xL7x2mZpRrhExaYE;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$Na4hLqCRqA6xL7x2mZpRrhExaYE;-><init>(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;)V

    .line 210
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchDisposable:Lio/reactivex/disposables/Disposable;

    .line 223
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .line 167
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 148
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/GlobalSearchManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mGlobalSearchManager:Lcom/android/systemui/statusbar/pma/GlobalSearchManager;

    .line 96
    const v0, 0x7f0a0403

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f0a0332

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mNotificationContentView:Landroid/view/View;

    .line 98
    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mCarNotificationContentView:Landroid/view/View;

    .line 99
    const v0, 0x7f0a040a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchContentView:Landroid/view/View;

    .line 100
    const v0, 0x7f0a0400

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchContent:Landroid/support/v7/widget/RecyclerView;

    .line 101
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mCarNotificationContent:Landroid/support/v7/widget/RecyclerView;

    .line 102
    const v0, 0x7f0a01d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mImageClearText:Landroid/view/View;

    .line 103
    const v0, 0x7f0a020e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mImageSearch:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mImageClearText:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mImageClearText:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$OQFRC0j0FNjJyxwumj1TRpprzlQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$OQFRC0j0FNjJyxwumj1TRpprzlQ;-><init>(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mImageSearch:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$9LVXC7HmvT1ncEV-AxaFutnBHg8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$9LVXC7HmvT1ncEV-AxaFutnBHg8;-><init>(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/SearchContentAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchAdapter:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    .line 114
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarNotificationAdapter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/CarNotificationAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mCarNotificationAdapter:Lcom/android/systemui/statusbar/pma/CarNotificationAdapter;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/SearchContentDecoration;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/pma/SearchContentDecoration;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchAdapter:Lcom/android/systemui/statusbar/pma/SearchContentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mCarNotificationContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mCarNotificationContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/NotificationDecoration;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/pma/NotificationDecoration;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mCarNotificationContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mCarNotificationAdapter:Lcom/android/systemui/statusbar/pma/CarNotificationAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 124
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "Search apps, pics, videos..."

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 126
    .local v1, "ass":Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 127
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060154

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchInputView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$Fwtx45SnhQNOWdZTZLTlEhhEXbM;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$DropDownBoxContentViewForPMA$Fwtx45SnhQNOWdZTZLTlEhhEXbM;-><init>(Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 143
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 152
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "newText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mImageClearText:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->searchInternal(ILjava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mImageClearText:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_0
    return-void
.end method

.method public showNotificationView(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 176
    return-void
.end method

.method public showSearchResultView(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DropDownBoxContentViewForPMA;->mSearchContentView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-void
.end method
