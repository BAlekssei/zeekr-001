.class public Lcom/haibin/calendarview/CalendarLayout;
.super Landroid/widget/LinearLayout;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/CalendarLayout$CalendarScrollView;
    }
.end annotation


# static fields
.field private static final ACTIVE_POINTER:I = 0x1

.field private static final CALENDAR_SHOW_MODE_BOTH_MONTH_WEEK_VIEW:I = 0x0

.field private static final CALENDAR_SHOW_MODE_ONLY_MONTH_VIEW:I = 0x2

.field private static final CALENDAR_SHOW_MODE_ONLY_WEEK_VIEW:I = 0x1

.field private static final GESTURE_MODE_DEFAULT:I = 0x0

.field private static final GESTURE_MODE_DISABLED:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final STATUS_EXPAND:I = 0x0

.field private static final STATUS_SHRINK:I = 0x1


# instance fields
.field private downY:F

.field private isAnimating:Z

.field private isWeekView:Z

.field private mActivePointerId:I

.field private mCalendarShowMode:I

.field mCalendarView:Lcom/haibin/calendarview/CalendarView;

.field mContentView:Landroid/view/ViewGroup;

.field private mContentViewId:I

.field private mContentViewTranslateY:I

.field private mDefaultStatus:I

.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mGestureMode:I

.field private mItemHeight:I

.field private mLastX:F

.field private mLastY:F

.field private mMaximumVelocity:I

.field mMonthView:Lcom/haibin/calendarview/MonthViewPager;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewPagerTranslateY:I

.field mWeekBar:Lcom/haibin/calendarview/WeekBar;

.field mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

.field mYearView:Lcom/haibin/calendarview/YearViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    .line 150
    iput-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    .line 169
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/CalendarLayout;->setOrientation(I)V

    .line 170
    sget-object v2, Lcom/android/systemui/R$styleable;->CalendarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 171
    .local v2, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewId:I

    .line 172
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mDefaultStatus:I

    .line 173
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    .line 174
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    .line 175
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 177
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 178
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 179
    .local v1, "mTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mMaximumVelocity:I

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/CalendarLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarLayout;

    .line 47
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    return v0
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/CalendarLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarLayout;

    .line 47
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    return v0
.end method

