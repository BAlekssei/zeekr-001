.class public final Lcom/haibin/calendarview/MonthViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "MonthViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;
    }
.end annotation


# instance fields
.field private isUpdateMonthView:Z

.field private isUsingScrollToCalendar:Z

.field private mCurrentViewHeight:I

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mMonthCount:I

.field private mNextViewHeight:I

.field mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

.field private mPreViewHeight:I

.field mWeekBar:Lcom/haibin/calendarview/WeekBar;

.field mWeekPager:Lcom/haibin/calendarview/WeekViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/MonthViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/MonthViewPager;

    .line 37
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/MonthViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/MonthViewPager;

    .line 37
    iget v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/MonthViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/MonthViewPager;

    .line 37
    iget v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/haibin/calendarview/MonthViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/MonthViewPager;

    .line 37
    iget v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/haibin/calendarview/MonthViewPager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/haibin/calendarview/MonthViewPager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewHeight(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/haibin/calendarview/MonthViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/MonthViewPager;

    .line 37
    iget-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    return v0
.end method

.method static synthetic access$602(Lcom/haibin/calendarview/MonthViewPager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/haibin/calendarview/MonthViewPager;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    return p1
.end method

.method static synthetic access$700(Lcom/haibin/calendarview/MonthViewPager;)I
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/MonthViewPager;

    .line 37
    iget v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mMonthCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/haibin/calendarview/MonthViewPager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/MonthViewPager;

    .line 37
    iget-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    return v0
.end method

.method private init()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xc

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 88
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 89
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mMonthCount:I

    .line 90
    new-instance v0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;-><init>(Lcom/haibin/calendarview/MonthViewPager;Lcom/haibin/calendarview/MonthViewPager$1;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 91
    new-instance v0, Lcom/haibin/calendarview/MonthViewPager$1;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/MonthViewPager$1;-><init>(Lcom/haibin/calendarview/MonthViewPager;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 188
    return-void
.end method

.method private notifyAdapterDataSetChanged()V
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 568
    return-void

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 571
    return-void
.end method

.method private updateMonthViewHeight(II)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 197
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    .line 199
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 200
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 201
    return-void

    .line 204
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 207
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 208
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 209
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v3

    .line 207
    invoke-static {p1, p2, v1, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->updateContentViewTranslateY()V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 215
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 216
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    .line 214
    invoke-static {p1, p2, v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    .line 217
    const/16 v0, 0xc

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 218
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 219
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 220
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 218
    invoke-static {v1, v0, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    .line 221
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 222
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 223
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v3

    .line 221
    invoke-static {p1, v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    goto :goto_0

    .line 225
    :cond_3
    add-int/lit8 v2, p2, -0x1

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 226
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 227
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    .line 225
    invoke-static {p1, v2, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    .line 228
    if-ne p2, v0, :cond_4

    .line 229
    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 230
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 231
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 229
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    goto :goto_0

    .line 233
    :cond_4
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 234
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 235
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v3

    .line 233
    invoke-static {p1, v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    .line 238
    :goto_0
    return-void
.end method


# virtual methods
.method final clearMultiSelect()V
    .locals 3

    .line 559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 560
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 561
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    const/4 v2, -0x1

    iput v2, v1, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 562
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 559
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final clearSelectRange()V
    .locals 2

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 539
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 540
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 538
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final clearSingleSelect()V
    .locals 3

    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 549
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 550
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    const/4 v2, -0x1

    iput v2, v1, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 551
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 548
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getCurrentMonthCalendars()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/BaseMonthView;

    .line 383
    .local v0, "view":Lcom/haibin/calendarview/BaseMonthView;
    if-nez v0, :cond_0

    .line 384
    const/4 v1, 0x0

    return-object v1

    .line 386
    :cond_0
    iget-object v1, v0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    return-object v1
.end method

.method notifyDataSetChanged()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xc

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 245
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 246
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mMonthCount:I

    .line 247
    invoke-direct {p0}, Lcom/haibin/calendarview/MonthViewPager;->notifyAdapterDataSetChanged()V

    .line 248
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 581
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isMonthViewScrollable()Z

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->isMonthViewScrollable()Z

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
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "smoothScroll"    # Z
    .param p5, "invokeListener"    # Z

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 308
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 309
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 310
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 311
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 312
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 313
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 314
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 315
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 316
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 317
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    .line 318
    .local v1, "y":I
    const/16 v2, 0xc

    mul-int/2addr v2, v1

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 319
    .local v2, "position":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v3

    .line 320
    .local v3, "curItem":I
    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    .line 321
    iput-boolean v4, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 323
    :cond_0
    invoke-virtual {p0, v2, p4}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/haibin/calendarview/BaseMonthView;

    .line 326
    .local v5, "view":Lcom/haibin/calendarview/BaseMonthView;
    if-eqz v5, :cond_1

    .line 327
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v6, v6, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v5, v6}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 328
    invoke-virtual {v5}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 329
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v6, :cond_1

    .line 330
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v7, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v7, v7, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v5, v7}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 333
    :cond_1
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v6, :cond_2

    .line 334
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v6

    invoke-static {v0, v6}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v6

    .line 335
    .local v6, "week":I
    iget-object v7, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v7, v6}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 338
    .end local v6    # "week":I
    :cond_2
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v6, v6, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v6, :cond_3

    if-eqz p5, :cond_3

    .line 339
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v6, v6, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v6, v0, v4}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 341
    :cond_3
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v6, v6, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v6, :cond_4

    .line 342
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v6, v6, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v6, v0, v4}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 345
    :cond_4
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    .line 346
    return-void
.end method

.method scrollToCurrent(Z)V
    .locals 6
    .param p1, "smoothScroll"    # Z

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 353
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0xc

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 354
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v0

    sub-int/2addr v1, v0

    .line 355
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    .line 356
    .local v0, "curItem":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 357
    iput-boolean v2, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 360
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/haibin/calendarview/BaseMonthView;

    .line 363
    .local v3, "view":Lcom/haibin/calendarview/BaseMonthView;
    if-eqz v3, :cond_1

    .line 364
    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 365
    invoke-virtual {v3}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 366
    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v4, :cond_1

    .line 367
    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 371
    :cond_1
    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 372
    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {v4, v5, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 374
    :cond_2
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .line 586
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 587
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 591
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 592
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 594
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 596
    :goto_0
    return-void
.end method

.method setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 72
    iput-object p1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 74
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 75
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewHeight(II)V

    .line 77
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 78
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-direct {p0}, Lcom/haibin/calendarview/MonthViewPager;->init()V

    .line 81
    return-void
.end method

.method updateCurrentDate()V
    .locals 2

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 442
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 443
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateCurrentDate()V

    .line 441
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateDefaultSelect()V
    .locals 3

    .line 393
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/BaseMonthView;

    .line 394
    .local v0, "view":Lcom/haibin/calendarview/BaseMonthView;
    if-eqz v0, :cond_1

    .line 395
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result v1

    .line 396
    .local v1, "index":I
    iput v1, v0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 397
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v2, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 400
    :cond_0
    invoke-virtual {v0}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 402
    .end local v1    # "index":I
    :cond_1
    return-void
.end method

.method final updateItemHeight()V
    .locals 8

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 498
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 499
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateItemHeight()V

    .line 500
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->requestLayout()V

    .line 497
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    .line 504
    .local v0, "year":I
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    .line 505
    .local v1, "month":I
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 506
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 507
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 505
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    .line 508
    const/16 v2, 0xc

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 509
    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 510
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 511
    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v6

    .line 509
    invoke-static {v3, v2, v4, v5, v6}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    .line 512
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 513
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 514
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    .line 512
    invoke-static {v0, v2, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    goto :goto_1

    .line 516
    :cond_1
    add-int/lit8 v4, v1, -0x1

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 517
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v6

    iget-object v7, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 518
    invoke-virtual {v7}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v7

    .line 516
    invoke-static {v0, v4, v5, v6, v7}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v4

    iput v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    .line 519
    if-ne v1, v2, :cond_2

    .line 520
    add-int/lit8 v2, v0, 0x1

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 521
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 522
    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v6

    .line 520
    invoke-static {v2, v3, v4, v5, v6}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    goto :goto_1

    .line 524
    :cond_2
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 525
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 526
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    .line 524
    invoke-static {v0, v2, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    .line 529
    :goto_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 530
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 531
    invoke-virtual {p0, v2}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    return-void
.end method

.method updateMonthViewClass()V
    .locals 1

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    .line 255
    invoke-direct {p0}, Lcom/haibin/calendarview/MonthViewPager;->notifyAdapterDataSetChanged()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    .line 257
    return-void
.end method

.method final updateRange()V
    .locals 7

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    .line 264
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->notifyDataSetChanged()V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUpdateMonthView:Z

    .line 266
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    iput-boolean v0, p0, Lcom/haibin/calendarview/MonthViewPager;->isUsingScrollToCalendar:Z

    .line 270
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 271
    .local v1, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v3

    sub-int/2addr v2, v3

    .line 272
    .local v2, "y":I
    const/16 v3, 0xc

    mul-int/2addr v3, v2

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 273
    .local v3, "position":I
    invoke-virtual {p0, v3, v0}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 274
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/haibin/calendarview/BaseMonthView;

    .line 275
    .local v4, "view":Lcom/haibin/calendarview/BaseMonthView;
    if-eqz v4, :cond_1

    .line 276
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 277
    invoke-virtual {v4}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 278
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v5, :cond_1

    .line 279
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v6, v6, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v4, v6}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 282
    :cond_1
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v5, :cond_2

    .line 283
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    invoke-static {v1, v5}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v5

    .line 284
    .local v5, "week":I
    iget-object v6, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v6, v5}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 288
    .end local v5    # "week":I
    :cond_2
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v5, :cond_3

    .line 289
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v5, v1, v0}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 292
    :cond_3
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v5, :cond_4

    .line 293
    iget-object v5, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v5, v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 295
    :cond_4
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    .line 296
    return-void
.end method

.method updateScheme()V
    .locals 2

    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 432
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 433
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->update()V

    .line 431
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateSelected()V
    .locals 3

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 410
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 411
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 412
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 409
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateShowMode()V
    .locals 2

    .line 452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 453
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 454
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateShowMode()V

    .line 455
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->requestLayout()V

    .line 452
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 458
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    .line 459
    iget v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mNextViewHeight:I

    .line 460
    iget v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mPreViewHeight:I

    goto :goto_1

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewHeight(II)V

    .line 464
    :goto_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 465
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 466
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarLayout;->updateContentViewTranslateY()V

    .line 470
    :cond_2
    return-void
.end method

.method final updateStyle()V
    .locals 2

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 421
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 422
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateStyle()V

    .line 423
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 420
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updateWeekStart()V
    .locals 3

    .line 476
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 477
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 478
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->updateWeekStart()V

    .line 479
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->requestLayout()V

    .line 476
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewHeight(II)V

    .line 483
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 484
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mCurrentViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 485
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v1

    .line 488
    .local v1, "i":I
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v2, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 490
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    .line 491
    return-void
.end method
