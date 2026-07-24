.class public abstract Lcom/haibin/calendarview/RangeWeekView;
.super Lcom/haibin/calendarview/BaseWeekView;
.source "RangeWeekView.java"


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
    .locals 3
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 81
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    return v1

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/RangeWeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    return v1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 91
    invoke-virtual {p1, v0}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 90
    move v1, v2

    goto :goto_0

    .line 91
    :cond_4
    nop

    .line 90
    :goto_0
    return v1
.end method

.method protected final isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;I)Z
    .locals 3
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "calendarIndex"    # I

    .line 203
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    .line 204
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getNextCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 205
    .local v0, "nextCalendar":Lcom/haibin/calendarview/Calendar;
    iget-object v2, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    goto :goto_0

    .line 207
    .end local v0    # "nextCalendar":Lcom/haibin/calendarview/Calendar;
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mItems:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 209
    .restart local v0    # "nextCalendar":Lcom/haibin/calendarview/Calendar;
    :goto_0
    iget-object v2, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/RangeWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 209
    :goto_1
    return v1
.end method

.method protected final isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;I)Z
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "calendarIndex"    # I

    .line 184
    if-nez p2, :cond_0

    .line 185
    invoke-static {p1}, Lcom/haibin/calendarview/CalendarUtil;->getPreCalendar(Lcom/haibin/calendarview/Calendar;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 186
    .local v0, "preCalendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateCalendarScheme(Lcom/haibin/calendarview/Calendar;)V

    goto :goto_0

    .line 188
    .end local v0    # "preCalendar":Lcom/haibin/calendarview/Calendar;
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/RangeWeekView;->mItems:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 190
    .restart local v0    # "preCalendar":Lcom/haibin/calendarview/Calendar;
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/RangeWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const/4 v1, 0x1

    goto :goto_1

    .line 191
    :cond_1
    const/4 v1, 0x0

    .line 190
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 96
    iget-boolean v0, p0, Lcom/haibin/calendarview/RangeWeekView;->isClick:Z

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeWeekView;->getIndex()Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 100
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    if-nez v0, :cond_1

    .line 101
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/RangeWeekView;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarInterceptClick(Lcom/haibin/calendarview/Calendar;Z)V

    .line 105
    return-void

    .line 107
    :cond_2
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/RangeWeekView;->isInRange(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 108
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v1, v0}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarSelectOutOfRange(Lcom/haibin/calendarview/Calendar;)V

    .line 111
    :cond_3
    return-void

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-nez v1, :cond_8

    .line 116
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result v1

    .line 117
    .local v1, "minDiffer":I
    if-ltz v1, :cond_6

    iget-object v5, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v5

    if-eq v5, v4, :cond_6

    iget-object v5, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-le v5, v6, :cond_6

    .line 118
    iget-object v3, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v3, :cond_5

    .line 119
    iget-object v3, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v3, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    .line 121
    :cond_5
    return-void

    .line 122
    :cond_6
    iget-object v5, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v5

    if-eq v5, v4, :cond_8

    iget-object v5, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxSelectRange()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v6, v6, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 123
    invoke-static {v0, v6}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result v6

    add-int/2addr v6, v2

    if-ge v5, v6, :cond_8

    .line 124
    iget-object v2, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v2, :cond_7

    .line 125
    iget-object v2, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    invoke-interface {v2, v0, v3}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onSelectOutOfRange(Lcom/haibin/calendarview/Calendar;Z)V

    .line 127
    :cond_7
    return-void

    .line 131
    .end local v1    # "minDiffer":I
    :cond_8
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    const/4 v5, 0x0

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_9

    goto :goto_0

    .line 135
    :cond_9
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result v1

    .line 136
    .local v1, "compare":I
    iget-object v6, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v6

    if-ne v6, v4, :cond_a

    if-gtz v1, :cond_a

    .line 137
    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 138
    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v5, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 139
    :cond_a
    if-gez v1, :cond_b

    .line 140
    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 141
    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v5, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 142
    :cond_b
    if-nez v1, :cond_c

    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 143
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinSelectRange()I

    move-result v4

    if-ne v4, v2, :cond_c

    .line 144
    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 146
    :cond_c
    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .end local v1    # "compare":I
    goto :goto_1

    .line 132
    :cond_d
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 133
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iput-object v5, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    .line 151
    :goto_1
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mCurrentItem:I

    .line 153
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    if-eqz v1, :cond_e

    .line 154
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mInnerListener:Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;

    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;->onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v1, :cond_f

    .line 157
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFromDayInMonth(Lcom/haibin/calendarview/Calendar;I)I

    move-result v1

    .line 158
    .local v1, "i":I
    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v4, v1}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectWeek(I)V

    .line 161
    .end local v1    # "i":I
    :cond_f
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    if-eqz v1, :cond_11

    .line 162
    iget-object v1, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarRangeSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;

    iget-object v4, p0, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedEndRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v4, :cond_10

    goto :goto_2

    :cond_10
    move v2, v3

    :goto_2
    invoke-interface {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarRangeSelectListener;->onCalendarRangeSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 166
    :cond_11
    invoke-virtual {p0}, Lcom/haibin/calendarview/RangeWeekView;->invalidate()V

    .line 167
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v7, p0

    .line 39
    iget-object v0, v7, Lcom/haibin/calendarview/RangeWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/haibin/calendarview/RangeWeekView;->getWidth()I

    move-result v0

    iget-object v1, v7, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 42
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v7, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 43
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v8, 0x7

    div-int/2addr v0, v8

    iput v0, v7, Lcom/haibin/calendarview/RangeWeekView;->mItemWidth:I

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/haibin/calendarview/RangeWeekView;->onPreviewHook()V

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    if-ge v9, v8, :cond_7

    .line 47
    iget v0, v7, Lcom/haibin/calendarview/RangeWeekView;->mItemWidth:I

    mul-int/2addr v0, v9

    iget-object v1, v7, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v1

    add-int v10, v0, v1

    .line 48
    .local v10, "x":I
    invoke-virtual {v7, v10}, Lcom/haibin/calendarview/RangeWeekView;->onLoopStart(I)V

    .line 49
    iget-object v0, v7, Lcom/haibin/calendarview/RangeWeekView;->mItems:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/haibin/calendarview/Calendar;

    .line 50
    .local v11, "calendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {v7, v11}, Lcom/haibin/calendarview/RangeWeekView;->isCalendarSelected(Lcom/haibin/calendarview/Calendar;)Z

    move-result v12

    .line 51
    .local v12, "isSelected":Z
    invoke-virtual {v7, v11, v9}, Lcom/haibin/calendarview/RangeWeekView;->isSelectPreCalendar(Lcom/haibin/calendarview/Calendar;I)Z

    move-result v13

    .line 52
    .local v13, "isPreSelected":Z
    invoke-virtual {v7, v11, v9}, Lcom/haibin/calendarview/RangeWeekView;->isSelectNextCalendar(Lcom/haibin/calendarview/Calendar;I)Z

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

    invoke-virtual/range {v0 .. v6}, Lcom/haibin/calendarview/RangeWeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z

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
    iget-object v0, v7, Lcom/haibin/calendarview/RangeWeekView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v11}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v1, v7, Lcom/haibin/calendarview/RangeWeekView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    move-object/from16 v6, p1

    invoke-virtual {v7, v6, v11, v10, v12}, Lcom/haibin/calendarview/RangeWeekView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)V

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

    invoke-virtual/range {v0 .. v6}, Lcom/haibin/calendarview/RangeWeekView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZZ)Z

    .line 69
    :cond_6
    :goto_4
    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v10

    move v4, v15

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/RangeWeekView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V

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

    .line 171
    const/4 v0, 0x0

    return v0
.end method
