.class Lcom/haibin/calendarview/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Lcom/haibin/calendarview/CalendarView$OnInnerDateSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/CalendarView;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/CalendarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haibin/calendarview/CalendarView;

    .line 166
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthDateSelected(Lcom/haibin/calendarview/Calendar;Z)V
    .locals 3
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "isClick"    # Z

    .line 174
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$200(Lcom/haibin/calendarview/CalendarView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 177
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthViewItem:I

    if-eq v0, v2, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 181
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v2, v1}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 185
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    .line 186
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$400(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 187
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_9

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$400(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    goto/16 :goto_0

    .line 190
    :cond_4
    if-nez p2, :cond_9

    .line 191
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 192
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 193
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mCurrentMonthViewItem:I

    if-eq v0, v2, :cond_5

    .line 194
    return-void

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 197
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_7

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v2, v1}, Lcom/haibin/calendarview/WeekViewPager;->updateSelected(Lcom/haibin/calendarview/Calendar;Z)V

    .line 201
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    .line 202
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$400(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 203
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_9

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$400(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 207
    :cond_9
    :goto_0
    return-void
.end method

.method public onWeekDateSelected(Lcom/haibin/calendarview/Calendar;Z)V
    .locals 4
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "isClick"    # Z

    .line 216
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    .line 217
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 218
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iput-object p1, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    .line 221
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v1}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    .line 222
    .local v0, "y":I
    const/16 v1, 0xc

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 223
    .local v1, "position":I
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/WeekViewPager;->updateSingleSelect()V

    .line 224
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/haibin/calendarview/MonthViewPager;->setCurrentItem(IZ)V

    .line 225
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/MonthViewPager;->updateSelected()V

    .line 226
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$400(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 227
    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    .line 229
    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v3}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v2}, Lcom/haibin/calendarview/CalendarView;->access$400(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/haibin/calendarview/CalendarView$2;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v3}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v3

    invoke-virtual {v2, p1, v3, p2}, Lcom/haibin/calendarview/WeekBar;->onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V

    .line 232
    :cond_3
    return-void
.end method
