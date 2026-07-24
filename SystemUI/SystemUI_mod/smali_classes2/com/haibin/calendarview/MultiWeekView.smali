.class public abstract Lcom/haibin/calendarview/MultiWeekView;
.super Lcom/haibin/calendarview/BaseWeekView;
.source "MultiWeekView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseWeekView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 81
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/MultiWeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

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

    .line 172
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 173
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 174
    .local v0, "nextCalendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    goto :goto_0

    .line 176
    .end local v0    # "nextCalendar":Lcom/haibin/calendarview/Calendar;
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mItems:Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 178
    .restart local v0    # "nextCalendar":Lcom/haibin/calendarview/Calendar;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MultiWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    return v1
.end method

.method protected final isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;I)Z
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "calendarIndex"    # I

    .line 154
    if-nez p2, :cond_0

    .line 155
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 156
    .local v0, "preCalendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    goto :goto_0

    .line 158
    .end local v0    # "preCalendar":Lcom/haibin/calendarview/Calendar;
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MultiWeekView;->mItems:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 160
    .restart local v0    # "preCalendar":Lcom/haibin/calendarview/Calendar;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MultiWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 86
    iget-boolean v0, p0, Lcom/haibin/calendarview/MultiWeekView;->isClick:Z

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiWeekView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 90
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v0, :cond_1

    .line 91
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MultiWeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 95
    return-void

    .line 97
    :cond_2
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/MultiWeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onCalendarMultiSelectOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    .line 101
    :cond_3
    return-void

    .line 105
    :cond_4
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 108
    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_5
    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 111
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v2, :cond_6

    .line 112
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 113
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v3

    .line 112
    invoke-interface {v2, v0, v3}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onMultiSelectOutOfSize(Lcom/haibin/calendarview/Calendar;I)V

    .line 115
    :cond_6
    return-void

    .line 117
    :cond_7
    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mCurrentItem:I

    .line 122
    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v3, :cond_8

    .line 123
    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v3, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 125
    :cond_8
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v2, :cond_9

    .line 126
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v0, v2}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v2

    .line 127
    .local v2, "i":I
    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v3, v2}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 130
    .end local v2    # "i":I
    :cond_9
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    if-eqz v2, :cond_a

    .line 131
    iget-object v2, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarMultiSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;

    iget-object v3, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendars:Ljava/util/Map;

    .line 133
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 134
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxMultiSelectSize()I

    move-result v4

    .line 131
    invoke-interface {v2, v0, v3, v4}, Lcom/haibin/calendarview/CalendarView$OnCalendarMultiSelectListener;->onCalendarMultiSelect(Lcom/haibin/calendarview/Calendar;II)V

    .line 137
    :cond_a
    invoke-virtual {p0}, Lcom/haibin/calendarview/MultiWeekView;->invalidate()V

    .line 138
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v7, p0

    .line 39
    iget-object v0, v7, Lcom/haibin/calendarview/MultiWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/haibin/calendarview/MultiWeekView;->getWidth()I

    move-result v0

    iget-object v1, v7, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 42
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v7, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 43
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v8, 0x7

    div-int/2addr v0, v8

    iput v0, v7, Lcom/haibin/calendarview/MultiWeekView;->mItemWidth:I

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/haibin/calendarview/MultiWeekView;->onPreviewHook()V

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    if-ge v9, v8, :cond_7

    .line 47
    iget v0, v7, Lcom/haibin/calendarview/MultiWeekView;->mItemWidth:I

    mul-int/2addr v0, v9

    iget-object v1, v7, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    add-int v10, v0, v1

    .line 48
    .local v10, "x":I
    invoke-virtual {v7, v10}, Lcom/haibin/calendarview/MultiWeekView;->onLoopStart(I)V

    .line 49
    iget-object v0, v7, Lcom/haibin/calendarview/MultiWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/haibin/calendarview/Calendar;

    .line 50
    .local v11, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v7, v11}, Lcom/haibin/calendarview/MultiWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v12

    .line 51
    .local v12, "isSelected":Z
    invoke-virtual {v7, v11, v9}, Lcom/haibin/calendarview/MultiWeekView;->isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;I)Z

    move-result v13

    .line 52
    .local v13, "isPreSelected":Z
    invoke-virtual {v7, v11, v9}, Lcom/haibin/calendarview/MultiWeekView;->isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;I)Z

    move-result v14

    .line 53
    .local v14, "isNextSelected":Z
    invoke-virtual {v11}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v15

    .line 54
    .local v15, "hasScheme":Z
    if-eqz v15, :cond_5

    .line 55
    const/16 v16, 0x0

    .line 56
    .local v16, "isDrawSelected":Z
    if-eqz v12, :cond_1

    .line 57
    const/4 v4, 0x1

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v10

    move v5, v13

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/haibin/calendarview/MultiWeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z

    move-result v16

    .line 59
    :cond_1
    if-nez v16, :cond_3

    if-nez v12, :cond_2

    goto :goto_1

    .line 64
    .end local v16    # "isDrawSelected":Z
    :cond_2
    move-object/from16 v6, p1

    goto :goto_3

    .line 61
    .restart local v16    # "isDrawSelected":Z
    :cond_3
    :goto_1
    iget-object v0, v7, Lcom/haibin/calendarview/MultiWeekView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v1, v7, Lcom/haibin/calendarview/MultiWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    move-object/from16 v6, p1

    invoke-virtual {v7, v6, v11, v10, v12}, Lcom/haibin/calendarview/MultiWeekView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)V

    .line 64
    .end local v16    # "isDrawSelected":Z
    :goto_3
    goto :goto_4

    .line 65
    :cond_5
    move-object/from16 v6, p1

    if-eqz v12, :cond_6

    .line 66
    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v2, v11

    move v3, v10

    move v5, v13

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/haibin/calendarview/MultiWeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z

    .line 69
    :cond_6
    :goto_4
    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v10

    move v4, v15

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/MultiWeekView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V

    .line 46
    .end local v10    # "x":I
    .end local v11    # "calendar":Lcom/haibin/calendarview/Calendar;
    .end local v12    # "isSelected":Z
    .end local v13    # "isPreSelected":Z
    .end local v14    # "isNextSelected":Z
    .end local v15    # "hasScheme":Z
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 71
    .end local v0    # "i":I
    :cond_7
    return-void
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 142
    const/4 v0, 0x0

    return v0
.end method
