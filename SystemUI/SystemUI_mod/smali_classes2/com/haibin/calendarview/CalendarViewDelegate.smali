.class final Lcom/haibin/calendarview/CalendarViewDelegate;
.super Ljava/lang/Object;
.source "CalendarViewDelegate.java"


# static fields
.field static final FIRST_DAY_OF_MONTH:I = 0x0

.field static final LAST_MONTH_VIEW_SELECT_DAY:I = 0x1

.field static final LAST_MONTH_VIEW_SELECT_DAY_IGNORE_CURRENT:I = 0x2

.field private static final MAX_YEAR:I = 0x833

.field static final MIN_YEAR:I = 0x76c

.field static final MODE_ALL_MONTH:I = 0x0

.field static final MODE_FIT_MONTH:I = 0x2

.field static final MODE_ONLY_CURRENT_MONTH:I = 0x1

.field static final SELECT_MODE_DEFAULT:I = 0x0

.field static final SELECT_MODE_MULTI:I = 0x3

.field static final SELECT_MODE_RANGE:I = 0x2

.field static final SELECT_MODE_SINGLE:I = 0x1

.field static final WEEK_START_WITH_MON:I = 0x2

.field static final WEEK_START_WITH_SAT:I = 0x7

.field static final WEEK_START_WITH_SUN:I = 0x1


# instance fields
.field private isFullScreenCalendar:Z

.field isShowYearSelectedLayout:Z

.field mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

.field private mCalendarItemHeight:I

.field mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

.field mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

.field private mCalendarPadding:I

.field private mCalendarPaddingLeft:I

.field private mCalendarPaddingRight:I

.field mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

.field mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

.field mClickCalendarPaddingListener:Lcom/haibin/calendarview/CalendarView$OnClickCalendarPaddingListener;

.field private mCurDayLunarTextColor:I

.field private mCurDayTextColor:I

.field private mCurMonthLunarFestivalTextColor:I

.field private mCurMonthLunarTextColor:I

.field private mCurrentDate:Lcom/haibin/calendarview/Calendar;

.field private mCurrentMonthTextColor:I

.field mCurrentMonthViewItem:I

.field private mDayTextSize:I

.field private mDefaultCalendarSelectDay:I

.field mIndexCalendar:Lcom/haibin/calendarview/Calendar;

.field mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

.field private mLunarTextSize:I

.field private mMaxMultiSelectSize:I

.field private mMaxSelectRange:I

.field private mMaxYear:I

.field private mMaxYearDay:I

.field private mMaxYearMonth:I

.field private mMinSelectRange:I

.field private mMinYear:I

.field private mMinYearDay:I

.field private mMinYearMonth:I

.field mMonthChangeListener:Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;

.field private mMonthViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mMonthViewClassPath:Ljava/lang/String;

.field private mMonthViewScrollable:Z

.field private mMonthViewShowMode:I

.field private mOtherMonthLunarTextColor:I

.field private mOtherMonthTextColor:I

.field mPositionOffsetPixels:I

.field mSchemeDatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private mSchemeLunarTextColor:I

.field private mSchemeText:Ljava/lang/String;

.field private mSchemeTextColor:I

.field private mSchemeThemeColor:I

.field private mSelectMode:I

.field mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

.field mSelectedCalendars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

.field private mSelectedLunarTextColor:I

.field mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

.field private mSelectedTextColor:I

.field private mSelectedThemeColor:I

.field mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

.field private mWeekBackground:I

.field private mWeekBarClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mWeekBarClassPath:Ljava/lang/String;

.field private mWeekBarHeight:I

.field mWeekChangeListener:Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;

.field private mWeekLineBackground:I

.field private mWeekLineMargin:I

.field private mWeekStart:I

.field private mWeekTextColor:I

.field private mWeekTextSize:I

.field private mWeekViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mWeekViewClassPath:Ljava/lang/String;

.field private mWeekViewScrollable:Z

.field mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

.field private mYearViewBackground:I

.field mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

.field private mYearViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mYearViewClassPath:Ljava/lang/String;

.field private mYearViewCurDayTextColor:I

.field private mYearViewDayTextColor:I

.field private mYearViewDayTextSize:I

.field private mYearViewMonthHeight:I

.field private mYearViewMonthPaddingBottom:I

.field private mYearViewMonthPaddingLeft:I

.field private mYearViewMonthPaddingRight:I

.field private mYearViewMonthPaddingTop:I

.field private mYearViewMonthTextColor:I

