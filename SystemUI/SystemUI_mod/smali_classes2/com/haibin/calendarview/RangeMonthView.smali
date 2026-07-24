.class public abstract Lcom/haibin/calendarview/RangeMonthView;
.super Lcom/haibin/calendarview/BaseMonthView;
.source "RangeMonthView.java"


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

    .line 74
    iget v0, v8, Lcom/haibin/calendarview/RangeMonthView;->mItemWidth:I

    mul-int v0, v0, p5

    iget-object v1, v8, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    add-int v11, v0, v1

    .line 75
    .local v11, "x":I
    iget v0, v8, Lcom/haibin/calendarview/RangeMonthView;->mItemHeight:I

    mul-int v12, p4, v0

    .line 76
    .local v12, "y":I
    invoke-virtual {v8, v11, v12}, Lcom/haibin/calendarview/RangeMonthView;->onLoopStart(II)V

    .line 77
    invoke-virtual {v8, v9}, Lcom/haibin/calendarview/RangeMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v13

    .line 78
    .local v13, "isSelected":Z
    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v14

    .line 79
    .local v14, "hasScheme":Z
    invoke-virtual {v8, v9, v10}, Lcom/haibin/calendarview/RangeMonthView;->isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;I)Z

    move-result v15

    .line 80
    .local v15, "isPreSelected":Z
    invoke-virtual {v8, v9, v10}, Lcom/haibin/calendarview/RangeMonthView;->isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;I)Z

    move-result v16

    .line 82
    .local v16, "isNextSelected":Z
    if-eqz v14, :cond_4

    .line 84
    const/16 v17, 0x0

    .line 85
    .local v17, "isDrawSelected":Z
    if-eqz v13, :cond_0

    .line 86
    const/4 v5, 0x1

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v11

    move v4, v12

    move v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/haibin/calendarview/RangeMonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z

    move-result v17

    .line 88
    :cond_0
    if-nez v17, :cond_1

    if-nez v13, :cond_3

    .line 90
    :cond_1
    iget-object v0, v8, Lcom/haibin/calendarview/RangeMonthView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, v8, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    const/4 v5, 0x1

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v11

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/RangeMonthView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)V

    .line 93
    .end local v17    # "isDrawSelected":Z
    :cond_3
    goto :goto_1

    .line 94
    :cond_4
    if-eqz v13, :cond_5

    .line 95
    const/4 v5, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v11

    move v4, v12

    move v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/haibin/calendarview/RangeMonthView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZZ)Z

    .line 98
    :cond_5
    :goto_1
    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move v3, v11

    move v4, v12

    move v5, v14

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/haibin/calendarview/RangeMonthView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V

    .line 99
    return-void
.end method


# virtual methods
.method protected isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z
    .locals 3
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 108
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeMonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    return v1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 118
    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 117
    move v1, v2

    goto :goto_0

    .line 118
    :cond_4
    nop

    .line 117
    :goto_0
    return v1
.end method

.method protected final isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;I)Z
    .locals 3
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "calendarIndex"    # I

    .line 247
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    .line 248
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 249
    .local v0, "nextCalendar":Lcom/haibin/calendarview/Calendar;
    iget-object v2, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    goto :goto_0

    .line 251
    .end local v0    # "nextCalendar":Lcom/haibin/calendarview/Calendar;
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 254
    .restart local v0    # "nextCalendar":Lcom/haibin/calendarview/Calendar;
    :goto_0
    iget-object v2, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/RangeMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 254
    :goto_1
    return v1
.end method

