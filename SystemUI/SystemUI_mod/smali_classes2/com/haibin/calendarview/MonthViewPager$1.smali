.class Lcom/haibin/calendarview/MonthViewPager$1;
.super Ljava/lang/Object;
.source "MonthViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/MonthViewPager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/MonthViewPager;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/MonthViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haibin/calendarview/MonthViewPager;

    .line 91
    iput-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 186
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 94
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/haibin/calendarview/CalendarViewDelegate;->setPositionOffsetPixels(I)V

    .line 95
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewShowMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ge p1, v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$200(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 102
    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$300(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .local v0, "height":I
    goto :goto_0

    .line 105
    .end local v0    # "height":I
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$300(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 107
    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$400(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 110
    .restart local v0    # "height":I
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 111
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v2, v1}, Lcom/haibin/calendarview/MonthViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .line 117
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->getFirstCalendarFromMonthViewPager(ILcom/haibin/calendarview/CalendarViewDelegate;)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 118
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/MonthViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-boolean v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 120
    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 122
    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/haibin/calendarview/CalendarView$OnYearChangeListener;->onYearChange(I)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthChangeListener:Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mMonthChangeListener:Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;->onMonthChange(II)V

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v1, v1, Lcom/haibin/calendarview/MonthViewPager;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/haibin/calendarview/MonthViewPager;->access$500(Lcom/haibin/calendarview/MonthViewPager;II)V

    .line 135
    return-void

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 140
    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v1

    if-nez v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iput-object v0, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_0

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/haibin/calendarview/CalendarUtil;->getRangeEdgeCalendar(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    iput-object v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    .line 148
    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->isSameMonth(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedStartRangeCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_1

    .line 151
    :cond_6
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->isSameMonth(Lcom/haibin/calendarview/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 152
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iput-object v2, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 157
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->updateSelectCalendarScheme()V

    .line 158
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$600(Lcom/haibin/calendarview/MonthViewPager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v1

    if-nez v1, :cond_8

    .line 159
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v1, v1, Lcom/haibin/calendarview/MonthViewPager;->mWeekBar:Lcom/haibin/calendarview/WeekBar;

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v4}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 160
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    if-eqz v1, :cond_8

    .line 161
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarSelectListener:Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;

    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-interface {v1, v3, v2}, Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;->onCalendarSelect(Lcom/haibin/calendarview/Calendar;Z)V

    .line 165
    :cond_8
    iget-object v1, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/MonthViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;

    .line 166
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    if-eqz v1, :cond_b

    .line 167
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/BaseMonthView;->getSelectedIndex(Lcom/haibin/calendarview/Calendar;)I

    move-result v3

    .line 168
    .local v3, "index":I
    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v4}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v4

    if-nez v4, :cond_9

    .line 169
    iput v3, v1, Lcom/haibin/calendarview/BaseMonthView;->mCurrentItem:I

    .line 171
    :cond_9
    if-ltz v3, :cond_a

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v4, v4, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v4, :cond_a

    .line 172
    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v4, v4, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v4, v3}, Lcom/haibin/calendarview/CalendarLayout;->updateSelectPosition(I)V

    .line 174
    :cond_a
    invoke-virtual {v1}, Lcom/haibin/calendarview/BaseMonthView;->invalidate()V

    .line 175
    .end local v3    # "index":I
    goto :goto_2

    .line 176
    :cond_b
    const-string v3, "MonthViewPager"

    const-string v4, "onPageSelected: view = null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_2
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v3, v3, Lcom/haibin/calendarview/MonthViewPager;->mWeekPager:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v4}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v4

    iget-object v4, v4, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v3, v4, v2}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 179
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v4

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/haibin/calendarview/MonthViewPager;->access$500(Lcom/haibin/calendarview/MonthViewPager;II)V

    .line 180
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$1;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3, v2}, Lcom/haibin/calendarview/MonthViewPager;->access$602(Lcom/haibin/calendarview/MonthViewPager;Z)Z

    .line 181
    return-void
.end method
