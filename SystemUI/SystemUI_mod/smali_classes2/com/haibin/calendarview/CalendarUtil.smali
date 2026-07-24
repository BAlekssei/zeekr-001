.class public final Lcom/haibin/calendarview/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# static fields
.field private static final ONE_DAY:J = 0x5265c00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTo(IIIIII)I
    .locals 3
    .param p0, "minYear"    # I
    .param p1, "minYearMonth"    # I
    .param p2, "minYearDay"    # I
    .param p3, "maxYear"    # I
    .param p4, "maxYearMonth"    # I
    .param p5, "maxYearDay"    # I

    .line 522
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 523
    .local v0, "first":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 524
    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 525
    invoke-virtual {v0, p2}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 527
    new-instance v1, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v1}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 528
    .local v1, "second":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v1, p3}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 529
    invoke-virtual {v1, p4}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 530
    invoke-virtual {v1, p5}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 531
    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v2

    return v2
.end method

.method public static differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I
    .locals 10
    .param p0, "calendar1"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "calendar2"    # Lcom/haibin/calendarview/Calendar;

    .line 490
    if-nez p0, :cond_0

    .line 491
    const/high16 v0, -0x80000000

    return v0

    .line 493
    :cond_0
    if-nez p1, :cond_1

    .line 494
    const v0, 0x7fffffff

    return v0

    .line 496
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 498
    .local v0, "date":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v4

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 500
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 502
    .local v8, "startTimeMills":J
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v4

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 504
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 506
    .local v1, "endTimeMills":J
    sub-long v3, v8, v1

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-int v3, v3

    return v3
.end method

