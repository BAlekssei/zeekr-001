.class public Lcom/haibin/calendarview/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/CalendarView$OnClickCalendarPaddingListener;,
        Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;,
        Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;,
        Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;,
        Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;,
        Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;,
        Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;,
        Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;,
        Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;,
        Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;,
        Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;,
        Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field private mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

.field mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

.field private mWeekBar:Lcom/haibin/calendarview/WeekBar;

.field private mWeekLine:Landroid/view/View;

.field private mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

.field private mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

.field private monthDateClickable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/CalendarView;->monthDateClickable:Z

    .line 97
    new-instance v0, Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-direct {v0, p1, p2}, Lcom/haibin/calendarview/CalendarViewDelegate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 98
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/CalendarView;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarView;

    .line 48
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarView;

    .line 48
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/haibin/calendarview/CalendarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarView;

    .line 48
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarView;->monthDateClickable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarView;

    .line 48
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarView;

    .line 48
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/haibin/calendarview/CalendarView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarView;
    .param p1, "x1"    # I

    .line 48
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/CalendarView;->closeSelectLayout(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/YearViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/haibin/calendarview/CalendarView;

    .line 48
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    return-object v0
.end method

.method private closeSelectLayout(I)V
    .locals 3
    .param p1, "position"    # I

    .line 420
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/YearViewPager;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekBar;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 424
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 425
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {v0, v2, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0, p1, v1}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 430
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 432
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x118

    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/haibin/calendarview/CalendarView$6;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarView$6;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 441
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 442
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 443
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 445
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/haibin/calendarview/CalendarView$7;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarView$7;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    .line 446
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 467
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0d0054

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    const v0, 0x7f0a0171

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 109
    .local v0, "frameContent":Landroid/widget/FrameLayout;
    const v2, 0x7f0a0530

    invoke-virtual {p0, v2}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/WeekViewPager;

    iput-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    .line 110
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/WeekViewPager;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 113
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 114
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/WeekBar;

    iput-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 120
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/WeekBar;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 121
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    .line 123
    const v1, 0x7f0a0295

    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekLineBackground()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    .local v1, "lineParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekLineMargin()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 127
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 128
    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekLineMargin()I

    move-result v5

    .line 126
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    const v3, 0x7f0a052f

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/haibin/calendarview/MonthViewPager;

    iput-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    .line 133
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iput-object v4, v3, Lcom/haibin/calendarview/MonthViewPager;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    .line 134
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iput-object v4, v3, Lcom/haibin/calendarview/MonthViewPager;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    .line 135
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/haibin/calendarview/MonthViewPager;->setOffscreenPageLimit(I)V

    .line 136
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v3}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p1, v5}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 138
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v4, v3}, Lcom/haibin/calendarview/WeekViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const v4, 0x7f0a0411

    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/haibin/calendarview/YearViewPager;

    iput-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    .line 142
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewPaddingRight()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v2}, Lcom/haibin/calendarview/YearViewPager;->setPadding(IIII)V

    .line 143
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewBackground()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/YearViewPager;->setBackgroundColor(I)V

    .line 144
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    new-instance v5, Lcom/haibin/calendarview/CalendarView$1;

    invoke-direct {v5, p0}, Lcom/haibin/calendarview/CalendarView$1;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/YearViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 166
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v5, Lcom/haibin/calendarview/CalendarView$2;

    invoke-direct {v5, p0}, Lcom/haibin/calendarview/CalendarView$2;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    iput-object v5, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    .line 236
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v5

    iput-object v5, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 240
    :cond_0
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v5

    iput-object v5, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 243
    :cond_1
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v5, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v5}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v5, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 246
    :goto_1
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v5, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 248
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v6, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 250
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/MonthViewPager;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 251
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget v5, v5, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthViewItem:I

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 252
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    new-instance v5, Lcom/haibin/calendarview/CalendarView$3;

    invoke-direct {v5, p0}, Lcom/haibin/calendarview/CalendarView$3;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/YearViewPager;->setOnMonthSelectedListener(Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;)V

    .line 260
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/YearViewPager;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 261
    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v5, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 262
    return-void
.end method