.method static synthetic access$202(Lcom/haibin/calendarview/CalendarLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarLayout;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/CalendarLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarLayout;

    .line 47
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/haibin/calendarview/CalendarLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarLayout;
    .param p1, "x1"    # Z

    .line 47
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/CalendarLayout;->hideWeek(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarLayout;

    .line 47
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object v0
.end method

.method static synthetic access$600(Lcom/haibin/calendarview/CalendarLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarLayout;

    .line 47
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    return v0
.end method

.method static synthetic access$602(Lcom/haibin/calendarview/CalendarLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarLayout;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    return p1
.end method

.method static synthetic access$700(Lcom/haibin/calendarview/CalendarLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarLayout;

    .line 47
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->showWeek()V

    return-void
.end method

.method private getCalendarViewHeight()I
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :goto_0
    return v0
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .line 523
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 524
    .local v0, "activePointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 525
    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    .line 527
    :cond_0
    return v0
.end method

.method private hideWeek(Z)V
    .locals 2
    .param p1, "isNotify"    # Z

    .line 830
    if-eqz p1, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->onShowMonthView()V

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    .line 835
    return-void
.end method

.method private initCalendarPosition(Lcom/haibin/calendarview/Calendar;)V
    .locals 2
    .param p1, "cur"    # Lcom/haibin/calendarview/Calendar;

    .line 202
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 203
    .local v0, "diff":I
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 204
    .local v1, "size":I
    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 205
    return-void
.end method

.method private onShowMonthView()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 867
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    .line 872
    :cond_1
    return-void
.end method

.method private onShowWeekView()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 854
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    if-nez v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    .line 859
    :cond_1
    return-void
.end method

.method private showWeek()V
    .locals 2

    .line 841
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->onShowWeekView()V

    .line 842
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 844
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    .line 847
    return-void
.end method

.method private translationViewPager()V
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 607
    .local v0, "percent":F
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/MonthViewPager;->setTranslationY(F)V

    .line 608
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 411
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 414
    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 415
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    .line 418
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 420
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 424
    :cond_2
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-boolean v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 432
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 433
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 434
    .local v2, "y":F
    if-ne v0, v1, :cond_5

    .line 435
    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    sub-float v1, v2, v1

    .line 441
    .local v1, "dy":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    iget v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    .line 442
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isScrollTop()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 443
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/CalendarLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 444
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 448
    .end local v1    # "dy":F
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 430
    .end local v0    # "action":I
    .end local v2    # "y":F
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 426
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 421
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public expand()Z
    .locals 1

    .line 672
    const/16 v0, 0xf0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->expand(I)Z

    move-result v0

    return v0
.end method

.method public expand(I)Z
    .locals 6
    .param p1, "duration"    # I

    .line 683
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 689
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->onShowMonthView()V

    .line 690
    iput-boolean v1, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    .line 691
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 694
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    aput v5, v4, v1

    const/4 v1, 0x0

    aput v1, v4, v2

    .line 693
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 695
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 696
    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$3;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$3;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 705
    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$4;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$4;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 721
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 722
    return v2

    .line 686
    .end local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_0
    return v1
.end method

.method public hideCalendarView()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarView;->setVisibility(I)V

    .line 276
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->expand(I)Z

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    .line 280
    return-void
.end method

.method final hideContentView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 904
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 906
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v2}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    .line 907
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 908
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$9;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$9;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    .line 909
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 917
    return-void
.end method

.method final initStatus()V
    .locals 2

    .line 773
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDefaultStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 776
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    .line 779
    return-void

    .line 781
    :cond_1
    new-instance v0, Lcom/haibin/calendarview/CalendarLayout$7;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarLayout$7;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-nez v0, :cond_3

    .line 815
    return-void

    .line 817
    :cond_3
    new-instance v0, Lcom/haibin/calendarview/CalendarLayout$8;

    invoke-direct {v0, p0}, Lcom/haibin/calendarview/CalendarLayout$8;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->post(Ljava/lang/Runnable;)Z

    .line 824
    :goto_0
    return-void
.end method

.method public final isExpand()Z
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isScrollTop()Z
    .locals 6

    .line 880
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/haibin/calendarview/CalendarLayout$CalendarScrollView;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/haibin/calendarview/CalendarLayout$CalendarScrollView;

    invoke-interface {v0}, Lcom/haibin/calendarview/CalendarLayout$CalendarScrollView;->isScrollToTop()Z

    move-result v0

    return v0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_5

    .line 886
    const/4 v0, 0x0

    .line 887
    .local v0, "result":Z
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/AbsListView;

    .line 888
    .local v3, "listView":Landroid/widget/AbsListView;
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_4

    .line 889
    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 890
    .local v4, "topChildView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    move v0, v1

    .line 892
    .end local v4    # "topChildView":Landroid/view/View;
    :cond_4
    return v0

    .line 894
    .end local v0    # "result":Z
    .end local v3    # "listView":Landroid/widget/AbsListView;
    :cond_5
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 591
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 592
    const v0, 0x7f0a052f

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/MonthViewPager;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    .line 593
    const v0, 0x7f0a0530

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/WeekViewPager;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    .line 594
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/CalendarView;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    .line 597
    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewId:I

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 598
    const v0, 0x7f0a0411

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/YearViewPager;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    .line 599
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 453
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 454
    return v1

    .line 456
    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 457
    return v3

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    .line 460
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_f

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 462
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 466
    :cond_2
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    if-ne v0, v1, :cond_3

    goto/16 :goto_2

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mYearView:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-boolean v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 474
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 475
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 476
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 477
    .local v5, "x":F
    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_5

    goto/16 :goto_0

    .line 485
    :cond_5
    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    sub-float v2, v4, v2

    .line 486
    .local v2, "dy":F
    iget v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastX:F

    sub-float v6, v5, v6

    .line 490
    .local v6, "dx":F
    const/4 v7, 0x0

    cmpg-float v8, v2, v7

    if-gez v8, :cond_6

    iget-object v8, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v8

    iget v9, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v9, v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_6

    .line 491
    return v3

    .line 498
    :cond_6
    cmpl-float v8, v2, v7

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v8

    iget v9, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v9, v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 499
    invoke-virtual {v8}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v8

    iget-object v9, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v9}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_7

    .line 500
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isScrollTop()Z

    move-result v8

    if-nez v8, :cond_7

    .line 501
    return v3

    .line 505
    :cond_7
    cmpl-float v8, v2, v7

    if-lez v8, :cond_8

    iget-object v8, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x42c40000    # 98.0f

    invoke-static {v8, v9}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_8

    .line 506
    return v3

    .line 509
    :cond_8
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v3, v3, v8

    if-lez v3, :cond_c

    .line 510
    cmpl-float v3, v2, v7

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    cmpg-float v3, v3, v7

    if-lez v3, :cond_a

    :cond_9
    cmpg-float v3, v2, v7

    if-gez v3, :cond_c

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 511
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    iget v7, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_c

    .line 512
    :cond_a
    iput v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 513
    return v1

    .line 479
    .end local v2    # "dy":F
    .end local v6    # "dx":F
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 480
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    .line 481
    iput v4, p0, Lcom/haibin/calendarview/CalendarLayout;->downY:F

    iput v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 482
    iput v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastX:F

    .line 483
    nop

    .line 518
    .end local v1    # "index":I
    :cond_c
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 472
    .end local v0    # "action":I
    .end local v4    # "y":F
    .end local v5    # "x":F
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 468
    :cond_e
    :goto_2
    return v3

    .line 463
    :cond_f
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 533
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    .line 539
    .local v0, "year":I
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    .line 540
    .local v1, "month":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 541
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 543
    .local v2, "weekBarHeight":I
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 544
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 545
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 546
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    .line 543
    invoke-static {v0, v1, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v3

    add-int/2addr v3, v2

    .line 549
    .local v3, "monthHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 551
    .local v4, "height":I
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->isFullScreenCalendar()Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_1

    .line 552
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 553
    sub-int v5, v4, v2

    iget-object v7, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v7}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 555
    .local v5, "heightSpec":I
    iget-object v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6, p1, v5}, Landroid/view/ViewGroup;->measure(II)V

    .line 556
    iget-object v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getRight()I

    move-result v9

    iget-object v10, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 557
    return-void

    .line 560
    .end local v5    # "heightSpec":I
    :cond_1
    if-lt v3, v4, :cond_2

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v5}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v5

    if-lez v5, :cond_2

    .line 561
    move v4, v3

    .line 562
    add-int v5, v3, v2

    iget-object v7, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 564
    invoke-virtual {v7}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v7

    add-int/2addr v5, v7

    .line 562
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 565
    :cond_2
    if-ge v3, v4, :cond_3

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v5}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v5

    if-lez v5, :cond_3

    .line 566
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 570
    :cond_3
    :goto_0
    iget v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    const/16 v7, 0x8

    const/4 v8, 0x2

    if-eq v5, v8, :cond_7

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    .line 571
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_4

    goto :goto_1

    .line 573
    :cond_4
    iget v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    if-ne v5, v8, :cond_6

    iget-boolean v5, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    if-nez v5, :cond_6

    .line 574
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 575
    sub-int v5, v4, v3

    goto :goto_3

    .line 577
    :cond_5
    sub-int v5, v4, v2

    iget v7, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    sub-int/2addr v5, v7

    goto :goto_3

    .line 580
    :cond_6
    sub-int v5, v4, v2

    iget v7, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    sub-int/2addr v5, v7

    goto :goto_3

    .line 572
    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_8

    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarView;->getHeight()I

    move-result v5

    :goto_2
    sub-int v5, v4, v5

    .line 580
    .local v5, "h":I
    :goto_3
    nop

    .line 582
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 583
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 585
    .local v6, "heightSpec":I
    iget-object v7, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, p1, v6}, Landroid/view/ViewGroup;->measure(II)V

    .line 586
    iget-object v7, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    iget-object v9, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getRight()I

    move-result v10

    iget-object v11, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getBottom()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 587
    return-void

    .line 534
    .end local v0    # "year":I
    .end local v1    # "month":I
    .end local v2    # "weekBarHeight":I
    .end local v3    # "monthHeight":I
    .end local v4    # "height":I
    .end local v5    # "h":I
    .end local v6    # "heightSpec":I
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 535
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 639
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 640
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "super"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 641
    .local v1, "superData":Landroid/os/Parcelable;
    const-string v2, "isExpand"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 642
    .local v2, "isExpand":Z
    if-eqz v2, :cond_0

    .line 643
    new-instance v3, Lcom/haibin/calendarview/CalendarLayout$1;

    invoke-direct {v3, p0}, Lcom/haibin/calendarview/CalendarLayout$1;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/CalendarLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 650
    :cond_0
    new-instance v3, Lcom/haibin/calendarview/CalendarLayout$2;

    invoke-direct {v3, p0}, Lcom/haibin/calendarview/CalendarLayout$2;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/CalendarLayout;->post(Ljava/lang/Runnable;)Z

    .line 658
    :goto_0
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 659
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 630
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 631
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 632
    .local v1, "parcelable":Landroid/os/Parcelable;
    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 633
    const-string v2, "isExpand"

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 634
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 294
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_1

    .line 300
    return v2

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-boolean v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    if-eqz v0, :cond_2

    .line 303
    return v2

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    goto/16 :goto_3

    .line 310
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 311
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 312
    .local v3, "y":F
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 313
    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 320
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 321
    .local v1, "indexx":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    .line 322
    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    if-nez v2, :cond_f

    .line 324
    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    goto/16 :goto_2

    .line 376
    .end local v1    # "indexx":I
    :pswitch_2
    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v1}, Lcom/haibin/calendarview/CalendarLayout;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 377
    .local v1, "pointerIndex":I
    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    if-ne v2, v4, :cond_4

    .line 378
    goto/16 :goto_2

    .line 379
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 380
    goto/16 :goto_2

    .line 330
    .end local v1    # "pointerIndex":I
    :pswitch_3
    iget v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    invoke-direct {p0, p1, v6}, Lcom/haibin/calendarview/CalendarLayout;->getPointerIndex(Landroid/view/MotionEvent;I)I

    .line 331
    iget v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    if-ne v6, v4, :cond_5

    .line 333
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 334
    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    .line 336
    :cond_5
    iget v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    sub-float v4, v3, v4

    .line 339
    .local v4, "dy":F
    cmpg-float v6, v4, v5

    if-gez v6, :cond_7

    iget-object v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    iget v7, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_7

    .line 340
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 341
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 342
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 343
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v5, v2}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 344
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    .line 345
    iget-boolean v5, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-eqz v5, :cond_6

    .line 346
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    invoke-interface {v5, v2}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    .line 348
    :cond_6
    iput-boolean v1, p0, Lcom/haibin/calendarview/CalendarLayout;->isWeekView:Z

    .line 349
    return v1

    .line 351
    :cond_7
    invoke-direct {p0, v2}, Lcom/haibin/calendarview/CalendarLayout;->hideWeek(Z)V

    .line 354
    cmpl-float v1, v4, v5

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v4

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_8

    .line 355
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 356
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->translationViewPager()V

    .line 357
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 358
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 362
    :cond_8
    cmpg-float v1, v4, v5

    if-gez v1, :cond_9

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v4

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    .line 363
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 364
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->translationViewPager()V

    .line 365
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 366
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 369
    :cond_9
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 370
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->translationViewPager()V

    .line 371
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 372
    goto :goto_2

    .line 383
    .end local v4    # "dy":F
    :pswitch_4
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 384
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    iget v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 385
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 386
    .local v2, "mYVelocity":F
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 387
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    iget v6, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-nez v4, :cond_a

    goto :goto_1

    .line 391
    :cond_a
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x44480000    # 800.0f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_c

    .line 392
    cmpg-float v4, v2, v5

    if-gez v4, :cond_b

    .line 393
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->shrink()Z

    goto :goto_0

    .line 395
    :cond_b
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    .line 397
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 399
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v6, p0, Lcom/haibin/calendarview/CalendarLayout;->downY:F

    sub-float/2addr v4, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    .line 400
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    goto :goto_2

    .line 402
    :cond_d
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->shrink()Z

    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v2    # "mYVelocity":F
    goto :goto_2

    .line 388
    .restart local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v2    # "mYVelocity":F
    :cond_e
    :goto_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    .line 389
    goto :goto_2

    .line 315
    .end local v1    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v2    # "mYVelocity":F
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 316
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mActivePointerId:I

    .line 317
    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->downY:F

    iput v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mLastY:F

    .line 318
    return v1

    .line 406
    .end local v2    # "index":I
    :cond_f
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 307
    .end local v0    # "action":I
    .end local v3    # "y":F
    :cond_10
    :goto_3
    return v2

    .line 297
    :cond_11
    :goto_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setModeBothMonthWeekView()V
    .locals 1

    .line 612
    const/4 v0, 0x0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    .line 613
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    .line 614
    return-void
