.class public abstract Lcom/haibin/calendarview/MonthView;
.super Lcom/haibin/calendarview/BaseMonthView;
.source "MonthView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseMonthView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "i"    # I
    .param p4, "j"    # I
    .param p5, "d"    # I

    move-object v7, p0

    .line 80
    iget v0, v7, Lcom/haibin/calendarview/MonthView;->mItemWidth:I

    mul-int v0, v0, p4

    iget-object v1, v7, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    add-int v8, v0, v1

    .line 81
    .local v8, "x":I
    iget v0, v7, Lcom/haibin/calendarview/MonthView;->mItemHeight:I

    mul-int v9, p3, v0

    .line 82
    .local v9, "y":I
    invoke-virtual {v7, v8, v9}, Lcom/haibin/calendarview/MonthView;->onLoopStart(II)V

    .line 83
    iget v0, v7, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    move/from16 v10, p5

    if-ne v10, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    .line 84
    .local v11, "isSelected":Z
    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v12

    .line 86
    .local v12, "hasScheme":Z
    if-eqz v12, :cond_6

    .line 88
    const/4 v6, 0x0

    .line 89
    .local v6, "isDrawSelected":Z
    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_1
    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/MonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z

    move-result v6

    .line 92
    :cond_2
    if-nez v6, :cond_4

    if-nez v11, :cond_3

    goto :goto_1

    .line 97
    .end local v6    # "isDrawSelected":Z
    :cond_3
    move-object v13, p1

    move-object/from16 v5, p2

    goto :goto_3

    .line 94
    .restart local v6    # "isDrawSelected":Z
    :cond_4
    :goto_1
    iget-object v0, v7, Lcom/haibin/calendarview/MonthView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    goto :goto_2

    :cond_5
    iget-object v1, v7, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    move-object v13, p1

    move-object/from16 v5, p2

    invoke-virtual {v7, v13, v5, v8, v9}, Lcom/haibin/calendarview/MonthView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V

    .line 97
    .end local v6    # "isDrawSelected":Z
    :goto_3
    goto :goto_4

    .line 98
    :cond_6
    move-object v13, p1

    move-object/from16 v5, p2

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v13

    move-object v2, v5

    move v3, v8

    move v4, v9

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/MonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z

    .line 102
    :cond_7
    :goto_4
    move-object v0, v7

    move-object v1, v13

    move-object/from16 v2, p2

    move v3, v8

    move v4, v9

    move v5, v12

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/haibin/calendarview/MonthView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V

    .line 103
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 108
    iget-boolean v0, p0, Lcom/haibin/calendarview/MonthView;->isClick:Z

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 113
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v0, :cond_1

    .line 114
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    return-void

    .line 122
    :cond_2
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 124
    return-void

    .line 128
    :cond_3
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 129
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    .line 132
    :cond_4
    return-void

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    .line 137
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v1, :cond_7

    .line 138
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v1

    .line 139
    .local v1, "cur":I
    iget v3, p0, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_6

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v1, 0x1

    .line 140
    .local v3, "position":I
    :goto_0
    iget-object v4, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v4, v3}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 143
    .end local v1    # "cur":I
    .end local v3    # "position":I
    :cond_7
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v1, :cond_8

    .line 144
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 147
    :cond_8
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v1, :cond_a

    .line 148
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 149
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v3, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    goto :goto_1

    .line 151
    :cond_9
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v3, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-static {v0, v3}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 156
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v1, :cond_b

    .line 157
    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 159
    :cond_b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 35
    iget v0, p0, Lcom/haibin/calendarview/MonthView;->mLineCount:I

    if-nez v0, :cond_0

    .line 36
    const-string v0, "MonthView"

    const-string v1, "onDraw: mLineCount == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 40
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 41
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    div-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/MonthView;->mItemWidth:I

    .line 42
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->onPreviewHook()V

    .line 43
    iget v0, p0, Lcom/haibin/calendarview/MonthView;->mLineCount:I

    mul-int/2addr v0, v1

    .line 44
    .local v0, "count":I
    const/4 v2, 0x0

    .line 45
    .local v2, "d":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "d":I
    :goto_0
    iget v5, p0, Lcom/haibin/calendarview/MonthView;->mLineCount:I

    if-ge v2, v5, :cond_5

    .line 46
    move v11, v4

    move v4, v3

    .local v4, "j":I
    .local v11, "d":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 47
    iget-object v5, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/haibin/calendarview/Calendar;

    .line 48
    .local v12, "calendar":Lcom/haibin/calendarview/Calendar;
    iget-object v5, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 49
    iget-object v5, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/haibin/calendarview/MonthView;->mNextDiff:I

    sub-int/2addr v5, v6

    if-le v11, v5, :cond_1

    .line 50
    const-string v1, "MonthView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDraw: MODE_ONLY_CURRENT_MONTH"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 53
    :cond_1
    invoke-virtual {v12}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-nez v5, :cond_3

    .line 54
    add-int/lit8 v11, v11, 0x1

    .line 55
    goto :goto_2

    .line 57
    :cond_2
    iget-object v5, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 58
    if-lt v11, v0, :cond_3

    .line 59
    const-string v1, "MonthView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDraw: MODE_FIT_MONTH"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 63
    :cond_3
    move-object v5, p0

    move-object v6, p1

    move-object v7, v12

    move v8, v2

    move v9, v4

    move v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/haibin/calendarview/MonthView;->draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V

    .line 64
    add-int/lit8 v11, v11, 0x1

    .line 46
    .end local v12    # "calendar":Lcom/haibin/calendarview/Calendar;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 45
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v4, v11

    goto :goto_0

    .line 67
    .end local v2    # "i":I
    .end local v11    # "d":I
    .local v4, "d":I
    :cond_5
    return-void
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/haibin/calendarview/MonthView;->isClick:Z

    if-nez v0, :cond_1

    .line 166
    return v1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 169
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v0, :cond_2

    .line 170
    return v1

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 174
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v2

    if-nez v2, :cond_3

    .line 175
    return v1

    .line 179
    :cond_3
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v2, v0, v3}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 181
    return v1

    .line 184
    :cond_4
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MonthView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    .line 186
    .local v1, "isCalendarInRange":Z
    if-nez v1, :cond_6

    .line 187
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v2, :cond_5

    .line 188
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v2, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClickOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    .line 190
    :cond_5
    return v3

    .line 193
    :cond_6
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->isPreventLongPressedSelected()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 194
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v2, :cond_7

    .line 195
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v2, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClick(Lcom/haibin/calendarview/Calendar;)V

    .line 197
    :cond_7
    return v3

    .line 201
    :cond_8
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    .line 203
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v2, :cond_a

    .line 204
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v2}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v2

    .line 205
    .local v2, "cur":I
    iget v4, p0, Lcom/haibin/calendarview/MonthView;->mCurrentItem:I

    const/4 v5, 0x7

    if-ge v4, v5, :cond_9

    add-int/lit8 v4, v2, -0x1

    goto :goto_0

    :cond_9
    add-int/lit8 v4, v2, 0x1

    .line 206
    .local v4, "position":I
    :goto_0
    iget-object v5, p0, Lcom/haibin/calendarview/MonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v5, v4}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 209
    .end local v2    # "cur":I
    .end local v4    # "position":I
    :cond_a
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v2, :cond_b

    .line 210
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v2, v0, v3}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 213
    :cond_b
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v2, :cond_d

    .line 214
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 215
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v4, p0, Lcom/haibin/calendarview/MonthView;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    goto :goto_1

    .line 217
    :cond_c
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v4, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-static {v0, v4}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 222
    :cond_d
    :goto_1
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v2, :cond_e

    .line 223
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v2, v0, v3}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 226
    :cond_e
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v2, :cond_f

    .line 227
    iget-object v2, p0, Lcom/haibin/calendarview/MonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v2, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClick(Lcom/haibin/calendarview/Calendar;)V

    .line 229
    :cond_f
    invoke-virtual {p0}, Lcom/haibin/calendarview/MonthView;->invalidate()V

    .line 230
    return v3
.end method
