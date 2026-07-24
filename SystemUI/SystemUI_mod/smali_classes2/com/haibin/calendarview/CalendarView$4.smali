.class Lcom/haibin/calendarview/CalendarView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarView;->showSelectLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/CalendarView;

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/CalendarView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/haibin/calendarview/CalendarView;

    .line 362
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    iput p2, p0, Lcom/haibin/calendarview/CalendarView$4;->val$year:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 365
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 366
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$400(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/WeekBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/WeekBar;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$600(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/YearViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/YearViewPager;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$600(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/YearViewPager;

    move-result-object v0

    iget v2, p0, Lcom/haibin/calendarview/CalendarView$4;->val$year:I

    invoke-virtual {v0, v2, v1}, Lcom/haibin/calendarview/YearViewPager;->scrollToYear(IZ)V

    .line 369
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarLayout;->mContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$4;->this$0:Lcom/haibin/calendarview/CalendarView;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->expand()Z

    .line 372
    :cond_0
    return-void
.end method