.field private mYearViewMonthTextSize:I

.field private mYearViewPadding:I

.field private mYearViewPaddingLeft:I

.field private mYearViewPaddingRight:I

.field private mYearViewSchemeTextColor:I

.field private mYearViewScrollable:Z

.field private mYearViewSelectTextColor:I

.field private mYearViewWeekHeight:I

.field private mYearViewWeekTextColor:I

.field private mYearViewWeekTextSize:I

.field private preventLongPressedSelected:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mPositionOffsetPixels:I

    .line 417
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    .line 429
    sget-object v1, Lcom/android/systemui/R$styleable;->CalendarView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 431
    .local v1, "array":Landroid/content/res/TypedArray;
    invoke-static {p1}, Lcom/haibin/calendarview/LunarCalendar;->init(Landroid/content/Context;)V

    .line 433
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPadding:I

    .line 434
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingLeft:I

    .line 435
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingRight:I

    .line 437
    iget v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPadding:I

    if-eqz v3, :cond_0

    .line 438
    iget v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPadding:I

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingLeft:I

    .line 439
    iget v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPadding:I

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingRight:I

    .line 442
    :cond_0
    const/16 v3, 0x1d

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeTextColor:I

    .line 443
    const/16 v3, 0x1a

    const v5, -0x1e1e1f

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeLunarTextColor:I

    .line 444
    const/16 v3, 0x1e

    const v6, 0x50cfcfcf

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    .line 445
    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClassPath:Ljava/lang/String;

    .line 446
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClassPath:Ljava/lang/String;

    .line 447
    const/16 v3, 0x2b

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClassPath:Ljava/lang/String;

    .line 448
    const/16 v3, 0x25

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClassPath:Ljava/lang/String;

    .line 449
    const/16 v3, 0x2a

    .line 450
    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {p1, v7}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v8

    .line 449
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekTextSize:I

    .line 451
    const/16 v3, 0x24

    const/high16 v8, 0x42200000    # 40.0f

    .line 452
    invoke-static {p1, v8}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    .line 451
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarHeight:I

    .line 453
    const/16 v3, 0x27

    .line 454
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    .line 453
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekLineMargin:I

    .line 456
    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeText:Ljava/lang/String;

    .line 457
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    const-string v3, "\u8bb0"

    iput-object v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeText:Ljava/lang/String;

    .line 461
    :cond_1
    const/16 v3, 0x16

    const/4 v8, 0x1

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewScrollable:Z

    .line 462
    const/16 v3, 0x2c

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewScrollable:Z

    .line 463
    const/16 v3, 0x3d

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewScrollable:Z

    .line 465
    const/16 v3, 0x15

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDefaultCalendarSelectDay:I

    .line 468
    const/16 v3, 0x17

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewShowMode:I

    .line 469
    const/16 v3, 0x28

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekStart:I

    .line 470
    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectMode:I

    .line 471
    const/16 v3, 0xb

    const v9, 0x7fffffff

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxMultiSelectSize:I

    .line 472
    const/16 v3, 0x10

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    .line 473
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    .line 474
    iget v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    iget v10, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    invoke-virtual {p0, v9, v10}, Lcom/haibin/calendarview/CalendarViewDelegate;->setSelectRange(II)V

    .line 476
    const/16 v9, 0x23

    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBackground:I

    .line 477
    const/16 v9, 0x26

    invoke-virtual {v1, v9, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekLineBackground:I

    .line 478
    const/16 v9, 0x2e

    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewBackground:I

    .line 479
    const/16 v9, 0x29

    const v10, -0xcccccd

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekTextColor:I

    .line 481
    const/4 v9, 0x6

    const/high16 v11, -0x10000

    invoke-virtual {v1, v9, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayTextColor:I

    .line 482
    const/4 v9, 0x5

    invoke-virtual {v1, v9, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayLunarTextColor:I

    .line 484
    const/16 v9, 0x22

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedThemeColor:I

    .line 485
    const/16 v6, 0x21

    const v9, -0xeeeeef

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedTextColor:I

    .line 487
    const/16 v6, 0x20

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedLunarTextColor:I

    .line 488
    const/16 v6, 0x8

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthTextColor:I

    .line 489
    const/16 v6, 0x19

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthTextColor:I

    .line 491
    const/4 v6, 0x7

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurMonthLunarTextColor:I

    .line 492
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurMonthLunarFestivalTextColor:I

    .line 493
    const/16 v6, 0x18

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthLunarTextColor:I

    .line 494
    const/16 v5, 0x11

    const/16 v6, 0x7b3

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    .line 495
    const/16 v5, 0xd

    const/16 v6, 0x807

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 496
    const/16 v5, 0x13

    invoke-virtual {v1, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    .line 497
    const/16 v5, 0xf

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    .line 498
    const/16 v3, 0x12

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearDay:I

    .line 499
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    .line 501
    const/16 v3, 0x9

    const/high16 v4, 0x41800000    # 16.0f

    .line 502
    invoke-static {p1, v4}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v4

    .line 501
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDayTextSize:I

    .line 503
    const/16 v3, 0xa

    const/high16 v4, 0x41200000    # 10.0f

    .line 504
    invoke-static {p1, v4}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v4

    .line 503
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mLunarTextSize:I

    .line 505
    const/high16 v3, 0x42600000    # 56.0f

    .line 506
    invoke-static {p1, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 505
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarItemHeight:I

    .line 507
    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->isFullScreenCalendar:Z

    .line 510
    const/16 v0, 0x38

    const/high16 v3, 0x41900000    # 18.0f

    .line 511
    invoke-static {p1, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    .line 510
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextSize:I

    .line 512
    const/16 v0, 0x31

    const/high16 v3, 0x40e00000    # 7.0f

    .line 513
    invoke-static {p1, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    .line 512
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextSize:I

    .line 514
    const/16 v0, 0x37

    invoke-virtual {v1, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextColor:I

    .line 515
    const/16 v0, 0x30

    invoke-virtual {v1, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextColor:I

    .line 516
    const/16 v0, 0x3c

    iget v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSchemeTextColor:I

    .line 517
    const/16 v0, 0x40

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekTextColor:I

    .line 518
    const/16 v0, 0x2f

    iget v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayTextColor:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewCurDayTextColor:I

    .line 519
    const/16 v0, 0x3e

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSelectTextColor:I

    .line 520
    const/16 v0, 0x41

    const/high16 v3, 0x41000000    # 8.0f

    .line 521
    invoke-static {p1, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    .line 520
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekTextSize:I

    .line 522
    const/16 v0, 0x32

    const/high16 v3, 0x42000000    # 32.0f

    .line 523
    invoke-static {p1, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    .line 522
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthHeight:I

    .line 524
    const/16 v0, 0x3f

    .line 525
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    .line 524
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekHeight:I

    .line 527
    const/16 v0, 0x39

    .line 528
    invoke-static {p1, v7}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 527
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPadding:I

    .line 529
    const/16 v0, 0x3a

    .line 530
    invoke-static {p1, v7}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 529
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPaddingLeft:I

    .line 531
    const/16 v0, 0x3b

    .line 532
    invoke-static {p1, v7}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 531
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPaddingRight:I

    .line 534
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPadding:I

    if-eqz v0, :cond_2

    .line 535
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPadding:I

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPaddingLeft:I

    .line 536
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPadding:I

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPaddingRight:I

    .line 539
    :cond_2
    const/16 v0, 0x36

    .line 540
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 539
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthPaddingTop:I

    .line 541
    const/16 v0, 0x33

    .line 542
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 541
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthPaddingBottom:I

    .line 544
    const/16 v0, 0x34

    .line 545
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 544
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthPaddingLeft:I

    .line 546
    const/16 v0, 0x35

    .line 547
    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 546
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthPaddingRight:I

    .line 549
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    const/16 v2, 0x76c

    if-gt v0, v2, :cond_3

    iput v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    .line 550
    :cond_3
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    const/16 v2, 0x833

    if-lt v0, v2, :cond_4

    iput v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 551
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 552
    invoke-direct {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->init()V

    .line 553
    return-void
.end method

.method private init()V
    .locals 5

    .line 556
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    .line 557
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 558
    .local v0, "d":Ljava/util/Date;
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "yyyy"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 559
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "MM"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 560
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "dd"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 561
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 562
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-static {v1}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 563
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    iget v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    iget v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    iget v4, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->setRange(IIII)V

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClassPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    const-class v1, Lcom/haibin/calendarview/WeekBar;

    iput-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClass:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClassPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    goto :goto_1

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 573
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClassPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    const-class v1, Lcom/haibin/calendarview/DefaultYearView;

    iput-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClass:Ljava/lang/Class;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClassPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    goto :goto_3

    .line 575
    :catch_1
    move-exception v1

    .line 576
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 579
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClassPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    const-class v1, Lcom/haibin/calendarview/DefaultMonthView;

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClassPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClass:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 583
    goto :goto_5

    .line 581
    :catch_2
    move-exception v1

    .line 582
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClassPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 586
    const-class v1, Lcom/haibin/calendarview/DefaultWeekView;

    goto :goto_6

    :cond_3
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClassPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_6
    iput-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClass:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 589
    goto :goto_7

    .line 587
    :catch_3
    move-exception v1

    .line 588
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 590
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method private setRange(IIII)V
    .locals 3
    .param p1, "minYear"    # I
    .param p2, "minYearMonth"    # I
    .param p3, "maxYear"    # I
    .param p4, "maxYearMonth"    # I

    .line 595
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    .line 596
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    .line 597
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 598
    iput p4, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    .line 599
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 602
    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 603
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    sub-int/2addr v0, v1

    .line 606
    .local v0, "y":I
    const/16 v1, 0xc

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthViewItem:I

    .line 607
    return-void
.end method


# virtual methods
.method final addSchemes(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haibin/calendarview/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 1146
    .local p1, "mSchemeDates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/haibin/calendarview/Calendar;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    .line 1152
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1153
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/Calendar;

    .line 1155
    .local v2, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v2, :cond_2

    .line 1156
    goto :goto_0

    .line 1158
    :cond_2
    iget-object v3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "calendar":Lcom/haibin/calendarview/Calendar;
    goto :goto_0

    .line 1160
    :cond_3
    return-void

    .line 1147
    :cond_4
    :goto_1
    return-void
.end method

.method final addSchemesFromMap(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 1120
    .local p1, "mItems":Ljava/util/List;, "Ljava/util/List<Lcom/haibin/calendarview/Calendar;>;"
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1123
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 1124
    .local v1, "a":Lcom/haibin/calendarview/Calendar;
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1125
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/Calendar;

    .line 1126
    .local v2, "d":Lcom/haibin/calendarview/Calendar;
    if-nez v2, :cond_1

    .line 1127
    goto :goto_0

    .line 1129
    :cond_1
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 1131
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    .line 1132
    .end local v2    # "d":Lcom/haibin/calendarview/Calendar;
    goto :goto_2

    .line 1133
    :cond_3
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 1134
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 1135
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    .line 1137
    .end local v1    # "a":Lcom/haibin/calendarview/Calendar;
    :goto_2
    goto :goto_0

    .line 1138
    :cond_4
    return-void

    .line 1121
    :cond_5
    :goto_3
    return-void
.end method

.method final clearSelectRange()V
    .locals 1

    .line 1166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1167
    iput-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1168
    return-void
.end method

.method clearSelectedScheme()V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->clearScheme()V

    .line 1044
    return-void
.end method

.method createCurrentDate()Lcom/haibin/calendarview/Calendar;
    .locals 2

    .line 1085
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 1086
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 1087
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setWeek(I)V

    .line 1088
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 1089
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1090
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 1091
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 1092
    return-object v0
.end method

.method getCalendarItemHeight()I
    .locals 1

    .line 746
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarItemHeight:I

    return v0
.end method

.method getCalendarPadding()I
    .locals 1

    .line 997
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPadding:I

    return v0
.end method

.method getCalendarPaddingLeft()I
    .locals 1

    .line 1007
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingLeft:I

    return v0
.end method

.method getCalendarPaddingRight()I
    .locals 1

    .line 1015
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingRight:I

    return v0
.end method

.method getCurDayLunarTextColor()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayLunarTextColor:I

    return v0
.end method

.method getCurDayTextColor()I
    .locals 1

    .line 634
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayTextColor:I

    return v0
.end method

.method getCurrentDay()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    return-object v0
.end method

.method getCurrentMonthLunarFestivalTextColor()I
    .locals 1

    .line 674
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurMonthLunarFestivalTextColor:I

    return v0
.end method

.method getCurrentMonthLunarTextColor()I
    .locals 1

    .line 670
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurMonthLunarTextColor:I

    return v0
.end method

.method getCurrentMonthTextColor()I
    .locals 1

    .line 658
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthTextColor:I

    return v0
.end method

.method getDayTextSize()I
    .locals 1

    .line 738
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDayTextSize:I

    return v0
.end method

.method getDefaultCalendarSelectDay()I
    .locals 1

    .line 924
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDefaultCalendarSelectDay:I

    return v0
.end method

.method getLunarTextSize()I
    .locals 1

    .line 742
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mLunarTextSize:I

    return v0
.end method

.method getMaxMultiSelectSize()I
    .locals 1

    .line 958
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxMultiSelectSize:I

    return v0
.end method

.method final getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 2

    .line 1107
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 1108
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 1109
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 1110
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1111
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 1112
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 1113
    return-object v0
.end method

.method getMaxSelectRange()I
    .locals 1

    .line 954
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    return v0
.end method

.method getMaxYear()I
    .locals 1

    .line 734
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    return v0
.end method

.method getMaxYearDay()I
    .locals 1

    .line 1051
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    return v0
.end method

.method getMaxYearMonth()I
    .locals 1

    .line 758
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    return v0
.end method

.method final getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 2

    .line 1096
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 1097
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 1098
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 1099
    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearDay:I

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1100
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 1101
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 1102
    return-object v0
.end method

.method getMinSelectRange()I
    .locals 1

    .line 950
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    return v0
.end method

.method getMinYear()I
    .locals 1

    .line 730
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    return v0
.end method

.method getMinYearDay()I
    .locals 1

    .line 1047
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearDay:I

    return v0
.end method

.method getMinYearMonth()I
    .locals 1

    .line 754
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    return v0
.end method

.method getMonthViewClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClass:Ljava/lang/Class;

    return-object v0
.end method

.method getMonthViewShowMode()I
    .locals 1

    .line 837
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewShowMode:I

    return v0
.end method

.method getOtherMonthLunarTextColor()I
    .locals 1

    .line 678
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthLunarTextColor:I

    return v0
.end method

.method getOtherMonthTextColor()I
    .locals 1

    .line 654
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthTextColor:I

    return v0
.end method

.method getPositionOffsetPixels()I
    .locals 1

    .line 631
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mPositionOffsetPixels:I

    return v0
.end method

.method getSchemeLunarTextColor()I
    .locals 1

    .line 650
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeLunarTextColor:I

    return v0
.end method

.method getSchemeText()Ljava/lang/String;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeText:Ljava/lang/String;

    return-object v0
.end method

.method getSchemeTextColor()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeTextColor:I

    return v0
.end method

.method getSchemeThemeColor()I
    .locals 1

    .line 682
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    return v0
.end method

.method final getSelectCalendarRange()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 1176
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1177
    const/4 v0, 0x0

    return-object v0

    .line 1179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .local v0, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/haibin/calendarview/Calendar;>;"
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 1184
    :cond_1
    const-wide/32 v2, 0x5265c00

    .line 1185
    .local v2, "ONE_DAY":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1187
    .local v4, "date":Ljava/util/Calendar;
    iget-object v5, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v5}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1188
    invoke-virtual {v6}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget-object v8, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1189
    invoke-virtual {v8}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v8

    .line 1187
    invoke-virtual {v4, v5, v6, v8}, Ljava/util/Calendar;->set(III)V

    .line 1191
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1194
    .local v5, "startTimeMills":J
    iget-object v8, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v8}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v8

    iget-object v9, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1195
    invoke-virtual {v9}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v9

    sub-int/2addr v9, v7

    iget-object v10, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 1196
    invoke-virtual {v10}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v10

    .line 1194
    invoke-virtual {v4, v8, v9, v10}, Ljava/util/Calendar;->set(III)V

    .line 1197
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1198
    .local v8, "endTimeMills":J
    move-wide v10, v5

    .local v10, "start":J
    :goto_0
    cmp-long v12, v10, v8

    if-gtz v12, :cond_3

    .line 1199
    invoke-virtual {v4, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1200
    new-instance v12, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v12}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 1201
    .local v12, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 1202
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v12, v13}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 1203
    const/4 v13, 0x5

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 1204
    invoke-static {v12}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 1205
    invoke-virtual {p0, v12}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    .line 1206
    iget-object v13, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 1207
    invoke-interface {v13, v12}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1208
    goto :goto_1

    .line 1211
    :cond_2
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    .end local v12    # "calendar":Lcom/haibin/calendarview/Calendar;
    :goto_1
    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    goto :goto_0

    .line 1213
    .end local v10    # "start":J
    :cond_3
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->addSchemesFromMap(Ljava/util/List;)V

    .line 1214
    return-object v0

    .line 1182
    .end local v2    # "ONE_DAY":J
    .end local v4    # "date":Ljava/util/Calendar;
    .end local v5    # "startTimeMills":J
    .end local v8    # "endTimeMills":J
    :cond_4
    :goto_2
    return-object v0
.end method

.method getSelectMode()I
    .locals 1

    .line 937
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectMode:I

    return v0
.end method

.method getSelectedLunarTextColor()I
    .locals 1

    .line 666
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedLunarTextColor:I

    return v0
.end method

.method getSelectedTextColor()I
    .locals 1

    .line 662
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedTextColor:I

    return v0
.end method

.method getSelectedThemeColor()I
    .locals 1

    .line 686
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedThemeColor:I

    return v0
.end method

.method getWeekBackground()I
    .locals 1

    .line 690
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBackground:I

    return v0
.end method

.method getWeekBarClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClass:Ljava/lang/Class;

    return-object v0
.end method

.method getWeekBarHeight()I
    .locals 1

    .line 726
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarHeight:I

    return v0
.end method

.method getWeekLineBackground()I
    .locals 1

    .line 698
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekLineBackground:I

    return v0
.end method

.method getWeekLineMargin()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekLineMargin:I

    return v0
.end method

.method getWeekStart()I
    .locals 1

    .line 912
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekStart:I

    return v0
.end method

.method getWeekTextColor()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekTextColor:I

    return v0
.end method

.method getWeekTextSize()I
    .locals 1

    .line 928
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekTextSize:I

    return v0
.end method

.method getWeekViewClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClass:Ljava/lang/Class;

    return-object v0
.end method

.method getYearViewBackground()I
    .locals 1

    .line 694
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewBackground:I

    return v0
.end method

.method getYearViewClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClass:Ljava/lang/Class;

    return-object v0
.end method

.method getYearViewClassPath()Ljava/lang/String;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewClassPath:Ljava/lang/String;

    return-object v0
.end method

.method getYearViewCurDayTextColor()I
    .locals 1

    .line 783
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewCurDayTextColor:I

    return v0
.end method

.method getYearViewDayTextColor()I
    .locals 1

    .line 825
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextColor:I

    return v0
.end method

.method getYearViewDayTextSize()I
    .locals 1

    .line 829
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextSize:I

    return v0
.end method

.method getYearViewMonthHeight()I
    .locals 1

    .line 821
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthHeight:I

    return v0
.end method

.method getYearViewMonthPaddingBottom()I
    .locals 1

    .line 813
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthPaddingBottom:I

    return v0
.end method

.method getYearViewMonthPaddingLeft()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthPaddingLeft:I

    return v0
.end method

.method getYearViewMonthPaddingRight()I
    .locals 1

    .line 805
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthPaddingRight:I

    return v0
.end method

.method getYearViewMonthPaddingTop()I
    .locals 1

    .line 809
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthPaddingTop:I

    return v0
.end method

.method getYearViewMonthTextColor()I
    .locals 1

    .line 767
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextColor:I

    return v0
.end method

.method getYearViewMonthTextSize()I
    .locals 1

    .line 763
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextSize:I

    return v0
.end method

.method getYearViewPadding()I
    .locals 1

    .line 788
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPadding:I

    return v0
.end method

.method getYearViewPaddingLeft()I
    .locals 1

    .line 792
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPaddingLeft:I

    return v0
.end method

.method getYearViewPaddingRight()I
    .locals 1

    .line 796
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewPaddingRight:I

    return v0
.end method

.method getYearViewSchemeTextColor()I
    .locals 1

    .line 833
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSchemeTextColor:I

    return v0
.end method

.method getYearViewSelectTextColor()I
    .locals 1

    .line 779
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSelectTextColor:I

    return v0
.end method

.method getYearViewWeekHeight()I
    .locals 1

    .line 817
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekHeight:I

    return v0
.end method

.method getYearViewWeekTextColor()I
    .locals 1

    .line 775
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekTextColor:I

    return v0
.end method

.method getYearViewWeekTextSize()I
    .locals 1

    .line 771
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewWeekTextSize:I

    return v0
.end method

.method isFullScreenCalendar()Z
    .locals 1

    .line 1055
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->isFullScreenCalendar:Z

    return v0
.end method

.method isMonthViewScrollable()Z
    .locals 1

    .line 888
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewScrollable:Z

    return v0
.end method

.method isPreventLongPressedSelected()Z
    .locals 1

    .line 1039
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->preventLongPressedSelected:Z

    return v0
.end method

.method isWeekViewScrollable()Z
    .locals 1

    .line 892
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewScrollable:Z

    return v0
.end method

.method isYearViewScrollable()Z
    .locals 1

    .line 896
    iget-boolean v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewScrollable:Z

    return v0
.end method

.method setCalendarItemHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 750
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarItemHeight:I

    .line 751
    return-void
.end method

.method setCalendarPadding(I)V
    .locals 0
    .param p1, "mCalendarPadding"    # I

    .line 1001
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPadding:I

    .line 1002
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingLeft:I

    .line 1003
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingRight:I

    .line 1004
    return-void
.end method

.method setCalendarPaddingLeft(I)V
    .locals 0
    .param p1, "mCalendarPaddingLeft"    # I

    .line 1011
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingLeft:I

    .line 1012
    return-void
.end method

.method setCalendarPaddingRight(I)V
    .locals 0
    .param p1, "mCalendarPaddingRight"    # I

    .line 1019
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarPaddingRight:I

    .line 1020
    return-void
.end method

.method setCurDayLunarTextColor(I)V
    .locals 0
    .param p1, "curDayLunarTextColor"    # I

    .line 884
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayLunarTextColor:I

    .line 885
    return-void
.end method

.method setDefaultCalendarSelectDay(I)V
    .locals 0
    .param p1, "defaultCalendarSelect"    # I

    .line 920
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mDefaultCalendarSelectDay:I

    .line 921
    return-void
.end method

.method setFestivalTextColor(I)V
    .locals 0
    .param p1, "curMonthLunarFestivalTextColor"    # I

    .line 857
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurMonthLunarFestivalTextColor:I

    .line 858
    return-void
.end method

.method setMaxMultiSelectSize(I)V
    .locals 0
    .param p1, "maxMultiSelectSize"    # I

    .line 962
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxMultiSelectSize:I

    .line 963
    return-void
.end method

.method setMonthViewClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1027
    .local p1, "monthViewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewClass:Ljava/lang/Class;

    .line 1028
    return-void
.end method

.method setMonthViewScrollable(Z)V
    .locals 0
    .param p1, "monthViewScrollable"    # Z

    .line 900
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewScrollable:Z

    .line 901
    return-void
.end method

.method setMonthViewShowMode(I)V
    .locals 0
    .param p1, "monthViewShowMode"    # I

    .line 845
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthViewShowMode:I

    .line 846
    return-void
.end method

.method setPositionOffsetPixels(I)V
    .locals 0
    .param p1, "px"    # I

    .line 841
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mPositionOffsetPixels:I

    .line 842
    return-void
.end method

.method setPreventLongPressedSelected(Z)V
    .locals 0
    .param p1, "preventLongPressedSelected"    # Z

    .line 1023
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->preventLongPressedSelected:Z

    .line 1024
    return-void
.end method

.method setRange(IIIIII)V
    .locals 3
    .param p1, "minYear"    # I
    .param p2, "minYearMonth"    # I
    .param p3, "minYearDay"    # I
    .param p4, "maxYear"    # I
    .param p5, "maxYearMonth"    # I
    .param p6, "maxYearDay"    # I

    .line 611
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    .line 612
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    .line 613
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearDay:I

    .line 614
    iput p4, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    .line 615
    iput p5, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    .line 616
    iput p6, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    .line 620
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 621
    iget v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYear:I

    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearMonth:I

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxYearDay:I

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYear:I

    sub-int/2addr v0, v1

    .line 624
    .local v0, "y":I
    const/16 v1, 0xc

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinYearMonth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthViewItem:I

    .line 625
    return-void
.end method

.method setSchemeColor(III)V
    .locals 0
    .param p1, "schemeColor"    # I
    .param p2, "schemeTextColor"    # I
    .param p3, "schemeLunarTextColor"    # I

    .line 861
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    .line 862
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeTextColor:I

    .line 863
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeLunarTextColor:I

    .line 864
    return-void
.end method

.method setSelectColor(III)V
    .locals 0
    .param p1, "selectedColor"    # I
    .param p2, "selectedTextColor"    # I
    .param p3, "selectedLunarTextColor"    # I

    .line 873
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedThemeColor:I

    .line 874
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedTextColor:I

    .line 875
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedLunarTextColor:I

    .line 876
    return-void
.end method

.method setSelectMode(I)V
    .locals 0
    .param p1, "mSelectMode"    # I

    .line 946
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectMode:I

    .line 947
    return-void
.end method

.method final setSelectRange(II)V
    .locals 1
    .param p1, "minRange"    # I
    .param p2, "maxRange"    # I

    .line 966
    if-le p1, p2, :cond_0

    if-lez p2, :cond_0

    .line 967
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    .line 968
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    .line 969
    return-void

    .line 971
    :cond_0
    const/4 v0, -0x1

    if-gtz p1, :cond_1

    .line 972
    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    goto :goto_0

    .line 974
    :cond_1
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMinSelectRange:I

    .line 976
    :goto_0
    if-gtz p2, :cond_2

    .line 977
    iput v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    goto :goto_1

    .line 979
    :cond_2
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mMaxSelectRange:I

    .line 981
    :goto_1
    return-void
.end method

.method setTextColor(IIIII)V
    .locals 0
    .param p1, "curDayTextColor"    # I
    .param p2, "curMonthTextColor"    # I
    .param p3, "otherMonthTextColor"    # I
    .param p4, "curMonthLunarTextColor"    # I
    .param p5, "otherMonthLunarTextColor"    # I

    .line 849
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurDayTextColor:I

    .line 850
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthTextColor:I

    .line 851
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthTextColor:I

    .line 852
    iput p4, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurMonthLunarTextColor:I

    .line 853
    iput p5, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mOtherMonthLunarTextColor:I

    .line 854
    return-void
.end method

.method setThemeColor(II)V
    .locals 0
    .param p1, "selectedThemeColor"    # I
    .param p2, "schemeColor"    # I

    .line 879
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedThemeColor:I

    .line 880
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeThemeColor:I

    .line 881
    return-void
.end method

.method setWeekBarClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1031
    .local p1, "weekBarClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekBarClass:Ljava/lang/Class;

    .line 1032
    return-void
.end method

.method setWeekStart(I)V
    .locals 0
    .param p1, "mWeekStart"    # I

    .line 916
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekStart:I

    .line 917
    return-void
.end method

.method setWeekViewClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1035
    .local p1, "weekViewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewClass:Ljava/lang/Class;

    .line 1036
    return-void
.end method

.method setWeekViewScrollable(Z)V
    .locals 0
    .param p1, "weekViewScrollable"    # Z

    .line 904
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekViewScrollable:Z

    .line 905
    return-void
.end method

.method setYearViewScrollable(Z)V
    .locals 0
    .param p1, "yearViewScrollable"    # Z

    .line 908
    iput-boolean p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewScrollable:Z

    .line 909
    return-void
.end method

.method setYearViewTextColor(III)V
    .locals 0
    .param p1, "yearViewMonthTextColor"    # I
    .param p2, "yearViewDayTextColor"    # I
    .param p3, "yarViewSchemeTextColor"    # I

    .line 867
    iput p1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewMonthTextColor:I

    .line 868
    iput p2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewDayTextColor:I

    .line 869
    iput p3, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewSchemeTextColor:I

    .line 870
    return-void
.end method

.method final updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V
    .locals 3
    .param p1, "targetCalendar"    # Lcom/haibin/calendarview/Calendar;

    .line 1071
    if-nez p1, :cond_0

    .line 1072
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1077
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1079
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 1080
    .local v1, "d":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/haibin/calendarview/Calendar;->mergeScheme(Lcom/haibin/calendarview/Calendar;Ljava/lang/String;)V

    .line 1082
    .end local v1    # "d":Lcom/haibin/calendarview/Calendar;
    :cond_2
    return-void

    .line 1075
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method updateCurrentDay()V
    .locals 3

    .line 988
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 989
    .local v0, "d":Ljava/util/Date;
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "yyyy"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 990
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "MM"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 991
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    const-string v2, "dd"

    invoke-static {v2, v0}, Lcom/haibin/calendarview/CalendarUtil;->getDate(Ljava/lang/String;Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 992
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentDate:Lcom/haibin/calendarview/Calendar;

    invoke-static {v1}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 993
    return-void
.end method

.method final updateSelectCalendarScheme()V
    .locals 4

    .line 1059
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 1063
    .local v1, "d":Lcom/haibin/calendarview/Calendar;
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/haibin/calendarview/Calendar;->mergeScheme(Lcom/haibin/calendarview/Calendar;Ljava/lang/String;)V

    .line 1065
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "d":Lcom/haibin/calendarview/Calendar;
    :cond_0
    goto :goto_0

    .line 1066
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/CalendarViewDelegate;->clearSelectedScheme()V

    .line 1068
    :goto_0
    return-void
.end method