.end method

.method public setModeOnlyMonthView()V
    .locals 1

    .line 622
    const/4 v0, 0x2

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    .line 623
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    .line 624
    return-void
.end method

.method public setModeOnlyWeekView()V
    .locals 1

    .line 617
    const/4 v0, 0x1

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarShowMode:I

    .line 618
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    .line 619
    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 188
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    .line 190
    iget-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 190
    :goto_0
    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->initCalendarPosition(Lcom/haibin/calendarview/Calendar;)V

    .line 193
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->updateContentViewTranslateY()V

    .line 194
    return-void
.end method

.method public showCalendarView()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mCalendarView:Lcom/haibin/calendarview/CalendarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarView;->setVisibility(I)V

    .line 288
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    .line 289
    return-void
.end method

.method final showContentView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 925
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mMonthView:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v2}, Lcom/haibin/calendarview/MonthViewPager;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 927
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 929
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    .line 930
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 931
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$10;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$10;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    .line 932
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 938
    return-void
.end method

.method public shrink()Z
    .locals 1

    .line 726
    const/16 v0, 0xf0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarLayout;->shrink(I)Z

    move-result v0

    return v0
.end method

.method public shrink(I)Z
    .locals 5
    .param p1, "duration"    # I

    .line 736
    iget v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mGestureMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    .line 739
    :cond_0
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarLayout;->isAnimating:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    new-array v1, v1, [F

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    .line 743
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    aput v4, v1, v2

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 742
    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 744
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 745
    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$5;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$5;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 754
    new-instance v1, Lcom/haibin/calendarview/CalendarLayout$6;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarLayout$6;-><init>(Lcom/haibin/calendarview/CalendarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 764
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 765
    return v4

    .line 740
    .end local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_0
    return v2
.end method

.method final updateCalendarItemHeight()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    .line 252
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 253
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 255
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 256
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 257
    const/4 v1, 0x5

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    iget v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 260
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    .line 259
    invoke-static {v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIII)I

    move-result v1

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    .line 262
    :goto_0
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarLayout;->translationViewPager()V

    .line 263
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 266
    :cond_2
    return-void
.end method

.method updateContentViewTranslateY()V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 232
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const/4 v1, 0x5

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    .line 236
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    iget v3, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarLayout;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    .line 235
    invoke-static {v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIII)I

    move-result v1

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 242
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mContentViewTranslateY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 245
    :cond_2
    return-void
.end method

.method final updateSelectPosition(I)V
    .locals 3
    .param p1, "selectPosition"    # I

    .line 213
    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x7

    .line 214
    .local v0, "line":I
    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    .line 215
    return-void
.end method

.method final updateSelectWeek(I)V
    .locals 2
    .param p1, "week"    # I

    .line 223
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/haibin/calendarview/CalendarLayout;->mItemHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/CalendarLayout;->mViewPagerTranslateY:I

    .line 224
    return-void
.end method
