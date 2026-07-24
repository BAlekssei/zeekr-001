.class Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "WeekViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haibin/calendarview/WeekViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/WeekViewPager;


# direct methods
.method private constructor <init>(Lcom/haibin/calendarview/WeekViewPager;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haibin/calendarview/WeekViewPager;Lcom/haibin/calendarview/WeekViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/haibin/calendarview/WeekViewPager;
    .param p2, "x1"    # Lcom/haibin/calendarview/WeekViewPager$1;

    .line 431
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;-><init>(Lcom/haibin/calendarview/WeekViewPager;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 475
    move-object v0, p3

    check-cast v0, Lcom/haibin/calendarview/BaseWeekView;

    .line 476
    .local v0, "view":Lcom/haibin/calendarview/BaseWeekView;
    invoke-virtual {v0}, Lcom/haibin/calendarview/BaseWeekView;->onDestroy()V

    .line 477
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 478
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$300(Lcom/haibin/calendarview/WeekViewPager;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$400(Lcom/haibin/calendarview/WeekViewPager;)Z

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
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 451
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    .line 452
    invoke-static {v1}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    .line 453
    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    .line 455
    invoke-static {v4}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    .line 451
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getFirstCalendarStartWithMinCalendar(IIIII)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 458
    .local v0, "calendar":Lcom/haibin/calendarview/Calendar;
    :try_start_0
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekViewClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 459
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v3}, Lcom/haibin/calendarview/WeekViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/BaseWeekView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    move-object v1, v2

    .line 463
    .local v1, "view":Lcom/haibin/calendarview/BaseWeekView;
    nop

    .line 462
    nop

    .line 464
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v2, v2, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iput-object v2, v1, Lcom/haibin/calendarview/BaseWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 465
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/BaseWeekView;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 466
    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/BaseWeekView;->setup(Lcom/haibin/calendarview/Calendar;)V

    .line 467
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/BaseWeekView;->setTag(Ljava/lang/Object;)V

    .line 468
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 469
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 470
    return-object v1

    .line 460
    .end local v1    # "view":Lcom/haibin/calendarview/BaseWeekView;
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    new-instance v2, Lcom/haibin/calendarview/DefaultWeekView;

    iget-object v3, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v3}, Lcom/haibin/calendarview/WeekViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/haibin/calendarview/DefaultWeekView;-><init>(Landroid/content/Context;)V

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 445
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
