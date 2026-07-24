.class public final Lcom/haibin/calendarview/WeekViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "WeekViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;
    }
.end annotation


# instance fields
.field private isUpdateWeekView:Z

.field private isUsingScrollToCalendar:Z

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

.field private mWeekCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/WeekViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/WeekViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/WeekViewPager;

    .line 38
    iget-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    return v0
.end method

.method static synthetic access$102(Lcom/haibin/calendarview/WeekViewPager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/haibin/calendarview/WeekViewPager;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    return p1
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/WeekViewPager;

    .line 38
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/WeekViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/WeekViewPager;

    .line 38
    iget v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/haibin/calendarview/WeekViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/WeekViewPager;

    .line 38
    iget-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    return v0
.end method

.method private init()V
    .locals 8

    .line 67
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 68
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 69
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 70
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v3

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 71
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v4

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 72
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v5

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 73
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearDay()I

    move-result v6

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 74
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v7

    .line 67
    invoke-static/range {v1 .. v7}, Lcom/haibin/calendarview/CalendarUtil;->getWeekCountBetweenBothCalendar(IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    .line 75
    new-instance v0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;-><init>(Lcom/haibin/calendarview/WeekViewPager;Lcom/haibin/calendarview/WeekViewPager$1;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 76
    new-instance v0, Lcom/haibin/calendarview/WeekViewPager$1;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/WeekViewPager$1;-><init>(Lcom/haibin/calendarview/WeekViewPager;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 109
    return-void
.end method

.method private notifyAdapterDataSetChanged()V
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 406
    return-void
.end method


# virtual methods
.method final clearMultiSelect()V
    .locals 3

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 395
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 396
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    const/4 v2, -0x1

    iput v2, v1, Lcom/haibin/calendarview/BaseWeekView;->mCurrentItem:I

    .line 397
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    .line 394
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final clearSelectRange()V
    .locals 2

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 380
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 381
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    .line 379
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final clearSingleSelect()V
    .locals 3

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 387
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 388
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    const/4 v2, -0x1

    iput v2, v1, Lcom/haibin/calendarview/BaseWeekView;->mCurrentItem:I

    .line 389
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    .line 386
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getCurrentWeekCalendars()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekCalendars(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/haibin/calendarview/Calendar;>;"
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->addSchemesFromMap(Ljava/util/List;)V

    .line 120
    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 8

    .line 128
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 129
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 130
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 131
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v3

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 132
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v4

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 133
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v5

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 134
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearDay()I

    move-result v6

    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 135
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v7

    .line 128
    invoke-static/range {v1 .. v7}, Lcom/haibin/calendarview/CalendarUtil;->getWeekCountBetweenBothCalendar(IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    .line 136
    invoke-direct {p0}, Lcom/haibin/calendarview/WeekViewPager;->notifyAdapterDataSetChanged()V

    .line 137
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 416
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isWeekViewScrollable()Z

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
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 424
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 425
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 426
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

    .line 411
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isWeekViewScrollable()Z

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

.method scrollToCalendar(IIIZZ)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "smoothScroll"    # Z
    .param p5, "invokeListener"    # Z

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 183
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 184
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 185
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 186
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 187
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 188
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 189
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 190
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 191
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 192
    invoke-virtual {p0, v0, p4}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 193
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v1, :cond_1

    if-eqz p5, :cond_1

    .line 197
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v1

    .line 200
    .local v1, "i":I
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v2, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 201
    return-void
.end method

.method scrollToCurrent(Z)V
    .locals 6
    .param p1, "smoothScroll"    # Z

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 208
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 209
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 210
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 211
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 212
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    .line 208
    invoke-static {v1, v2, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromCalendarStartWithMinCalendar(Lcom/haibin/calendarview/Calendar;IIII)I

    move-result v1

    sub-int/2addr v1, v0

    .line 213
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v0

    .line 214
    .local v0, "curItem":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 215
    iput-boolean v2, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 217
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/haibin/calendarview/WeekViewPager;->setCurrentItem(IZ)V

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/WeekViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/haibin/calendarview/BaseWeekView;

    .line 219
    .local v3, "view":Lcom/haibin/calendarview/BaseWeekView;
    if-eqz v3, :cond_1

    .line 220
    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/haibin/calendarview/BaseWeekView;->performClickCalendar(Lcom/haibin/calendarview/Calendar;Z)V

    .line 221
    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 222
    invoke-virtual {v3}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    .line 225
    :cond_1
    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 226
    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v5, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {v4, v5, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 230
    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    iget-object v5, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 232
    :cond_3
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-static {v2, v4}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v2

    .line 233
    .local v2, "i":I
    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v4, v2}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 234
    return-void
.end method

.method setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 62
    iput-object p1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 63
    invoke-direct {p0}, Lcom/haibin/calendarview/WeekViewPager;->init()V

    .line 64
    return-void
.end method

.method updateCurrentDate()V
    .locals 2

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 318
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateCurrentDate()V

    .line 316
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateDefaultSelect()V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/BaseWeekView;

    .line 274
    .local v0, "view":Lcom/haibin/calendarview/BaseWeekView;
    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 276
    invoke-virtual {v0}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    .line 278
    :cond_0
    return-void
.end method

.method final updateItemHeight()V
    .locals 2

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 369
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 370
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateItemHeight()V

    .line 371
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->requestLayout()V

    .line 368
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateRange()V
    .locals 3

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 153
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->notifyDataSetChanged()V

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 155
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 159
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 160
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {p0, v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 161
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v2, v0, v1}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v2, v0, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v1

    .line 170
    .local v1, "i":I
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v2, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 171
    return-void
.end method

.method updateScheme()V
    .locals 2

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 307
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 308
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->update()V

    .line 306
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateSelected()V
    .locals 3

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 285
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 286
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 287
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    .line 284
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateSelected(Lcom/haibin/calendarview/Calendar;Z)V
    .locals 4
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "smoothScroll"    # Z

    .line 240
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 241
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 242
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 243
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 244
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    .line 240
    invoke-static {p1, v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromCalendarStartWithMinCalendar(Lcom/haibin/calendarview/Calendar;IIII)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 245
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v2

    .line 246
    .local v2, "curItem":I
    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/haibin/calendarview/WeekViewPager;->isUsingScrollToCalendar:Z

    .line 247
    invoke-virtual {p0, v0, p2}, Lcom/haibin/calendarview/WeekViewPager;->setCurrentItem(IZ)V

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/WeekViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 249
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v1, p1}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 251
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    .line 253
    :cond_1
    return-void
.end method

.method updateShowMode()V
    .locals 2

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 327
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 328
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateShowMode()V

    .line 326
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateSingleSelect()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 264
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 265
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateSingleSelect()V

    .line 263
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method final updateStyle()V
    .locals 2

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 296
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;

    .line 297
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->updateStyle()V

    .line 298
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseWeekView;->invalidate()V

    .line 295
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateWeekStart()V
    .locals 9

    .line 336
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 340
    .local v0, "count":I
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 341
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v2

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 342
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v3

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 343
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v4

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 344
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v5

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 345
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v6

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 346
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearDay()I

    move-result v7

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 347
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v8

    .line 340
    invoke-static/range {v2 .. v8}, Lcom/haibin/calendarview/CalendarUtil;->getWeekCountBetweenBothCalendar(IIIIIII)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    .line 352
    iget v1, p0, Lcom/haibin/calendarview/WeekViewPager;->mWeekCount:I

    if-eq v0, v1, :cond_1

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 354
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 356
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 357
    invoke-virtual {p0, v2}, Lcom/haibin/calendarview/WeekViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/haibin/calendarview/BaseWeekView;

    .line 358
    .local v3, "view":Lcom/haibin/calendarview/BaseWeekView;
    invoke-virtual {v3}, Lcom/haibin/calendarview/BaseWeekView;->updateWeekStart()V

    .line 356
    .end local v3    # "view":Lcom/haibin/calendarview/BaseWeekView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v2    # "i":I
    :cond_2
    iput-boolean v1, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 361
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, v2, v1}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 362
    return-void
.end method

.method updateWeekViewClass()V
    .locals 1

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 144
    invoke-direct {p0}, Lcom/haibin/calendarview/WeekViewPager;->notifyAdapterDataSetChanged()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/haibin/calendarview/WeekViewPager;->isUpdateWeekView:Z

    .line 146
    return-void
.end method
