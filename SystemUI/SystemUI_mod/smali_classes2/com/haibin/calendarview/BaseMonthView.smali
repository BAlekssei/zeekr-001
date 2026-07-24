.class public abstract Lcom/haibin/calendarview/BaseMonthView;
.super Lcom/haibin/calendarview/BaseView;
.source "BaseMonthView.java"


# instance fields
.field protected mHeight:I

.field protected mLineCount:I

.field protected mMonth:I

.field mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

.field protected mNextDiff:I

.field protected mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseView;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private initCalendar()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(III)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mNextDiff:I

    .line 83
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v0

    .line 84
    .local v0, "preDiff":I
    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    invoke-static {v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthDaysCount(II)I

    move-result v1

    .line 86
    .local v1, "monthDayCount":I
    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v4

    iget-object v5, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/haibin/calendarview/CalendarUtil;->initCalendarForMonthView(IILcom/haibin/calendarview/Calendar;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    .line 88
    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    goto :goto_0

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 94
    :goto_0
    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 96
    invoke-interface {v2, v3}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const/4 v2, -0x1

    iput v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 101
    const/4 v2, 0x6

    iput v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mLineCount:I

    goto :goto_1

    .line 103
    :cond_2
    add-int v2, v0, v1

    iget v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mNextDiff:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x7

    iput v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mLineCount:I

    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseMonthView;->addSchemesFromMap()V

    .line 106
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 107
    return-void
.end method

.method private onClickCalendarPadding()V
    .locals 10

    .line 135
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mClickCalendarPaddingListener:Lcom/haibin/calendarview/CalendarView$OnClickCalendarPaddingListener;

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 139
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mX:F

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemWidth:I

    div-int/2addr v1, v2

    .line 140
    .local v1, "indexX":I
    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 141
    const/4 v1, 0x6

    .line 143
    :cond_1
    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    div-int/2addr v2, v3

    .line 144
    .local v2, "indexY":I
    mul-int/lit8 v3, v2, 0x7

    add-int/2addr v3, v1

    .line 145
    .local v3, "position":I
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    .line 148
    :cond_2
    if-nez v0, :cond_3

    .line 149
    return-void

    .line 151
    :cond_3
    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mClickCalendarPaddingListener:Lcom/haibin/calendarview/CalendarView$OnClickCalendarPaddingListener;

    iget v5, p0, Lcom/haibin/calendarview/BaseMonthView;->mX:F

    iget v6, p0, Lcom/haibin/calendarview/BaseMonthView;->mY:F

    const/4 v7, 0x1

    iget v8, p0, Lcom/haibin/calendarview/BaseMonthView;->mX:F

    iget v9, p0, Lcom/haibin/calendarview/BaseMonthView;->mY:F

    .line 152
    invoke-virtual {p0, v8, v9, v0}, Lcom/haibin/calendarview/BaseMonthView;->getClickCalendarPaddingObject(FFLcom/haibin/calendarview/Calendar;)Ljava/lang/Object;

    move-result-object v9

    .line 151
    move-object v8, v0

    invoke-interface/range {v4 .. v9}, Lcom/haibin/calendarview/CalendarView$OnClickCalendarPaddingListener;->onClickCalendarPadding(FFZLcom/haibin/calendarview/Calendar;Ljava/lang/Object;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected getClickCalendarPaddingObject(FFLcom/haibin/calendarview/Calendar;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "adjacentCalendar"    # Lcom/haibin/calendarview/Calendar;

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIndex()Lcom/haibin/calendarview/Calendar;
    .locals 5

    .line 115
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemWidth:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mX:F

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mX:F

    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseMonthView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mX:F

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemWidth:I

    div-int/2addr v0, v2

    .line 123
    .local v0, "indexX":I
    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    .line 124
    const/4 v0, 0x6

    .line 126
    :cond_2
    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    div-int/2addr v2, v3

    .line 127
    .local v2, "indexY":I
    mul-int/lit8 v3, v2, 0x7

    add-int/2addr v3, v0

    .line 128
    .local v3, "position":I
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 129
    iget-object v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    return-object v1

    .line 131
    :cond_3
    return-object v1

    .line 119
    .end local v0    # "indexX":I
    .end local v2    # "indexY":I
    .end local v3    # "position":I
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/haibin/calendarview/BaseMonthView;->onClickCalendarPadding()V

    .line 120
    return-object v1

    .line 116
    :cond_5
    :goto_1
    return-object v1
.end method

.method protected final getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I
    .locals 1
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 228
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final initMonthWithDate(II)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 68
    iput p1, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    .line 69
    iput p2, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    .line 70
    invoke-direct {p0}, Lcom/haibin/calendarview/BaseMonthView;->initCalendar()V

    .line 71
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    iget-object v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 72
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v2

    .line 71
    invoke-static {p1, p2, v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 265
    return-void
.end method

.method protected onLoopStart(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 260
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 233
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mLineCount:I

    if-eqz v0, :cond_0

    .line 234
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 236
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/haibin/calendarview/BaseView;->onMeasure(II)V

    .line 237
    return-void
.end method

.method protected onPreviewHook()V
    .locals 0

    .line 248
    return-void
.end method

.method final setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 174
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 175
    return-void
.end method

.method updateCurrentDate()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 212
    .local v1, "a":Lcom/haibin/calendarview/Calendar;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 213
    .end local v1    # "a":Lcom/haibin/calendarview/Calendar;
    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 215
    .local v0, "index":I
    iget-object v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setCurrentDay(Z)V

    .line 217
    .end local v0    # "index":I
    :cond_2
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 218
    return-void
.end method

.method updateItemHeight()V
    .locals 5

    .line 200
    invoke-super {p0}, Lcom/haibin/calendarview/BaseView;->updateItemHeight()V

    .line 201
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 202
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 201
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    .line 203
    return-void
.end method

.method final updateShowMode()V
    .locals 5

    .line 182
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget-object v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 183
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v3

    .line 182
    invoke-static {v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewLineCount(IIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mLineCount:I

    .line 184
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 185
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 184
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    .line 186
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 187
    return-void
.end method

.method final updateWeekStart()V
    .locals 5

    .line 193
    invoke-direct {p0}, Lcom/haibin/calendarview/BaseMonthView;->initCalendar()V

    .line 194
    iget v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/BaseMonthView;->mMonth:I

    iget v2, p0, Lcom/haibin/calendarview/BaseMonthView;->mItemHeight:I

    iget-object v3, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/BaseMonthView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 195
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v4

    .line 194
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewHeight(IIIII)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseMonthView;->mHeight:I

    .line 196
    return-void
.end method
