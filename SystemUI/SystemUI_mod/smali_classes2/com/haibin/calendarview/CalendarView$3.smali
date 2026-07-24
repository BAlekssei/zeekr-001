.class Lcom/haibin/calendarview/CalendarView$3;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;


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

    .line 252
    iput-object p1, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMonthSelected(II)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 255
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    sub-int v0, p1, v0

    const/16 v1, 0xc

    mul-int/2addr v1, v0

    add-int/2addr v1, p2

    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v0

    sub-int/2addr v1, v0

    .line 256
    .local v1, "position":I
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarView;->access$500(Lcom/haibin/calendarview/CalendarView;I)V

    .line 257
    iget-object v0, p0, Lcom/haibin/calendarview/CalendarView$3;->this$0:Lcom/haibin/calendarview/CalendarView;

    invoke-static {v0}, Lcom/haibin/calendarview/CalendarView;->access$100(Lcom/haibin/calendarview/CalendarView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->isShowYearSelectedLayout:Z

    .line 258
    return-void
.end method