.method private setShowMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1653
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1656
    return-void

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1658
    return-void

    .line 1659
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setMonthViewShowMode(I)V

    .line 1660
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateShowMode()V

    .line 1661
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateShowMode()V

    .line 1662
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->notifyDataSetChanged()V

    .line 1663
    return-void
.end method

.method private setWeekStart(I)V
    .locals 3
    .param p1, "weekStart"    # I

    .line 1600
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1603
    return-void

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1605
    return-void

    .line 1606
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setWeekStart(I)V

    .line 1607
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    .line 1608
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 1609
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateWeekStart()V

    .line 1610
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateWeekStart()V

    .line 1611
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->updateWeekStart()V

    .line 1612
    return-void
.end method

.method private showSelectLayout(I)V
    .locals 4
    .param p1, "year"    # I

    .line 347
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    .line 355
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->hideContentView()V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    .line 359
    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekBar;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 360
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 361
    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/haibin/calendarview/CalendarView$4;

    invoke-direct {v3, p0, p1}, Lcom/haibin/calendarview/CalendarView$4;-><init>(Lcom/haibin/calendarview/CalendarView;I)V

    .line 362
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 375
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 376
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/haibin/calendarview/CalendarView$5;

    invoke-direct {v1, p0}, Lcom/haibin/calendarview/CalendarView$5;-><init>(Lcom/haibin/calendarview/CalendarView;)V

    .line 380
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 389
    return-void
.end method


