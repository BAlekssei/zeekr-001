.class public final Lcom/haibin/calendarview/YearViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "YearViewPager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private isUpdateYearView:Z

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

.field private mYearCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/YearViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/YearViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/YearViewPager;

    .line 36
    iget v0, p0, Lcom/haibin/calendarview/YearViewPager;->mYearCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/YearViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/YearViewPager;

    .line 36
    iget-boolean v0, p0, Lcom/haibin/calendarview/YearViewPager;->isUpdateYearView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/YearViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/YearViewPager;

    .line 36
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/YearViewPager;)Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/YearViewPager;

    .line 36
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    return-object v0
.end method

.method private static getHeight(Landroid/content/Context;Landroid/view/View;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .line 184
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 185
    .local v0, "manager":Landroid/view/WindowManager;
    nop

    .line 186
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 187
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 188
    .local v2, "h":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 189
    .local v3, "location":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 190
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    const/4 v4, 0x1

    aget v4, v3, v4

    sub-int v4, v2, v4

    return v4
.end method


# virtual methods
.method notifyDataSetChanged()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/haibin/calendarview/YearViewPager;->mYearCount:I

    .line 108
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 112
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 202
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isYearViewScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 173
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 174
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isYearViewScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method scrollToYear(IZ)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "smoothScroll"    # Z

    .line 121
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0, p2}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(IZ)V

    .line 122
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(IZ)V

    .line 92
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 96
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 97
    invoke-super {p0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-super {p0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 101
    :goto_0
    return-void
.end method

.method final setOnMonthSelectedListener(Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    .line 166
    iput-object p1, p0, Lcom/haibin/calendarview/YearViewPager;->mListener:Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    .line 167
    return-void
.end method

.method setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 52
    iput-object p1, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 53
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/haibin/calendarview/YearViewPager;->mYearCount:I

    .line 54
    new-instance v0, Lcom/haibin/calendarview/YearViewPager$1;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/YearViewPager$1;-><init>(Lcom/haibin/calendarview/YearViewPager;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(I)V

    .line 87
    return-void
.end method

.method final update()V
    .locals 2

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/YearRecyclerView;

    .line 139
    .local v1, "view":Lcom/haibin/calendarview/YearRecyclerView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearRecyclerView;->notifyAdapterDataSetChanged()V

    .line 137
    .end local v1    # "view":Lcom/haibin/calendarview/YearRecyclerView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final updateRange()V
    .locals 1

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/YearViewPager;->isUpdateYearView:Z

    .line 129
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->notifyDataSetChanged()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/haibin/calendarview/YearViewPager;->isUpdateYearView:Z

    .line 131
    return-void
.end method

.method final updateStyle()V
    .locals 2

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/YearRecyclerView;

    .line 161
    .local v1, "view":Lcom/haibin/calendarview/YearRecyclerView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearRecyclerView;->updateStyle()V

    .line 159
    .end local v1    # "view":Lcom/haibin/calendarview/YearRecyclerView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final updateWeekStart()V
    .locals 2

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/YearViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/YearRecyclerView;

    .line 150
    .local v1, "view":Lcom/haibin/calendarview/YearRecyclerView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearRecyclerView;->updateWeekStart()V

    .line 151
    invoke-virtual {v1}, Lcom/haibin/calendarview/YearRecyclerView;->notifyAdapterDataSetChanged()V

    .line 148
    .end local v1    # "view":Lcom/haibin/calendarview/YearRecyclerView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
