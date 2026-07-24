.class public final Lcom/haibin/calendarview/YearRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "YearRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/YearRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/haibin/calendarview/YearViewAdapter;

    invoke-direct {v0, p1}, Lcom/haibin/calendarview/YearViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    .line 40
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    new-instance v1, Lcom/haibin/calendarview/YearRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/YearRecyclerView$1;-><init>(Lcom/haibin/calendarview/YearRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/YearViewAdapter;->setOnItemClickListener(Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/YearRecyclerView;

    .line 28
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/YearRecyclerView;

    .line 28
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/YearRecyclerView;

    .line 28
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    return-object v0
.end method


# virtual methods
.method final init(I)V
    .locals 6
    .param p1, "year"    # I

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 81
    .local v0, "date":Ljava/util/Calendar;
    const/4 v1, 0x1

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xc

    if-gt v2, v3, :cond_0

    .line 82
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, p1, v3, v1}, Ljava/util/Calendar;->set(III)V

    .line 83
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v3

    .line 84
    .local v3, "mDaysCount":I
    new-instance v4, Lcom/haibin/calendarview/Month;

    invoke-direct {v4}, Lcom/haibin/calendarview/Month;-><init>()V

    .line 85
    .local v4, "month":Lcom/haibin/calendarview/Month;
    iget-object v5, p0, Lcom/haibin/calendarview/YearRecyclerView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    invoke-static {p1, v2, v5}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/Month;->setDiff(I)V

    .line 86
    invoke-virtual {v4, v3}, Lcom/haibin/calendarview/Month;->setCount(I)V

    .line 87
    invoke-virtual {v4, v2}, Lcom/haibin/calendarview/Month;->setMonth(I)V

    .line 88
    invoke-virtual {v4, p1}, Lcom/haibin/calendarview/Month;->setYear(I)V

    .line 89
    iget-object v5, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    invoke-virtual {v5, v4}, Lcom/haibin/calendarview/YearViewAdapter;->addItem(Ljava/lang/Object;)V

    .line 81
    .end local v3    # "mDaysCount":I
    .end local v4    # "month":Lcom/haibin/calendarview/Month;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method notifyAdapterDataSetChanged()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 128
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 132
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 133
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 134
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 135
    .local v1, "width":I
    iget-object v2, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    div-int/lit8 v3, v1, 0x3

    div-int/lit8 v4, v0, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/haibin/calendarview/YearViewAdapter;->setYearViewSize(II)V

    .line 136
    return-void
.end method

.method final setOnMonthSelectedListener(Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    .line 119
    iput-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView;->mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    .line 120
    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 70
    iput-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 71
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/YearViewAdapter;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 72
    return-void
.end method

.method final updateStyle()V
    .locals 2

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearRecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/YearView;

    .line 108
    .local v1, "view":Lcom/haibin/calendarview/YearView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearView;->updateStyle()V

    .line 109
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearView;->invalidate()V

    .line 106
    .end local v1    # "view":Lcom/haibin/calendarview/YearView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final updateWeekStart()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView;->mAdapter:Lcom/haibin/calendarview/YearViewAdapter;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Month;

    .line 98
    .local v1, "month":Lcom/haibin/calendarview/Month;
    invoke-virtual {v1}, Lcom/haibin/calendarview/Month;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lcom/haibin/calendarview/Month;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/YearRecyclerView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Month;->setDiff(I)V

    .line 99
    .end local v1    # "month":Lcom/haibin/calendarview/Month;
    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method
