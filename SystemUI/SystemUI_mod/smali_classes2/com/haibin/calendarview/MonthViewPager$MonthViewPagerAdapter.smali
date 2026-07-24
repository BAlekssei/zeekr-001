.class final Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MonthViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haibin/calendarview/MonthViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MonthViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/MonthViewPager;


# direct methods
.method private constructor <init>(Lcom/haibin/calendarview/MonthViewPager;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haibin/calendarview/MonthViewPager;Lcom/haibin/calendarview/MonthViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/haibin/calendarview/MonthViewPager;
    .param p2, "x1"    # Lcom/haibin/calendarview/MonthViewPager$1;

    .line 601
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;-><init>(Lcom/haibin/calendarview/MonthViewPager;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 643
    move-object v0, p3

    check-cast v0, Lcom/haibin/calendarview/BaseView;

    .line 644
    .local v0, "view":Lcom/haibin/calendarview/BaseView;
    invoke-virtual {v0}, Lcom/haibin/calendarview/BaseView;->onDestroy()V

    .line 645
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$700(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 610
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$800(Lcom/haibin/calendarview/MonthViewPager;)Z

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
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 621
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v0

    add-int/2addr v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xc

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v2

    add-int/2addr v0, v2

    .line 622
    .local v0, "year":I
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v1

    .line 625
    .local v2, "month":I
    :try_start_0
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 626
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v4}, Lcom/haibin/calendarview/MonthViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    .local v1, "view":Lcom/haibin/calendarview/BaseMonthView;
    nop

    .line 629
    nop

    .line 631
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iput-object v3, v1, Lcom/haibin/calendarview/BaseMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    .line 632
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iget-object v3, v3, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iput-object v3, v1, Lcom/haibin/calendarview/BaseMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 633
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/BaseMonthView;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 634
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/BaseMonthView;->setTag(Ljava/lang/Object;)V

    .line 635
    invoke-virtual {v1, v0, v2}, Lcom/haibin/calendarview/BaseMonthView;->initMonthWithDate(II)V

    .line 636
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 637
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 638
    return-object v1

    .line 627
    .end local v1    # "view":Lcom/haibin/calendarview/BaseMonthView;
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 629
    new-instance v3, Lcom/haibin/calendarview/DefaultMonthView;

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v4}, Lcom/haibin/calendarview/MonthViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/haibin/calendarview/DefaultMonthView;-><init>(Landroid/content/Context;)V

    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 615
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