# virtual methods
.method public final addSchemeDate(Lcom/haibin/calendarview/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 1305
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 1314
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1315
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1316
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    .line 1317
    return-void

    .line 1306
    :cond_2
    :goto_0
    return-void
.end method

.method public final addSchemeDate(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 1325
    .local p1, "mSchemeDates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/haibin/calendarview/Calendar;>;"
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1331
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->addSchemes(Ljava/util/Map;)V

    .line 1332
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 1333
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1334
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1335
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    .line 1336
    return-void

    .line 1326
    :cond_2
    :goto_0
    return-void
.end method

.method public final clearMultiSelect()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 707
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->clearMultiSelect()V

    .line 708
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->clearMultiSelect()V

    .line 709
    return-void
.end method

.method public final clearSchemeDate()V
    .locals 2

    .line 1292
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1293
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->clearSelectedScheme()V

    .line 1294
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1295
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1296
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    .line 1297
    return-void
.end method

.method public final clearSelectRange()V
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->clearSelectRange()V

    .line 689
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->clearSelectRange()V

    .line 690
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->clearSelectRange()V

    .line 691
    return-void
.end method

.method public final clearSingleSelect()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v1, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v1}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 698
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->clearSingleSelect()V

    .line 699
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->clearSingleSelect()V

    .line 700
    return-void
.end method

.method public closeYearSelectLayout()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 406
    return-void

    .line 408
    :cond_0
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 409
    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 410
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->closeSelectLayout(I)V

    .line 411
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    .line 412
    return-void
.end method

.method public getCurDay()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v0

    return v0
.end method

.method public getCurMonth()I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    return v0
.end method

.method public getCurYear()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    return v0
.end method

.method public getCurrentMonthCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 1717
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentMonthCalendars()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWeekCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 1707
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentWeekCalendars()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxMultiSelectSize()I
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v0

    return v0
.end method

.method public getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxSelectRange()I
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v0

    return v0
.end method

.method public getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final getMinSelectRange()I
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v0

    return v0
.end method

.method public getMonthViewPager()Lcom/haibin/calendarview/MonthViewPager;
    .locals 1

    .line 1754
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    return-object v0
.end method

.method public final getMultiSelectCalendars()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v0, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/haibin/calendarview/Calendar;>;"
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 754
    return-object v0

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 757
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 758
    return-object v0
.end method

.method public getOffsetPixels()I
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getPositionOffsetPixels()I

    move-result v0

    return v0
.end method

.method public final getSelectCalendarRange()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectCalendarRange()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    return-object v0
.end method

.method public getWeekViewPager()Lcom/haibin/calendarview/WeekViewPager;
    .locals 1

    .line 1763
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    return-object v0
.end method

.method protected final isInRange(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 1773
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingleSelectMode()Z
    .locals 2

    .line 1620
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isYearSelectLayoutVisible()Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1250
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1251
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/CalendarLayout;

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 1253
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iput-object v1, v0, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 1254
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iput-object v1, v0, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 1255
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarLayout;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    .line 1256
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarLayout;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 1257
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->initStatus()V

    .line 1259
    :cond_0
    return-void
.end method

.method protected final onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 1127
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 1128
    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1127
    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1263
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1264
    .local v0, "height":I
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 1265
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->isFullScreenCalendar()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1269
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 1270
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x6

    .line 1269
    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/CalendarView;->setCalendarItemHeight(I)V

    .line 1272
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1273
    return-void

    .line 1266
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1267
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1228
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 1229
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "super"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1230
    .local v1, "superData":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const-string v3, "selected_calendar"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/haibin/calendarview/Calendar;

    iput-object v3, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1231
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const-string v3, "index_calendar"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/haibin/calendarview/Calendar;

    iput-object v3, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1232
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v2, :cond_0

    .line 1233
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1235
    :cond_0
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v2, :cond_1

    .line 1236
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1237
    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1238
    invoke-virtual {v4}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v4

    .line 1236
    invoke-virtual {p0, v2, v3, v4}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(III)V

    .line 1240
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->update()V

    .line 1241
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1242
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1210
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_0

    .line 1211
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 1213
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1214
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1215
    .local v1, "parcelable":Landroid/os/Parcelable;
    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1216
    const-string v2, "selected_calendar"

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1217
    const-string v2, "index_calendar"

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1218
    return-object v0
.end method

.method public final varargs putMultiSelect([Lcom/haibin/calendarview/Calendar;)V
    .locals 5
    .param p1, "calendars"    # [Lcom/haibin/calendarview/Calendar;

    .line 717
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 720
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 721
    .local v2, "calendar":Lcom/haibin/calendarview/Calendar;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    goto :goto_1

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .end local v2    # "calendar":Lcom/haibin/calendarview/Calendar;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    :cond_3
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->update()V

    .line 727
    return-void

    .line 718
    :cond_4
    :goto_2
    return-void
.end method

.method public final varargs removeMultiSelect([Lcom/haibin/calendarview/Calendar;)V
    .locals 5
    .param p1, "calendars"    # [Lcom/haibin/calendarview/Calendar;

    .line 736
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 739
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 740
    .local v2, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v2, :cond_1

    .line 741
    goto :goto_1

    .line 743
    :cond_1
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 744
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    .end local v2    # "calendar":Lcom/haibin/calendarview/Calendar;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->update()V

    .line 748
    return-void

    .line 737
    :cond_4
    :goto_2
    return-void
.end method

.method public final removeSchemeDate(Lcom/haibin/calendarview/Calendar;)V
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 1345
    if-nez p1, :cond_0

    .line 1346
    return-void

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1353
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->clearSelectedScheme()V

    .line 1356
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1357
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1358
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    .line 1359
    return-void

    .line 1349
    :cond_3
    :goto_0
    return-void
.end method

.method public scrollToCalendar(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 572
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(IIIZZ)V

    .line 573
    return-void
.end method

.method public scrollToCalendar(IIIZ)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "smoothScroll"    # Z

    .line 584
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(IIIZZ)V

    .line 585
    return-void
.end method

.method public scrollToCalendar(IIIZZ)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "smoothScroll"    # Z
    .param p5, "invokeListener"    # Z

    .line 598
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 599
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 600
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 601
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 602
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    return-void

    .line 605
    :cond_0
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 606
    return-void

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 609
    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 611
    return-void

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 615
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/haibin/calendarview/WeekViewPager;->scrollToCalendar(IIIZZ)V

    goto :goto_0

    .line 617
    :cond_3
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/haibin/calendarview/MonthViewPager;->scrollToCalendar(IIIZZ)V

    .line 619
    :goto_0
    return-void
.end method

.method public scrollToCurrent()V
    .locals 1

    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->scrollToCurrent(Z)V

    .line 474
    return-void
.end method

.method public scrollToCurrent(Z)V
    .locals 5
    .param p1, "smoothScroll"    # Z

    .line 482
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 486
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 487
    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 489
    return-void

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v3

    iput-object v3, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 492
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v3, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 493
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 494
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 495
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 496
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1, p1}, Lcom/haibin/calendarview/MonthViewPager;->scrollToCurrent(Z)V

    .line 497
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v3, v2}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v1, p1}, Lcom/haibin/calendarview/WeekViewPager;->scrollToCurrent(Z)V

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/haibin/calendarview/YearViewPager;->scrollToYear(IZ)V

    .line 502
    return-void
.end method

.method public scrollToNext()V
    .locals 1

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->scrollToNext(Z)V

    .line 510
    return-void
.end method

.method public scrollToNext(Z)V
    .locals 2
    .param p1, "smoothScroll"    # Z

    .line 518
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->isYearSelectLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/YearViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/WeekViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 526
    :goto_0
    return-void
.end method

.method public scrollToPre()V
    .locals 1

    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->scrollToPre(Z)V

    .line 533
    return-void
.end method

.method public scrollToPre(Z)V
    .locals 2
    .param p1, "smoothScroll"    # Z

    .line 541
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->isYearSelectLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/YearViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/YearViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/WeekViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 548
    :goto_0
    return-void
.end method

.method public scrollToSelectCalendar()V
    .locals 7

    .line 554
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 558
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 559
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 557
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(IIIZZ)V

    .line 562
    return-void
.end method

.method public scrollToYear(I)V
    .locals 1
    .param p1, "year"    # I

    .line 627
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/haibin/calendarview/CalendarView;->scrollToYear(IZ)V

    .line 628
    return-void
.end method

.method public scrollToYear(IZ)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "smoothScroll"    # Z

    .line 637
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0, p1, p2}, Lcom/haibin/calendarview/YearViewPager;->scrollToYear(IZ)V

    .line 641
    return-void
.end method

.method public setAllMode()V
    .locals 1

    .line 1627
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setShowMode(I)V

    .line 1628
    return-void
.end method

.method public setBackground(III)V
    .locals 1
    .param p1, "yearViewBackground"    # I
    .param p2, "weekBackground"    # I
    .param p3, "lineBg"    # I

    .line 1369
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/WeekBar;->setBackgroundColor(I)V

    .line 1370
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/YearViewPager;->setBackgroundColor(I)V

    .line 1371
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekLine:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1372
    return-void
.end method

.method public final setCalendarItemHeight(I)V
    .locals 1
    .param p1, "calendarItemHeight"    # I

    .line 776
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 777
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setCalendarItemHeight(I)V

    .line 780
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateItemHeight()V

    .line 781
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateItemHeight()V

    .line 782
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-nez v0, :cond_1

    .line 783
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->updateCalendarItemHeight()V

    .line 786
    return-void
.end method

.method public setCalendarPadding(I)V
    .locals 1
    .param p1, "mCalendarPadding"    # I

    .line 1496
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_0

    .line 1497
    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setCalendarPadding(I)V

    .line 1500
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->update()V

    .line 1501
    return-void
.end method

.method public setCalendarPaddingLeft(I)V
    .locals 1
    .param p1, "mCalendarPaddingLeft"    # I

    .line 1505
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_0

    .line 1506
    return-void

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setCalendarPaddingLeft(I)V

    .line 1509
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->update()V

    .line 1510
    return-void
.end method

.method public setCalendarPaddingRight(I)V
    .locals 1
    .param p1, "mCalendarPaddingRight"    # I

    .line 1513
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_0

    .line 1514
    return-void

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setCalendarPaddingRight(I)V

    .line 1517
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->update()V

    .line 1518
    return-void
.end method

.method public setCurDayLunarTextColor(I)V
    .locals 1
    .param p1, "curDayLunarTextColor"    # I

    .line 1400
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setCurDayLunarTextColor(I)V

    .line 1401
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1402
    return-void
.end method

.method public final setDefaultMonthViewSelectDay()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setDefaultCalendarSelectDay(I)V

    .line 674
    return-void
.end method

.method public setFestivalTextColor(I)V
    .locals 1
    .param p1, "curMonthLunarFestivalTextColor"    # I

    .line 1410
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setFestivalTextColor(I)V

    .line 1414
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1415
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateStyle()V

    .line 1416
    return-void

    .line 1411
    :cond_1
    :goto_0
    return-void
.end method

.method public setFixMode()V
    .locals 1

    .line 1641
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setShowMode(I)V

    .line 1642
    return-void
.end method

.method public final setLastMonthViewSelectDay()V
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setDefaultCalendarSelectDay(I)V

    .line 678
    return-void
.end method

.method public final setLastMonthViewSelectDayIgnoreCurrent()V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setDefaultCalendarSelectDay(I)V

    .line 682
    return-void
.end method

.method public final setMaxMultiSelectSize(I)V
    .locals 1
    .param p1, "maxMultiSelectSize"    # I

    .line 1147
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setMaxMultiSelectSize(I)V

    .line 1148
    return-void
.end method

.method public setMonthDateClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .line 265
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarView;->monthDateClickable:Z

    .line 266
    return-void
.end method

.method public final setMonthView(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 795
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 796
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setMonthViewClass(Ljava/lang/Class;)V

    .line 802
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateMonthViewClass()V

    .line 803
    return-void
.end method

.method public final setMonthViewScrollable(Z)V
    .locals 1
    .param p1, "monthViewScrollable"    # Z

    .line 649
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setMonthViewScrollable(Z)V

    .line 650
    return-void
.end method

.method public final setOnCalendarInterceptListener(Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 860
    if-nez p1, :cond_0

    .line 861
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 863
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 867
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {p1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 868
    return-void

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    new-instance v1, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v1}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 871
    return-void

    .line 864
    :cond_3
    :goto_0
    return-void
.end method

.method public setOnCalendarLongClickListener(Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    .line 1174
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    .line 1175
    return-void
.end method

.method public setOnCalendarLongClickListener(Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;
    .param p2, "preventLongPressedSelect"    # Z

    .line 1184
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    .line 1185
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->setPreventLongPressedSelected(Z)V

    .line 1186
    return-void
.end method

.method public final setOnCalendarMultiSelectListener(Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    .line 951
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    .line 952
    return-void
.end method

.method public final setOnCalendarRangeSelectListener(Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    .line 942
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    .line 943
    return-void
.end method

.method public setOnCalendarSelectListener(Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    .line 922
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    .line 923
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-nez v0, :cond_0

    .line 924
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    return-void

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 930
    return-void

    .line 932
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 933
    return-void
.end method

.method public final setOnClickCalendarPaddingListener(Lcom/haibin/calendarview/CalendarView$OnClickCalendarPaddingListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnClickCalendarPaddingListener;

    .line 879
    if-nez p1, :cond_0

    .line 880
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mClickCalendarPaddingListener:Lcom/haibin/calendarview/CalendarView$OnClickCalendarPaddingListener;

    .line 882
    :cond_0
    if-nez p1, :cond_1

    .line 883
    return-void

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mClickCalendarPaddingListener:Lcom/haibin/calendarview/CalendarView$OnClickCalendarPaddingListener;

    .line 886
    return-void
.end method

.method public setOnMonthChangeListener(Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;

    .line 903
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthChangeListener:Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;

    .line 904
    return-void
.end method

.method public setOnViewChangeListener(Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    .line 1194
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    .line 1195
    return-void
.end method

.method public setOnWeekChangeListener(Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;

    .line 913
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekChangeListener:Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;

    .line 914
    return-void
.end method

.method public setOnYearChangeListener(Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    .line 894
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    .line 895
    return-void
.end method

.method public setOnYearViewChangeListener(Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    .line 1199
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    .line 1200
    return-void
.end method

.method public setOnlyCurrentMode()V
    .locals 1

    .line 1634
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setShowMode(I)V

    .line 1635
    return-void
.end method

.method public setRange(IIIIII)V
    .locals 8
    .param p1, "minYear"    # I
    .param p2, "minYearMonth"    # I
    .param p3, "minYearDay"    # I
    .param p4, "maxYear"    # I
    .param p5, "maxYearMonth"    # I
    .param p6, "maxYearDay"    # I

    .line 280
    invoke-static/range {p1 .. p6}, Lcom/haibin/calendarview/CalendarUtil;->compareTo(IIIIII)I

    move-result v0

    if-lez v0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/haibin/calendarview/CalendarViewDelegate;->setRange(IIIIII)V

    .line 286
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->notifyDataSetChanged()V

    .line 287
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->notifyDataSetChanged()V

    .line 288
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->notifyDataSetChanged()V

    .line 289
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 291
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 292
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateRange()V

    .line 295
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateRange()V

    .line 296
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->updateRange()V

    .line 297
    return-void
.end method

.method public setSchemeColor(III)V
    .locals 1
    .param p1, "schemeColor"    # I
    .param p2, "schemeTextColor"    # I
    .param p3, "schemeLunarTextColor"    # I

    .line 1457
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSchemeColor(III)V

    .line 1461
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1462
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateStyle()V

    .line 1463
    return-void

    .line 1458
    :cond_1
    :goto_0
    return-void
.end method

.method public final setSchemeDate(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 1281
    .local p1, "mSchemeDates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/haibin/calendarview/Calendar;>;"
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1282
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 1283
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1284
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1285
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    .line 1286
    return-void
.end method

.method public final setSelectCalendarRange(IIIIII)V
    .locals 2
    .param p1, "startYear"    # I
    .param p2, "startMonth"    # I
    .param p3, "startDay"    # I
    .param p4, "endYear"    # I
    .param p5, "endMonth"    # I
    .param p6, "endDay"    # I

    .line 1039
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1040
    return-void

    .line 1042
    :cond_0
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 1043
    .local v0, "startCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 1044
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 1045
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1047
    new-instance v1, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v1}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 1048
    .local v1, "endCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v1, p4}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 1049
    invoke-virtual {v1, p5}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 1050
    invoke-virtual {v1, p6}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1051
    invoke-virtual {p0, v0, v1}, Lcom/haibin/calendarview/CalendarView;->setSelectCalendarRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)V

    .line 1052
    return-void
.end method

.method public final setSelectCalendarRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)V
    .locals 6
    .param p1, "startCalendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "endCalendar"    # Lcom/haibin/calendarview/Calendar;

    .line 1061
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1062
    return-void

    .line 1064
    :cond_0
    if-eqz p1, :cond_10

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 1067
    :cond_1
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1068
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v0, :cond_2

    .line 1069
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1071
    :cond_2
    return-void

    .line 1073
    :cond_3
    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/CalendarView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1074
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v0, :cond_4

    .line 1075
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v0, p2, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1077
    :cond_4
    return-void

    .line 1079
    :cond_5
    invoke-virtual {p2, p1}, Lcom/haibin/calendarview/Calendar;->differ(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    .line 1080
    .local v0, "minDiffer":I
    if-gez v0, :cond_6

    .line 1081
    return-void

    .line 1083
    :cond_6
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, p2}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    .line 1089
    :cond_7
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v2

    add-int/lit8 v5, v0, 0x1

    if-le v2, v5, :cond_9

    .line 1090
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v1, :cond_8

    .line 1091
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v1, p2, v4}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1093
    :cond_8
    return-void

    .line 1094
    :cond_9
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v2

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v2

    add-int/lit8 v5, v0, 0x1

    if-ge v2, v5, :cond_b

    .line 1096
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v2, :cond_a

    .line 1097
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v2, p2, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1099
    :cond_a
    return-void

    .line 1101
    :cond_b
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v2

    if-ne v2, v3, :cond_d

    if-nez v0, :cond_d

    .line 1102
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1103
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1104
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v2, :cond_c

    .line 1105
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v2, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1107
    :cond_c
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(III)V

    .line 1108
    return-void

    .line 1111
    :cond_d
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1112
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1113
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v2, :cond_e

    .line 1114
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v2, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1115
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v1, p2, v4}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 1117
    :cond_e
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(III)V

    .line 1118
    return-void

    .line 1084
    :cond_f
    :goto_0
    return-void

    .line 1065
    .end local v0    # "minDiffer":I
    :cond_10
    :goto_1
    return-void
.end method

.method public final setSelectDefaultMode()V
    .locals 4

    .line 1525
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    return-void

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1529
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectMode(I)V

    .line 1530
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 1531
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateDefaultSelect()V

    .line 1532
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateDefaultSelect()V

    .line 1534
    return-void
.end method

.method public final setSelectEndCalendar(III)V
    .locals 2
    .param p1, "endYear"    # I
    .param p2, "endMonth"    # I
    .param p3, "endDay"    # I

    .line 1004
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1005
    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v0, :cond_1

    .line 1008
    return-void

    .line 1010
    :cond_1
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 1011
    .local v0, "endCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 1012
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 1013
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1014
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setSelectEndCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 1015
    return-void
.end method

.method public final setSelectEndCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 2
    .param p1, "endCalendar"    # Lcom/haibin/calendarview/Calendar;

    .line 1018
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1019
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v0, :cond_1

    .line 1022
    return-void

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, v0, p1}, Lcom/haibin/calendarview/CalendarView;->setSelectCalendarRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)V

    .line 1025
    return-void
.end method

.method public setSelectMultiMode()V
    .locals 2

    .line 1551
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1552
    return-void

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectMode(I)V

    .line 1555
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->clearMultiSelect()V

    .line 1556
    return-void
.end method

.method public final setSelectRange(II)V
    .locals 1
    .param p1, "minRange"    # I
    .param p2, "maxRange"    # I

    .line 961
    if-le p1, p2, :cond_0

    .line 962
    return-void

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectRange(II)V

    .line 965
    return-void
.end method

.method public setSelectRangeMode()V
    .locals 2

    .line 1540
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1541
    return-void

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectMode(I)V

    .line 1544
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->clearSelectRange()V

    .line 1545
    return-void
.end method

.method public setSelectSingleMode()V
    .locals 2

    .line 1562
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1563
    return-void

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectMode(I)V

    .line 1566
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected()V

    .line 1567
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    .line 1568
    return-void
.end method

.method public final setSelectStartCalendar(III)V
    .locals 2
    .param p1, "startYear"    # I
    .param p2, "startMonth"    # I
    .param p3, "startDay"    # I

    .line 969
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 970
    return-void

    .line 972
    :cond_0
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 973
    .local v0, "startCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 974
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 975
    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 976
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setSelectStartCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 977
    return-void
.end method

.method public final setSelectStartCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 3
    .param p1, "startCalendar"    # Lcom/haibin/calendarview/Calendar;

    .line 980
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 981
    return-void

    .line 983
    :cond_0
    if-nez p1, :cond_1

    .line 984
    return-void

    .line 986
    :cond_1
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 987
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    .line 990
    :cond_2
    return-void

    .line 992
    :cond_3
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/CalendarView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 993
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v0, :cond_4

    .line 994
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 996
    :cond_4
    return-void

    .line 998
    :cond_5
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 999
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1000
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(III)V

    .line 1001
    return-void
.end method

.method public setSelectedColor(III)V
    .locals 1
    .param p1, "selectedThemeColor"    # I
    .param p2, "selectedTextColor"    # I
    .param p3, "selectedLunarTextColor"    # I

    .line 1426
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectColor(III)V

    .line 1430
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1431
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateStyle()V

    .line 1432
    return-void

    .line 1427
    :cond_1
    :goto_0
    return-void
.end method

.method public setTextColor(IIIII)V
    .locals 7
    .param p1, "currentDayTextColor"    # I
    .param p2, "curMonthTextColor"    # I
    .param p3, "otherMonthColor"    # I
    .param p4, "curMonthLunarTextColor"    # I
    .param p5, "otherMonthLunarTextColor"    # I

    .line 1390
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1393
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->setTextColor(IIIII)V

    .line 1395
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1396
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateStyle()V

    .line 1397
    return-void

    .line 1391
    :cond_1
    :goto_0
    return-void
.end method

.method public setThemeColor(II)V
    .locals 1
    .param p1, "selectedThemeColor"    # I
    .param p2, "schemeColor"    # I

    .line 1441
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1444
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/haibin/calendarview/CalendarViewDelegate;->setThemeColor(II)V

    .line 1445
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateStyle()V

    .line 1446
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateStyle()V

    .line 1447
    return-void

    .line 1442
    :cond_1
    :goto_0
    return-void
.end method

.method public final setWeekBar(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 827
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 828
    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setWeekBarClass(Ljava/lang/Class;)V

    .line 834
    const v0, 0x7f0a0171

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 835
    .local v0, "frameContent":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 838
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 839
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/WeekBar;

    iput-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 840
    :catch_0
    move-exception v1

    .line 841
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 843
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 844
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/WeekBar;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 845
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    .line 846
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iput-object v3, v1, Lcom/haibin/calendarview/MonthViewPager;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    .line 847
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v4, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 848
    return-void
.end method

.method public setWeekColor(II)V
    .locals 1
    .param p1, "weekBackground"    # I
    .param p2, "weekTextColor"    # I

    .line 1487
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    if-nez v0, :cond_0

    .line 1488
    return-void

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/WeekBar;->setBackgroundColor(I)V

    .line 1491
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/WeekBar;->setTextColor(I)V

    .line 1492
    return-void
.end method

.method public setWeekStarWithMon()V
    .locals 1

    .line 1581
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setWeekStart(I)V

    .line 1582
    return-void
.end method

.method public setWeekStarWithSat()V
    .locals 1

    .line 1588
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setWeekStart(I)V

    .line 1589
    return-void
.end method

.method public setWeekStarWithSun()V
    .locals 1

    .line 1574
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/haibin/calendarview/CalendarView;->setWeekStart(I)V

    .line 1575
    return-void
.end method

.method public final setWeekView(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 811
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 812
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    return-void

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setWeekViewClass(Ljava/lang/Class;)V

    .line 818
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateWeekViewClass()V

    .line 819
    return-void
.end method

.method public final setWeekViewScrollable(Z)V
    .locals 1
    .param p1, "weekViewScrollable"    # Z

    .line 659
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setWeekViewScrollable(Z)V

    .line 660
    return-void
.end method

.method public final setYearViewScrollable(Z)V
    .locals 1
    .param p1, "yearViewScrollable"    # Z

    .line 668
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->setYearViewScrollable(Z)V

    .line 669
    return-void
.end method

.method public setYearViewTextColor(III)V
    .locals 1
    .param p1, "yearViewMonthTextColor"    # I
    .param p2, "yearViewDayTextColor"    # I
    .param p3, "yarViewSchemeTextColor"    # I

    .line 1473
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/haibin/calendarview/CalendarViewDelegate;->setYearViewTextColor(III)V

    .line 1477
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->updateStyle()V

    .line 1478
    return-void

    .line 1474
    :cond_1
    :goto_0
    return-void
.end method

.method public showYearSelectLayout(I)V
    .locals 0
    .param p1, "year"    # I

    .line 337
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/CalendarView;->showSelectLayout(I)V

    .line 338
    return-void
.end method

.method public final update()V
    .locals 2

    .line 1670
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    .line 1671
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mYearViewPager:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/YearViewPager;->update()V

    .line 1672
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateScheme()V

    .line 1673
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->updateScheme()V

    .line 1674
    return-void
.end method

.method public final updateCurrentDate()V
    .locals 3

    .line 1688
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1691
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1692
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1693
    .local v1, "day":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarView;->getCurDay()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1694
    return-void

    .line 1696
    :cond_1
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCurrentDay()V

    .line 1697
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mMonthPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v2}, Lcom/haibin/calendarview/MonthViewPager;->updateCurrentDate()V

    .line 1698
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v2}, Lcom/haibin/calendarview/WeekViewPager;->updateCurrentDate()V

    .line 1699
    return-void

    .line 1689
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "day":I
    :cond_2
    :goto_0
    return-void
.end method

.method public updateWeekBar()V
    .locals 2

    .line 1680
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekBar;->onWeekStartChange(I)V

    .line 1681
    return-void
.end method
