.class final Lcom/haibin/calendarview/YearViewAdapter;
.super Lcom/haibin/calendarview/BaseRecyclerAdapter;
.source "YearViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/haibin/calendarview/BaseRecyclerAdapter<",
        "Lcom/haibin/calendarview/Month;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mItemHeight:I

.field private mItemWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseRecyclerAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/haibin/calendarview/Month;I)V
    .locals 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "item"    # Lcom/haibin/calendarview/Month;
    .param p3, "position"    # I

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;

    .line 68
    .local v0, "h":Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;
    iget-object v1, v0, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;->mYearView:Lcom/haibin/calendarview/YearView;

    .line 69
    .local v1, "view":Lcom/haibin/calendarview/YearView;
    invoke-virtual {p2}, Lcom/haibin/calendarview/Month;->getYear()I

    move-result v2

    invoke-virtual {p2}, Lcom/haibin/calendarview/Month;->getMonth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/haibin/calendarview/YearView;->init(II)V

    .line 70
    iget v2, p0, Lcom/haibin/calendarview/YearViewAdapter;->mItemWidth:I

    iget v3, p0, Lcom/haibin/calendarview/YearViewAdapter;->mItemHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/haibin/calendarview/YearView;->measureSize(II)V

    .line 71
    return-void
.end method

.method bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p2, Lcom/haibin/calendarview/Month;

    invoke-virtual {p0, p1, p2, p3}, Lcom/haibin/calendarview/YearViewAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/haibin/calendarview/Month;I)V

    return-void
.end method

.method onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .line 48
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewAdapter;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewClassPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/haibin/calendarview/DefaultYearView;

    iget-object v1, p0, Lcom/haibin/calendarview/YearViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/haibin/calendarview/DefaultYearView;-><init>(Landroid/content/Context;)V

    .local v0, "yearView":Lcom/haibin/calendarview/YearView;
    goto :goto_0

    .line 52
    .end local v0    # "yearView":Lcom/haibin/calendarview/YearView;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewAdapter;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 53
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/haibin/calendarview/YearViewAdapter;->mContext:Landroid/content/Context;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/YearView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    move-object v0, v1

    .line 57
    .local v0, "yearView":Lcom/haibin/calendarview/YearView;
    goto :goto_0

    .line 54
    .end local v0    # "yearView":Lcom/haibin/calendarview/YearView;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    new-instance v1, Lcom/haibin/calendarview/DefaultYearView;

    iget-object v2, p0, Lcom/haibin/calendarview/YearViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/haibin/calendarview/DefaultYearView;-><init>(Landroid/content/Context;)V

    .end local v0    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .line 59
    .local v0, "yearView":Lcom/haibin/calendarview/YearView;
    :goto_0
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 61
    .local v1, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/YearView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;

    iget-object v3, p0, Lcom/haibin/calendarview/YearViewAdapter;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-direct {v2, v0, v3}, Lcom/haibin/calendarview/YearViewAdapter$YearViewHolder;-><init>(Landroid/view/View;Lcom/haibin/calendarview/CalendarViewDelegate;)V

    return-object v2
.end method

.method final setYearViewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 41
    iput p1, p0, Lcom/haibin/calendarview/YearViewAdapter;->mItemWidth:I

    .line 42
    iput p2, p0, Lcom/haibin/calendarview/YearViewAdapter;->mItemHeight:I

    .line 43
    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 36
    iput-object p1, p0, Lcom/haibin/calendarview/YearViewAdapter;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 37
    return-void
.end method