.method protected final isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;I)Z
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "calendarIndex"    # I

    .line 226
    if-nez p2, :cond_0

    .line 227
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 228
    .local v0, "preCalendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    goto :goto_0

    .line 230
    .end local v0    # "preCalendar":Lcom/haibin/calendarview/Calendar;
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 233
    .restart local v0    # "preCalendar":Lcom/haibin/calendarview/Calendar;
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/RangeMonthView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const/4 v1, 0x1

    goto :goto_1

    .line 234
    :cond_1
    const/4 v1, 0x0

    .line 233
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 123
    iget-boolean v0, p0, Lcom/haibin/calendarview/RangeMonthView;->isClick:Z

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeMonthView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 128
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v0, :cond_1

    .line 129
    return-void

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 133
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    return-void

    .line 137
    :cond_2
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/RangeMonthView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 139
    return-void

    .line 142
    :cond_3
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/RangeMonthView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 143
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarSelectOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    .line 146
    :cond_4
    return-void

    .line 150
    :cond_5
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v1, :cond_9

    .line 151
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result v1

    .line 152
    .local v1, "minDiffer":I
    if-ltz v1, :cond_7

    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v5

    if-eq v5, v4, :cond_7

    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-le v5, v6, :cond_7

    .line 153
    iget-object v3, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v3, :cond_6

    .line 154
    iget-object v3, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v3, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    .line 156
    :cond_6
    return-void

    .line 157
    :cond_7
    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v5

    if-eq v5, v4, :cond_9

    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v6, v6, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 158
    invoke-static {v0, v6}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result v6

    add-int/2addr v6, v2

    if-ge v5, v6, :cond_9

    .line 159
    iget-object v2, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v2, :cond_8

    .line 160
    iget-object v2, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v2, v0, v3}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    .line 162
    :cond_8
    return-void

    .line 166
    .end local v1    # "minDiffer":I
    :cond_9
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v5, 0x0

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_a

    goto :goto_0

    .line 170
    :cond_a
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v1

    .line 171
    .local v1, "compare":I
    iget-object v6, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v6

    if-ne v6, v4, :cond_b

    if-gtz v1, :cond_b

    .line 172
    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 173
    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v5, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 174
    :cond_b
    if-gez v1, :cond_c

    .line 175
    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 176
    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v5, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 177
    :cond_c
    if-nez v1, :cond_d

    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 178
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v4

    if-ne v4, v2, :cond_d

    .line 179
    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 181
    :cond_d
    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .end local v1    # "compare":I
    goto :goto_1

    .line 167
    :cond_e
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 168
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v5, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 186
    :goto_1
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mCurrentItem:I

    .line 188
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    if-eqz v1, :cond_10

    .line 189
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v1

    .line 190
    .local v1, "cur":I
    iget v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mCurrentItem:I

    const/4 v5, 0x7

    if-ge v4, v5, :cond_f

    add-int/lit8 v4, v1, -0x1

    goto :goto_2

    :cond_f
    add-int/lit8 v4, v1, 0x1

    .line 191
    .local v4, "position":I
    :goto_2
    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v5, v4}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(I)V

    .line 194
    .end local v1    # "cur":I
    .end local v4    # "position":I
    :cond_10
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v1, :cond_11

    .line 195
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 198
    :cond_11
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v1, :cond_13

    .line 199
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 200
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    goto :goto_3

    .line 202
    :cond_12
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-static {v0, v4}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 205
    :cond_13
    :goto_3
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v1, :cond_15

    .line 206
    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    iget-object v4, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v4, :cond_14

    goto :goto_4

    :cond_14
    move v2, v3

    :goto_4
    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 209
    :cond_15
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 35
    iget v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mLineCount:I

    if-nez v0, :cond_0

    .line 36
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeMonthView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 38
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 39
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    div-int/2addr v0, v1

    iput v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mItemWidth:I

    .line 40
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeMonthView;->onPreviewHook()V

    .line 41
    iget v0, p0, Lcom/haibin/calendarview/RangeMonthView;->mLineCount:I

    mul-int/2addr v0, v1

    .line 42
    .local v0, "count":I
    const/4 v2, 0x0

    .line 43
    .local v2, "d":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "d":I
    :goto_0
    iget v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mLineCount:I

    if-ge v2, v5, :cond_5

    .line 44
    move v11, v4

    move v4, v3

    .local v4, "j":I
    .local v11, "d":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 45
    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/haibin/calendarview/Calendar;

    .line 46
    .local v12, "calendar":Lcom/haibin/calendarview/Calendar;
    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 47
    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/haibin/calendarview/RangeMonthView;->mNextDiff:I

    sub-int/2addr v5, v6

    if-le v11, v5, :cond_1

    .line 48
    return-void

    .line 50
    :cond_1
    invoke-virtual {v12}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-nez v5, :cond_3

    .line 51
    add-int/lit8 v11, v11, 0x1

    .line 52
    goto :goto_2

    .line 54
    :cond_2
    iget-object v5, p0, Lcom/haibin/calendarview/RangeMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 55
    if-lt v11, v0, :cond_3

    .line 56
    return-void

    .line 59
    :cond_3
    move-object v5, p0

    move-object v6, p1

    move-object v7, v12

    move v8, v11

    move v9, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/haibin/calendarview/RangeMonthView;->draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V

    .line 60
    add-int/lit8 v11, v11, 0x1

    .line 44
    .end local v12    # "calendar":Lcom/haibin/calendarview/Calendar;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 43
    .end local v4    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v4, v11

    goto :goto_0

    .line 63
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

    .line 213
    const/4 v0, 0x0

    return v0
.end method
