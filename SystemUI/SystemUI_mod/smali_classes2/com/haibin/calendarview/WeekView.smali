.class public abstract Lcom/haibin/calendarview/WeekView;
.super Lcom/haibin/calendarview/BaseWeekView;
.source "WeekView.java"


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
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 74
    iget-boolean v0, p0, Lcom/haibin/calendarview/WeekView;->isClick:Z

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 78
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v0, :cond_1

    .line 79
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 83
    return-void

    .line 85
    :cond_2
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 86
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v1, :cond_3

    .line 87
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    .line 89
    :cond_3
    return-void

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/WeekView;->mCurrentItem:I

    .line 94
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v1, :cond_5

    .line 95
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 97
    :cond_5
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v1, :cond_6

    .line 98
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v1

    .line 99
    .local v1, "i":I
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v3, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 102
    .end local v1    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v1, :cond_7

    .line 103
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 106
    :cond_7
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->invalidate()V

    .line 107
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 39
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 42
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 43
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/haibin/calendarview/WeekView;->mItemWidth:I

    .line 44
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->onPreviewHook()V

    .line 46
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 47
    iget v2, p0, Lcom/haibin/calendarview/WeekView;->mItemWidth:I

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 48
    .local v2, "x":I
    invoke-virtual {p0, v2}, Lcom/haibin/calendarview/WeekView;->onLoopStart(I)V

    .line 49
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/haibin/calendarview/Calendar;

    .line 50
    .local v3, "calendar":Lcom/haibin/calendarview/Calendar;
    iget v4, p0, Lcom/haibin/calendarview/WeekView;->mCurrentItem:I

    const/4 v5, 0x1

    if-ne v1, v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    move v10, v4

    .line 51
    .local v10, "isSelected":Z
    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v11

    .line 52
    .local v11, "hasScheme":Z
    if-eqz v11, :cond_6

    .line 53
    const/4 v4, 0x0

    .line 54
    .local v4, "isDrawSelected":Z
    if-eqz v10, :cond_2

    .line 55
    invoke-virtual {p0, p1, v3, v2, v5}, Lcom/haibin/calendarview/WeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)Z

    move-result v4

    .line 57
    :cond_2
    if-nez v4, :cond_3

    if-nez v10, :cond_5

    .line 59
    :cond_3
    iget-object v5, p0, Lcom/haibin/calendarview/WeekView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v6

    if-eqz v6, :cond_4

    .line 60
    invoke-virtual {v3}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v6

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v6

    .line 59
    :goto_2
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-virtual {p0, p1, v3, v2}, Lcom/haibin/calendarview/WeekView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;I)V

    .line 63
    .end local v4    # "isDrawSelected":Z
    :cond_5
    goto :goto_3

    .line 64
    :cond_6
    if-eqz v10, :cond_7

    .line 65
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/haibin/calendarview/WeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)Z

    .line 68
    :cond_7
    :goto_3
    move-object v4, p0

    move-object v5, p1

    move-object v6, v3

    move v7, v2

    move v8, v11

    move v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/haibin/calendarview/WeekView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V

    .line 46
    .end local v2    # "x":I
    .end local v3    # "calendar":Lcom/haibin/calendarview/Calendar;
    .end local v10    # "isSelected":Z
    .end local v11    # "hasScheme":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_8
    return-void
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;I)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    return v1

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/haibin/calendarview/WeekView;->isClick:Z

    if-nez v0, :cond_1

    .line 115
    return v1

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 118
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v0, :cond_2

    .line 119
    return v1

    .line 121
    :cond_2
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 123
    return v2

    .line 125
    :cond_3
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    .line 127
    .local v1, "isCalendarInRange":Z
    if-nez v1, :cond_5

    .line 128
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v3, :cond_4

    .line 129
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v3, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClickOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    .line 131
    :cond_4
    return v2

    .line 134
    :cond_5
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->isPreventLongPressedSelected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 135
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v3, :cond_6

    .line 136
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v3, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClick(Lcom/haibin/calendarview/Calendar;)V

    .line 138
    :cond_6
    return v2

    .line 142
    :cond_7
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/haibin/calendarview/WeekView;->mCurrentItem:I

    .line 144
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v4, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 146
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v3, :cond_8

    .line 147
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v3, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 149
    :cond_8
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v3, :cond_9

    .line 150
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-static {v0, v3}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v3

    .line 151
    .local v3, "i":I
    iget-object v4, p0, Lcom/haibin/calendarview/WeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v4, v3}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 154
    .end local v3    # "i":I
    :cond_9
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v3, :cond_a

    .line 155
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    invoke-interface {v3, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 158
    :cond_a
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    if-eqz v3, :cond_b

    .line 159
    iget-object v3, p0, Lcom/haibin/calendarview/WeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarLongClickListener:Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;

    invoke-interface {v3, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarLongClickListener;->onCalendarLongClick(Lcom/haibin/calendarview/Calendar;)V

    .line 162
    :cond_b
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekView;->invalidate()V

    .line 163
    return v2
.end method
