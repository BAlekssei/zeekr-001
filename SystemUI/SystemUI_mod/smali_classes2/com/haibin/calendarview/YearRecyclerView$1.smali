.class Lcom/haibin/calendarview/YearRecyclerView$1;
.super Ljava/lang/Object;
.source "YearRecyclerView.java"

# interfaces
.implements Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/YearRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/YearRecyclerView;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/YearRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haibin/calendarview/YearRecyclerView;

    .line 42
    iput-object p1, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(IJ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "itemId"    # J

    .line 45
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {v0}, Lcom/haibin/calendarview/YearRecyclerView;->access$000(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {v0}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {v0}, Lcom/haibin/calendarview/YearRecyclerView;->access$200(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/haibin/calendarview/YearViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/Month;

    .line 47
    .local v0, "month":Lcom/haibin/calendarview/Month;
    if-nez v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/haibin/calendarview/Month;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/haibin/calendarview/Month;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    .line 51
    invoke-static {v3}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {v4}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v4

    iget-object v5, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    .line 52
    invoke-static {v5}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYear()I

    move-result v5

    iget-object v6, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {v6}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMaxYearMonth()I

    move-result v6

    .line 50
    invoke-static/range {v1 .. v6}, Lcom/haibin/calendarview/CalendarUtil;->isMonthInRange(IIIIII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {v1}, Lcom/haibin/calendarview/YearRecyclerView;->access$000(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/haibin/calendarview/Month;->getYear()I

    move-result v2

    invoke-virtual {v0}, Lcom/haibin/calendarview/Month;->getMonth()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;->onMonthSelected(II)V

    .line 56
    iget-object v1, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {v1}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/haibin/calendarview/YearRecyclerView$1;->this$0:Lcom/haibin/calendarview/YearRecyclerView;

    invoke-static {v1}, Lcom/haibin/calendarview/YearRecyclerView;->access$100(Lcom/haibin/calendarview/YearRecyclerView;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/haibin/calendarview/CalendarViewDelegate;->mYearViewChangeListener:Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/haibin/calendarview/CalendarView$OnYearViewChangeListener;->onYearViewChange(Z)V

    .line 60
    .end local v0    # "month":Lcom/haibin/calendarview/Month;
    :cond_2
    return-void
.end method
