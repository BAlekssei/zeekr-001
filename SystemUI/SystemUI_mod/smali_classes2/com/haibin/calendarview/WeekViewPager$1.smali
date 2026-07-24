.class Lcom/haibin/calendarview/WeekViewPager$1;
.super Ljava/lang/Object;
.source "WeekViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/WeekViewPager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/WeekViewPager;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/WeekViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haibin/calendarview/WeekViewPager;

    .line 76
    iput-object p1, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 107
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 80
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 85
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v0}, Lcom/haibin/calendarview/WeekViewPager;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->access$102(Lcom/haibin/calendarview/WeekViewPager;Z)Z

    .line 87
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$100(Lcom/haibin/calendarview/WeekViewPager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->access$102(Lcom/haibin/calendarview/WeekViewPager;Z)Z

    .line 91
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/haibin/calendarview/WeekViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/BaseWeekView;

    .line 94
    .local v0, "view":Lcom/haibin/calendarview/BaseWeekView;
    if-eqz v0, :cond_3

    .line 95
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mIndexCalendar:Lcom/haibin/calendarview/Calendar;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    :goto_0
    iget-object v3, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/WeekViewPager;->access$100(Lcom/haibin/calendarview/WeekViewPager;)Z

    move-result v3

    .line 95
    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/haibin/calendarview/BaseWeekView;->performClickCalendar(Lcom/haibin/calendarview/Calendar;Z)V

    .line 97
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekChangeListener:Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;

    if-eqz v2, :cond_3

    .line 98
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mWeekChangeListener:Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;

    iget-object v3, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v3}, Lcom/haibin/calendarview/WeekViewPager;->getCurrentWeekCalendars()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/haibin/calendarview/CalendarView$OnWeekChangeListener;->onWeekChange(Ljava/util/List;)V

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$1;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2, v1}, Lcom/haibin/calendarview/WeekViewPager;->access$102(Lcom/haibin/calendarview/WeekViewPager;Z)Z

    .line 102
    return-void
.end method
