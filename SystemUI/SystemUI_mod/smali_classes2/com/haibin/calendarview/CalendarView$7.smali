.class Lcom/haibin/calendarview/CalendarView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarView;->closeSelectLayout(I)V
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

    .line 446
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 449
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 450
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;->onYearViewChange(Z)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->showContentView()V

    .line 455
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$000(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekViewPager;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->shrink()Z

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/MonthViewPager;->setVisibility(I)V

    .line 464
    :goto_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$7;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$300(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/MonthViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/MonthViewPager;->clearAnimation()V

    .line 465
    return-void
.end method
