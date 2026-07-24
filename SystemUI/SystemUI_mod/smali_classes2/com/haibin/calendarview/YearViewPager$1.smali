.class Lcom/haibin/calendarview/YearViewPager$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "YearViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/YearViewPager;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/YearViewPager;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/YearViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/haibin/calendarview/YearViewPager;

    .line 54
    iput-object p1, p0, Lcom/haibin/calendarview/YearViewPager$1;->this$0:Lcom/haibin/calendarview/YearViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 83
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager$1;->this$0:Lcom/haibin/calendarview/YearViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/YearViewPager;->access$000(Lcom/haibin/calendarview/YearViewPager;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/haibin/calendarview/YearViewPager$1;->this$0:Lcom/haibin/calendarview/YearViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/YearViewPager;->access$100(Lcom/haibin/calendarview/YearViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 73
    new-instance v0, Lcom/haibin/calendarview/YearRecyclerView;

    iget-object v1, p0, Lcom/haibin/calendarview/YearViewPager$1;->this$0:Lcom/haibin/calendarview/YearViewPager;

    invoke-virtual {v1}, Lcom/haibin/calendarview/YearViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/haibin/calendarview/YearRecyclerView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "view":Lcom/haibin/calendarview/YearRecyclerView;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iget-object v1, p0, Lcom/haibin/calendarview/YearViewPager$1;->this$0:Lcom/haibin/calendarview/YearViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/YearViewPager;->access$200(Lcom/haibin/calendarview/YearViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/YearRecyclerView;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 76
    iget-object v1, p0, Lcom/haibin/calendarview/YearViewPager$1;->this$0:Lcom/haibin/calendarview/YearViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/YearViewPager;->access$300(Lcom/haibin/calendarview/YearViewPager;)Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/YearRecyclerView;->setOnMonthSelectedListener(Lcom/haibin/calendarview/YearRecyclerView$OnMonthSelectedListener;)V

    .line 77
    iget-object v1, p0, Lcom/haibin/calendarview/YearViewPager$1;->this$0:Lcom/haibin/calendarview/YearViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/YearViewPager;->access$200(Lcom/haibin/calendarview/YearViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/YearRecyclerView;->init(I)V

    .line 78
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 67
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
