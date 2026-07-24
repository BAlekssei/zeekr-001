.class public abstract Lcom/haibin/calendarview/MultiMonthView;
.super Lcom/haibin/calendarview/BaseMonthView;
.source "MultiMonthView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseMonthView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "calendarIndex"    # I
    .param p4, "i"    # I
    .param p5, "j"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    .line 75
    iget v0, v8, Lcom/haibin/calendarview/MultiMonthView;->mItemWidth:I

    mul-int v0, v0, p5

    iget-object v1, v8, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    add-int v11, v0, v1

    .line 76
    .local v11, "x":I
    iget v0, v8, Lcom/haibin/calendarview/MultiMonthView;->mItemHeight:I

    mul-int v12, p4, v0

    .line 77
    .local v12, "y":I
    invoke-virtual {v8, v11, v12}, Lcom/haibin/calendarview/MultiMonthView;->onLoopStart(II)V

    .line 78
    invoke-virtual {v8, v9}, Lcom/haibin/calendarview/MultiMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v13

    .line 79
    .local v13, "isSelected":Z
    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v14

    .line 80
    .local v14, "hasScheme":Z
    invoke-virtual {v8, v9, v10}, Lcom/haibin/calendarview/MultiMonthView;->isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;I)Z

    move-result v15

    .line 81
    .local v15, "isPreSelected":Z
    invoke-virtual {v8, v9, v10}, Lcom/haibin/calendarview/MultiMonthView;->isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;I)Z

    move-result v16

    .line 83
    .local v16, "isNextSelected":Z
    if-eqz v14, :cond_4

    .line 85
    const/16 v17, 0x0

    .line 86
    .local v17, "isDrawSelected":Z
    if-eqz v13, :cond_0

    .line 87
    const/4 v5, 0x1

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v11

    move v4, v12

    move v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/haibin/calendarview/MultiMonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z

    move-result v17

    .line 89
    :cond_0
    if-nez v17, :cond_1

    if-nez v13, :cond_3

    .line 91
    :cond_1
    iget-object v0, v8, Lcom/haibin/calendarview/MultiMonthView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, v8, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    const/4 v5, 0x1

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v11

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/MultiMonthView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)V

    .line 94
    .end local v17    # "isDrawSelected":Z
    :cond_3
    goto :goto_1

    .line 95
    :cond_4
    if-eqz v13, :cond_5

    .line 96
    const/4 v5, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v11

    move v4, v12

    move v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/haibin/calendarview/MultiMonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z

    .line 99
    :cond_5
    :goto_1
    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v11

    move v4, v12

    move v5, v14

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/haibin/calendarview/MultiMonthView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V

    .line 100
    return-void
.end method


# virtual methods
.method protected isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 109
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiMonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;I)Z
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "calendarIndex"    # I

    .line 215
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 216
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 217
    .local v0, "nextCalendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    goto :goto_0

    .line 219
    .end local v0    # "nextCalendar":Lcom/haibin/calendarview/Calendar;
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 222
    .restart local v0    # "nextCalendar":Lcom/haibin/calendarview/Calendar;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MultiMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    return v1
.end method

.method protected final isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;I)Z
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "calendarIndex"    # I

    .line 196
    if-nez p2, :cond_0

    .line 197
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 198
    .local v0, "preCalendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    goto :goto_0

    .line 200
    .end local v0    # "preCalendar":Lcom/haibin/calendarview/Calendar;
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 203
    .restart local v0    # "preCalendar":Lcom/haibin/calendarview/Calendar;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MultiMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 114
    iget-boolean v0, p0, Lcom/haibin/calendarview/MultiMonthView;->isClick:Z

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiMonthView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 119
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v0, :cond_1

    .line 120
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 124
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    return-void

    .line 128
    :cond_2
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MultiMonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 130
    return-void

    .line 133
    :cond_3
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MultiMonthView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 134
    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onCalendarMultiSelectOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    .line 137
    :cond_4
    return-void

    .line 140
    :cond_5
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_6
    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v4

    if-lt v3, v4, :cond_8

    .line 146
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v2, :cond_7

    .line 147
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 148
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v3

    .line 147
    invoke-interface {v2, v0, v3}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onMultiSelectOutOfSize(Lcom/haibin/calendarview/Calendar;I)V

    .line 150
    :cond_7
    return-void

    .line 152
    :cond_8
    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_0
    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mCurrentItem:I

    .line 157
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v3, :cond_a

    .line 158
    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v3}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v3

    .line 159
    .local v3, "cur":I
    iget v4, p0, Lcom/haibin/calendarview/MultiMonthView;->mCurrentItem:I

    const/4 v5, 0x7

    if-ge v4, v5, :cond_9

    add-int/lit8 v4, v3, -0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v3, 0x1

    .line 160
    .local v4, "position":I
    :goto_1
    iget-object v5, p0, Lcom/haibin/calendarview/MultiMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v5, v4}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 163
    .end local v3    # "cur":I
    .end local v4    # "position":I
    :cond_a
    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v3, :cond_b

    .line 164
    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v3, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 167
    :cond_b
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v2, :cond_d

    .line 168
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 169
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    goto :goto_2

    .line 171
    :cond_c
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-static {v0, v3}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 174
    :cond_d
    :goto_2
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v2, :cond_e

    .line 175
    iget-object v2, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    iget-object v3, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    .line 177
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 178
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v4

    .line 175
    invoke-interface {v2, v0, v3, v4}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onCalendarMultiSelect(Lcom/haibin/calendarview/Calendar;II)V

    .line 180
    :cond_e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 34
    iget v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mLineCount:I

    if-nez v0, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiMonthView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 38
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 39
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    div-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mItemWidth:I

    .line 41
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiMonthView;->onPreviewHook()V

    .line 42
    iget v0, p0, Lcom/haibin/calendarview/MultiMonthView;->mLineCount:I

    mul-int/2addr v0, v1

    .line 43
    .local v0, "count":I
    const/4 v2, 0x0

    .line 44
    .local v2, "d":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "d":I
    :goto_0
    iget v5, p0, Lcom/haibin/calendarview/MultiMonthView;->mLineCount:I

    if-ge v2, v5, :cond_5

    .line 45
    move v11, v4

    move v4, v3

    .local v4, "j":I
    .local v11, "d":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 46
    iget-object v5, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/haibin/calendarview/Calendar;

    .line 47
    .local v12, "calendar":Lcom/haibin/calendarview/Calendar;
    iget-object v5, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 48
    iget-object v5, p0, Lcom/haibin/calendarview/MultiMonthView;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/haibin/calendarview/MultiMonthView;->mNextDiff:I

    sub-int/2addr v5, v6

    if-le v11, v5, :cond_1

    .line 49
    return-void

    .line 51
    :cond_1
    invoke-virtual {v12}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-nez v5, :cond_3

    .line 52
    add-int/lit8 v11, v11, 0x1

    .line 53
    goto :goto_2

    .line 55
    :cond_2
    iget-object v5, p0, Lcom/haibin/calendarview/MultiMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 56
    if-lt v11, v0, :cond_3

    .line 57
    return-void

    .line 60
    :cond_3
    move-object v5, p0

    move-object v6, p1

    move-object v7, v12

    move v8, v11

    move v9, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/haibin/calendarview/MultiMonthView;->draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V

    .line 61
    add-int/lit8 v11, v11, 0x1

    .line 45
    .end local v12    # "calendar":Lcom/haibin/calendarview/Calendar;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 44
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v4, v11

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    .end local v11    # "d":I
    .local v4, "d":I
    :cond_5
    return-void
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 184
    const/4 v0, 0x0

    return v0
.end method