.method static dipToPx(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 812
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 813
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method static getDate(Ljava/lang/String;Ljava/util/Date;)I
    .locals 2
    .param p0, "formatStr"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static getFirstCalendarFromMonthViewPager(ILcom/haibin/calendarview/CalendarViewDelegate;)Lcom/haibin/calendarview/Calendar;
    .locals 5
    .param p0, "position"    # I
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 741
    new-instance v0, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v0}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 742
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    add-int/2addr v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xc

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 743
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    add-int/2addr v1, p0

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 744
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDefaultCalendarSelectDay()I

    move-result v1

    if-eqz v1, :cond_3

    .line 745
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    invoke-static {v1, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v1

    .line 746
    .local v1, "monthDays":I
    iget-object v3, p1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 747
    .local v3, "indexCalendar":Lcom/haibin/calendarview/Calendar;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 747
    move v4, v1

    goto :goto_1

    .line 748
    :cond_1
    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v4

    goto :goto_1

    .line 747
    :cond_2
    :goto_0
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 749
    .end local v1    # "monthDays":I
    .end local v3    # "indexCalendar":Lcom/haibin/calendarview/Calendar;
    goto :goto_2

    .line 750
    :cond_3
    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 752
    :goto_2
    invoke-static {v0, p1}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 753
    invoke-static {v0, p1}, Lcom/haibin/calendarview/CalendarUtil;->isMinRangeEdge(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 754
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    goto :goto_3

    .line 756
    :cond_4
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 759
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v3

    if-ne v1, v3, :cond_6

    .line 760
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    if-ne v1, v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 759
    :goto_4
    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentMonth(Z)V

    .line 761
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 762
    invoke-static {v0}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 763
    return-object v0
.end method

.method public static getFirstCalendarStartWithMinCalendar(IIIII)Lcom/haibin/calendarview/Calendar;
    .locals 16
    .param p0, "minYear"    # I
    .param p1, "minYearMonth"    # I
    .param p2, "minYearDay"    # I
    .param p3, "week"    # I
    .param p4, "weekStart"    # I

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 424
    .local v6, "date":Ljava/util/Calendar;
    add-int/lit8 v2, p1, -0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v1, p0

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 426
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 429
    .local v0, "firstTimeMills":J
    add-int/lit8 v3, p3, -0x1

    mul-int/lit8 v3, v3, 0x7

    int-to-long v3, v3

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v3, v7

    .line 431
    .local v3, "weekTimeMills":J
    add-long v9, v3, v0

    .line 433
    .local v9, "timeCountMills":J
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 435
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 436
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v13, v5

    .line 437
    const/4 v14, 0x5

    invoke-virtual {v6, v14}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 435
    move/from16 v14, p4

    invoke-static {v11, v13, v12, v14}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result v11

    .line 439
    .local v11, "startDiff":I
    int-to-long v12, v11

    mul-long/2addr v12, v7

    sub-long/2addr v9, v12

    .line 440
    invoke-virtual {v6, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 442
    new-instance v7, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v7}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 443
    .local v7, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 444
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v7, v8}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 445
    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 447
    return-object v7
.end method

.method public static getMonthDaysCount(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "count":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 63
    :cond_0
    const/16 v0, 0x1f

    .line 67
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    .line 68
    :cond_2
    const/16 v0, 0x1e

    .line 72
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 73
    invoke-static {p0}, Lcom/haibin/calendarview/CalendarUtil;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    const/16 v0, 0x1d

    goto :goto_0

    .line 76
    :cond_4
    const/16 v0, 0x1c

    .line 79
    :cond_5
    :goto_0
    return v0
.end method

.method static getMonthEndDiff(III)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "weekStart"    # I

    .line 255
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(IIII)I

    move-result v0

    return v0
.end method

.method private static getMonthEndDiff(IIII)I
    .locals 5
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "weekStart"    # I

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 271
    .local v0, "date":Ljava/util/Calendar;
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p0, v1, p2}, Ljava/util/Calendar;->set(III)V

    .line 272
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 273
    .local v2, "week":I
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 274
    sub-int/2addr v1, v2

    return v1

    .line 276
    :cond_0
    const/4 v4, 0x2

    if-ne p3, v4, :cond_2

    .line 277
    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    :goto_0
    return v1

    .line 279
    :cond_2
    if-ne v2, v1, :cond_3

    const/4 v1, 0x6

    goto :goto_1

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    :goto_1
    return v1
.end method

.method public static getMonthViewHeight(IIII)I
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "itemHeight"    # I
    .param p3, "weekStartWith"    # I

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 116
    .local v7, "date":Ljava/util/Calendar;
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 117
    invoke-static {p0, p1, p3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v0

    .line 118
    .local v0, "preDiff":I
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v1

    .line 119
    .local v1, "monthDaysCount":I
    invoke-static {p0, p1, v1, p3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(IIII)I

    move-result v2

    .line 120
    .local v2, "nextDiff":I
    add-int v3, v0, v1

    add-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x7

    mul-int/2addr v3, p2

    return v3
.end method

.method public static getMonthViewHeight(IIIII)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "itemHeight"    # I
    .param p3, "weekStartWith"    # I
    .param p4, "mode"    # I

    .line 135
    if-nez p4, :cond_0

    .line 136
    mul-int/lit8 v0, p2, 0x6

    return v0

    .line 138
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIII)I

    move-result v0

    return v0
.end method

.method public static getMonthViewLineCount(IIII)I
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "weekStartWith"    # I
    .param p3, "mode"    # I

    .line 95
    if-nez p3, :cond_0

    .line 96
    const/4 v0, 0x6

    return v0

    .line 98
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(III)I

    move-result v0

    .line 99
    .local v0, "nextDiff":I
    invoke-static {p0, p1, p2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v1

    .line 100
    .local v1, "preDiff":I
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v2

    .line 101
    .local v2, "monthDayCount":I
    add-int v3, v1, v2

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x7

    return v3
.end method

.method static getMonthViewStartDiff(III)I
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "weekStart"    # I

    .line 231
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 232
    .local v7, "date":Ljava/util/Calendar;
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 233
    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 234
    .local v1, "week":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 235
    add-int/lit8 v0, v1, -0x1

    return v0

    .line 237
    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 238
    if-ne v1, v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    sub-int v0, v1, p2

    :goto_0
    return v0

    .line 240
    :cond_2
    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method static getMonthViewStartDiff(Lcom/haibin/calendarview/Calendar;I)I
    .locals 9
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "weekStart"    # I

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 208
    .local v7, "date":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    const/4 v8, 0x1

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 209
    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 210
    .local v1, "week":I
    if-ne p1, v8, :cond_0

    .line 211
    add-int/lit8 v0, v1, -0x1

    return v0

    .line 213
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 214
    if-ne v1, v8, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    sub-int v0, v1, p1

    :goto_0
    return v0

    .line 216
    :cond_2
    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public static getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;
    .locals 9
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 183
    .local v7, "date":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    const/4 v8, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 185
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 187
    .local v0, "timeMills":J
    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 189
    new-instance v2, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v2}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 190
    .local v2, "nextCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 191
    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 192
    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 194
    return-object v2
.end method

.method public static getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;
    .locals 9
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 166
    .local v7, "date":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    const/4 v8, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 168
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 170
    .local v0, "timeMills":J
    const-wide/32 v2, 0x5265c00

    sub-long v2, v0, v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 172
    new-instance v2, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v2}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 173
    .local v2, "preCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 174
    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 175
    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 177
    return-object v2
.end method

.method static getRangeEdgeCalendar(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Lcom/haibin/calendarview/Calendar;
    .locals 2
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 775
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDefaultCalendarSelectDay()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 777
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->createCurrentDate()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    return-object v0

    .line 779
    :cond_0
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    return-object p0

    .line 782
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 783
    .local v0, "minRangeCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v0, p0}, Lcom/haibin/calendarview/Calendar;->isSameMonth(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    return-object v1

    .line 786
    :cond_2
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxRangeCalendar()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    return-object v1
.end method

.method static getWeekCalendars(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Ljava/util/List;
    .locals 12
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "mDelegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haibin/calendarview/Calendar;",
            "Lcom/haibin/calendarview/CalendarViewDelegate;",
            ")",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 609
    .local v0, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 610
    .local v8, "date":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v3

    .line 611
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    const/4 v9, 0x1

    add-int/lit8 v4, v2, -0x1

    .line 612
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v5

    .line 610
    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Calendar;->set(IIIII)V

    .line 613
    const/4 v2, 0x7

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 615
    .local v3, "week":I
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v9, :cond_0

    .line 616
    add-int/lit8 v2, v3, -0x1

    .local v2, "startDiff":I
    :goto_0
    goto :goto_2

    .line 617
    .end local v2    # "startDiff":I
    :cond_0
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 618
    if-ne v3, v9, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    sub-int v2, v3, v2

    :goto_1
    goto :goto_0

    .line 620
    :cond_2
    if-ne v3, v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move v2, v3

    .line 623
    .restart local v2    # "startDiff":I
    :goto_2
    int-to-long v6, v2

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v6, v10

    sub-long/2addr v0, v6

    .line 624
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 625
    .local v4, "minCalendar":Ljava/util/Calendar;
    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 626
    new-instance v6, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v6}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 627
    .local v6, "startCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 628
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v9

    invoke-virtual {v6, v5}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 629
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 630
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    invoke-static {v6, p1, v5}, Lcom/haibin/calendarview/CalendarUtil;->initCalendarForWeekView(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;I)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public static getWeekCountBetweenBothCalendar(IIIIIII)I
    .locals 19
    .param p0, "minYear"    # I
    .param p1, "minYearMonth"    # I
    .param p2, "minYearDay"    # I
    .param p3, "maxYear"    # I
    .param p4, "maxYearMonth"    # I
    .param p5, "maxYearDay"    # I
    .param p6, "weekStart"    # I

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 352
    .local v3, "date":Ljava/util/Calendar;
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v0, v4, v2}, Ljava/util/Calendar;->set(III)V

    .line 353
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 354
    .local v4, "minTimeMills":J
    move/from16 v6, p6

    invoke-static {v0, v1, v2, v6}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result v7

    .line 356
    .local v7, "preDiff":I
    add-int/lit8 v8, p4, -0x1

    move/from16 v9, p3

    move/from16 v10, p5

    invoke-virtual {v3, v9, v8, v10}, Ljava/util/Calendar;->set(III)V

    .line 358
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 360
    .local v11, "maxTimeMills":J
    invoke-static/range {p3 .. p6}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewEndDiff(IIII)I

    move-result v8

    .line 362
    .local v8, "nextDiff":I
    add-int v13, v7, v8

    .line 364
    .local v13, "count":I
    sub-long v14, v11, v4

    const-wide/32 v16, 0x5265c00

    div-long v0, v14, v16

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 365
    .local v0, "c":I
    add-int/2addr v13, v0

    .line 366
    div-int/lit8 v1, v13, 0x7

    return v1
.end method

.method static getWeekFormCalendar(Lcom/haibin/calendarview/Calendar;)I
    .locals 4
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 290
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 291
    .local v0, "date":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 292
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public static getWeekFromCalendarStartWithMinCalendar(Lcom/haibin/calendarview/Calendar;IIII)I
    .locals 11
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "minYear"    # I
    .param p2, "minYearMonth"    # I
    .param p3, "minYearDay"    # I
    .param p4, "weekStart"    # I

    .line 385
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 386
    .local v0, "date":Ljava/util/Calendar;
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, p1, v1, p3}, Ljava/util/Calendar;->set(III)V

    .line 387
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 389
    .local v1, "firstTimeMill":J
    invoke-static {p1, p2, p3, p4}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result v3

    .line 391
    .local v3, "preDiff":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v4

    .line 392
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v5

    .line 393
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v6

    .line 391
    invoke-static {v4, v5, v6, p4}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result v4

    .line 396
    .local v4, "weekStartDiff":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v5

    .line 397
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 398
    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v7

    .line 396
    :goto_0
    invoke-virtual {v0, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 400
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 402
    .local v5, "curTimeMills":J
    sub-long v7, v5, v1

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    long-to-int v7, v7

    .line 404
    .local v7, "c":I
    add-int v8, v3, v7

    .line 406
    .local v8, "count":I
    div-int/lit8 v9, v8, 0x7

    add-int/lit8 v9, v9, 0x1

    return v9
.end method

.method public static getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I
    .locals 8
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "weekStart"    # I

    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 151
    .local v7, "date":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 153
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(Lcom/haibin/calendarview/Calendar;I)I

    move-result v0

    .line 154
    .local v0, "diff":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static getWeekViewEndDiff(IIII)I
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "weekStart"    # I

    .line 719
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 720
    .local v6, "date":Ljava/util/Calendar;
    add-int/lit8 v2, p1, -0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 721
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 722
    .local v1, "week":I
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 723
    sub-int/2addr v0, v1

    return v0

    .line 725
    :cond_0
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 726
    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    :goto_0
    return v0

    .line 728
    :cond_2
    if-ne v1, v0, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    :goto_1
    return v0
.end method

.method static getWeekViewIndexFromCalendar(Lcom/haibin/calendarview/Calendar;I)I
    .locals 3
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "weekStart"    # I

    .line 305
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekViewStartDiff(IIII)I

    move-result v0

    return v0
.end method

.method private static getWeekViewStartDiff(IIII)I
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "weekStart"    # I

    .line 693
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 694
    .local v6, "date":Ljava/util/Calendar;
    add-int/lit8 v2, p1, -0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 695
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 696
    .local v1, "week":I
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 697
    add-int/lit8 v0, v1, -0x1

    return v0

    .line 699
    :cond_0
    const/4 v3, 0x2

    if-ne p3, v3, :cond_2

    .line 700
    if-ne v1, v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    sub-int v0, v1, p3

    :goto_0
    return v0

    .line 702
    :cond_2
    if-ne v1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method static initCalendarForMonthView(IILcom/haibin/calendarview/Calendar;I)Ljava/util/List;
    .locals 20
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "currentDate"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "weekStar"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/haibin/calendarview/Calendar;",
            "I)",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    .line 544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 546
    .local v2, "date":Ljava/util/Calendar;
    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 548
    move/from16 v3, p3

    invoke-static {v0, v1, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v5

    .line 550
    .local v5, "mPreDiff":I
    invoke-static/range {p0 .. p1}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v6

    .line 555
    .local v6, "monthDayCount":I
    const/16 v7, 0x2a

    .line 557
    .local v7, "size":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v8, "mItems":Ljava/util/List;, "Ljava/util/List<Lcom/haibin/calendarview/Calendar;>;"
    const/4 v9, 0x0

    if-ne v1, v4, :cond_1

    .line 561
    add-int/lit8 v10, v0, -0x1

    .line 562
    .local v10, "preYear":I
    const/16 v11, 0xc

    .line 563
    .local v11, "preMonth":I
    move v12, v0

    .line 564
    .local v12, "nextYear":I
    add-int/lit8 v13, v1, 0x1

    .line 565
    .local v13, "nextMonth":I
    if-nez v5, :cond_0

    move v14, v9

    goto :goto_0

    :cond_0
    invoke-static {v10, v11}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v14

    .local v14, "preMonthDaysCount":I
    :goto_0
    goto :goto_2

    .line 566
    .end local v10    # "preYear":I
    .end local v11    # "preMonth":I
    .end local v12    # "nextYear":I
    .end local v13    # "nextMonth":I
    .end local v14    # "preMonthDaysCount":I
    :cond_1
    const/16 v10, 0xc

    if-ne v1, v10, :cond_3

    .line 567
    move v10, v0

    .line 568
    .restart local v10    # "preYear":I
    add-int/lit8 v11, v1, -0x1

    .line 569
    .restart local v11    # "preMonth":I
    add-int/lit8 v12, v0, 0x1

    .line 570
    .restart local v12    # "nextYear":I
    const/4 v13, 0x1

    .line 571
    .restart local v13    # "nextMonth":I
    if-nez v5, :cond_2

    move v14, v9

    goto :goto_1

    :cond_2
    invoke-static {v10, v11}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v14

    :goto_1
    goto :goto_0

    .line 573
    .end local v10    # "preYear":I
    .end local v11    # "preMonth":I
    .end local v12    # "nextYear":I
    .end local v13    # "nextMonth":I
    :cond_3
    move v10, v0

    .line 574
    .restart local v10    # "preYear":I
    add-int/lit8 v11, v1, -0x1

    .line 575
    .restart local v11    # "preMonth":I
    move v12, v0

    .line 576
    .restart local v12    # "nextYear":I
    add-int/lit8 v13, v1, 0x1

    .line 577
    .restart local v13    # "nextMonth":I
    if-nez v5, :cond_4

    move v14, v9

    goto :goto_2

    :cond_4
    invoke-static {v10, v11}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v14

    .line 579
    .restart local v14    # "preMonthDaysCount":I
    :goto_2
    const/4 v15, 0x1

    .line 580
    .local v15, "nextDay":I
    nop

    .local v9, "i":I
    :goto_3
    if-ge v9, v7, :cond_8

    .line 581
    new-instance v4, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v4}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 582
    .local v4, "calendarDate":Lcom/haibin/calendarview/Calendar;
    if-ge v9, v5, :cond_5

    .line 583
    invoke-virtual {v4, v10}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 584
    invoke-virtual {v4, v11}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 585
    sub-int v17, v14, v5

    add-int v17, v17, v9

    move-object/from16 v18, v2

    const/16 v16, 0x1

    add-int/lit8 v2, v17, 0x1

    .end local v2    # "date":Ljava/util/Calendar;
    .local v18, "date":Ljava/util/Calendar;
    invoke-virtual {v4, v2}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    goto :goto_4

    .line 586
    .end local v18    # "date":Ljava/util/Calendar;
    .restart local v2    # "date":Ljava/util/Calendar;
    :cond_5
    move-object/from16 v18, v2

    .end local v2    # "date":Ljava/util/Calendar;
    .restart local v18    # "date":Ljava/util/Calendar;
    add-int v2, v6, v5

    if-lt v9, v2, :cond_6

    .line 587
    invoke-virtual {v4, v12}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 588
    invoke-virtual {v4, v13}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 589
    invoke-virtual {v4, v15}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 590
    add-int/lit8 v15, v15, 0x1

    .line 597
    :goto_4
    const/4 v2, 0x1

    goto :goto_5

    .line 592
    :cond_6
    invoke-virtual {v4, v0}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 593
    invoke-virtual {v4, v1}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 594
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentMonth(Z)V

    .line 595
    sub-int v16, v9, v5

    add-int/lit8 v0, v16, 0x1

    invoke-virtual {v4, v0}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 597
    :goto_5
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 598
    invoke-virtual {v4, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 600
    :cond_7
    invoke-static {v4}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 601
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    .end local v4    # "calendarDate":Lcom/haibin/calendarview/Calendar;
    add-int/lit8 v9, v9, 0x1

    move v4, v2

    move-object/from16 v2, v18

    move/from16 v0, p0

    goto :goto_3

    .line 603
    .end local v9    # "i":I
    .end local v18    # "date":Ljava/util/Calendar;
    .restart local v2    # "date":Ljava/util/Calendar;
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v18, v2

    .end local v2    # "date":Ljava/util/Calendar;
    .restart local v18    # "date":Ljava/util/Calendar;
    return-object v8
.end method

.method static initCalendarForWeekView(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;I)Ljava/util/List;
    .locals 12
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "mDelegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;
    .param p2, "weekStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haibin/calendarview/Calendar;",
            "Lcom/haibin/calendarview/CalendarViewDelegate;",
            "I)",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation

    .line 644
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 645
    .local v6, "date":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    const/4 v7, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 646
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 650
    .local v0, "curDateMills":J
    const/4 v2, 0x6

    .line 651
    .local v2, "weekEndDiff":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v3, "mItems":Ljava/util/List;, "Ljava/util/List<Lcom/haibin/calendarview/Calendar;>;"
    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 654
    new-instance v4, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v4}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 655
    .local v4, "selectCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 656
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 657
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 658
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 659
    invoke-virtual {v4, v7}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 661
    :cond_0
    invoke-static {v4}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 662
    invoke-virtual {v4, v7}, Lcom/haibin/calendarview/Calendar;->setCurrentMonth(Z)V

    .line 663
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    move v5, v7

    .local v5, "i":I
    :goto_0
    if-gt v5, v2, :cond_2

    .line 667
    int-to-long v8, v5

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    add-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 668
    new-instance v8, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v8}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 669
    .local v8, "calendarDate":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 670
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v8, v9}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 671
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 672
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 673
    invoke-virtual {v8, v7}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 675
    :cond_1
    invoke-static {v8}, Lcom/haibin/calendarview/LunarCalendar;->setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 676
    invoke-virtual {v8, v7}, Lcom/haibin/calendarview/Calendar;->setCurrentMonth(Z)V

    .line 677
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    .end local v8    # "calendarDate":Lcom/haibin/calendarview/Calendar;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 679
    .end local v5    # "i":I
    :cond_2
    return-object v3
