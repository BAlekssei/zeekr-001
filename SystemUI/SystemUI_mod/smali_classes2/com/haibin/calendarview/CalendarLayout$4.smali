.class Lcom/haibin/calendarview/CalendarLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarLayout;->expand(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/CalendarLayout;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/CalendarLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haibin/calendarview/CalendarLayout;

    .line 705
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 708
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 709
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarLayout;->access$202(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    .line 710
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarLayout;->access$300(Lcom/haibin/calendarview/CalendarLayout;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 711
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarLayout;->requestLayout()V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/haibin/calendarview/CalendarLayout;->access$400(Lcom/haibin/calendarview/CalendarLayout;Z)V

    .line 714
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarLayout;->access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarLayout;->access$600(Lcom/haibin/calendarview/CalendarLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarLayout;->access$500(Lcom/haibin/calendarview/CalendarLayout;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;

    invoke-interface {v0, v2}, Lcom/haibin/calendarview/CalendarView$OnViewChangeListener;->onViewChange(Z)V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$4;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarLayout;->access$602(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    .line 719
    return-void
.end method
