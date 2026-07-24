.class Lcom/haibin/calendarview/CalendarLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/CalendarLayout;->shrink(I)Z
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

    .line 754
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarLayout$6;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 757
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 758
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$6;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarLayout;->access$202(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    .line 759
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$6;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarLayout;->access$700(Lcom/haibin/calendarview/CalendarLayout;)V

    .line 760
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarLayout$6;->this$0:Lcom/haibin/calendarview/CalendarLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarLayout;->access$602(Lcom/haibin/calendarview/CalendarLayout;Z)Z

    .line 762
    return-void
.end method