.end method

.method static isCalendarInRange(Lcom/haibin/calendarview/Calendar;IIIIII)Z
    .locals 9
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "minYear"    # I
    .param p2, "minYearMonth"    # I
    .param p3, "minYearDay"    # I
    .param p4, "maxYear"    # I
    .param p5, "maxYearMonth"    # I
    .param p6, "maxYearDay"    # I

    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 325
    .local v0, "c":Ljava/util/Calendar;
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, p1, v1, p3}, Ljava/util/Calendar;->set(III)V

    .line 326
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 327
    .local v1, "minTime":J
    add-int/lit8 v3, p5, -0x1

    invoke-virtual {v0, p4, v3, p6}, Ljava/util/Calendar;->set(III)V

    .line 328
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 329
    .local v3, "maxTime":J
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v8

    invoke-virtual {v0, v5, v6, v8}, Ljava/util/Calendar;->set(III)V

    .line 330
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 331
    .local v5, "curTime":J
    cmp-long v8, v5, v1

    if-ltz v8, :cond_0

    cmp-long v8, v5, v3

    if-gtz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7
.end method

.method static isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z
    .locals 7
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 459
    nop

    .line 460
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v3

    .line 461
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v4

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v5

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearDay()I

    move-result v6

    .line 459
    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;IIIIII)Z

    move-result v0

    return v0
.end method

.method public static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .line 90
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMinRangeEdge(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z
    .locals 10
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 796
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 797
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v0

    const/4 v7, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 798
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 799
    .local v8, "minTime":J
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v3

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 800
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 801
    .local v0, "curTime":J
    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7
.end method

.method static isMonthInRange(IIIIII)Z
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "minYear"    # I
    .param p3, "minYearMonth"    # I
    .param p4, "maxYear"    # I
    .param p5, "maxYearMonth"    # I

    .line 476
    if-lt p0, p2, :cond_2

    if-gt p0, p4, :cond_2

    if-ne p0, p2, :cond_0

    if-lt p1, p3, :cond_2

    :cond_0
    if-ne p0, p4, :cond_1

    if-gt p1, p5, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWeekend(Lcom/haibin/calendarview/Calendar;)Z
    .locals 2
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 47
    invoke-static {p0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFormCalendar(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    .line 48
    .local v0, "week":I
    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
