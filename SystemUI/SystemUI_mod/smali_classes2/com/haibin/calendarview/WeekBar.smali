.class public Lcom/haibin/calendarview/WeekBar;
.super Landroid/widget/LinearLayout;
.source "WeekBar.java"


# instance fields
.field private mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "com.haibin.calendarview.WeekBar"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0055

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    :cond_0
    return-void
.end method

.method private getWeekString(II)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "weekStart"    # I

    .line 131
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "weeks":[Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 134
    aget-object v1, v0, p1

    return-object v1

    .line 136
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne p2, v1, :cond_2

    .line 137
    if-ne p1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p1, 0x1

    :goto_0
    aget-object v1, v0, v1

    return-object v1

    .line 139
    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, p1, -0x1

    :goto_1
    aget-object v1, v0, v2

    return-object v1
.end method


# virtual methods
.method protected getViewIndexByCalendar(Lcom/haibin/calendarview/Calendar;I)I
    .locals 3
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "weekStart"    # I

    .line 113
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getWeek()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 114
    .local v0, "week":I
    if-ne p2, v1, :cond_0

    .line 115
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 117
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 118
    if-ne v0, v1, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x2

    :goto_0
    return v1

    .line 120
    :cond_2
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1
.end method

.method protected onDateSelected(Lcom/haibin/calendarview/Calendar;IZ)V
    .locals 0
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "weekStart"    # I
    .param p3, "isClick"    # Z

    .line 88
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 144
    iget-object v0, p0, Lcom/haibin/calendarview/WeekBar;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/haibin/calendarview/WeekBar;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBarHeight()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v0, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 149
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 150
    return-void
.end method

.method protected onWeekStartChange(I)V
    .locals 3
    .param p1, "weekStart"    # I

    .line 96
    const-string v0, "com.haibin.calendarview.WeekBar"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/haibin/calendarview/WeekBar;->getWeekString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected setTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected setTextSize(I)V
    .locals 4
    .param p1, "size"    # I

    .line 74
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/WeekBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 75
    invoke-virtual {p0, v1}, Lcom/haibin/calendarview/WeekBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    int-to-float v3, p1

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 3
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 46
    iput-object p1, p0, Lcom/haibin/calendarview/WeekBar;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 47
    const-string v0, "com.haibin.calendarview.WeekBar"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/haibin/calendarview/WeekBar;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekTextSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekBar;->setTextSize(I)V

    .line 49
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekBar;->setTextColor(I)V

    .line 50
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekBackground()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/WeekBar;->setBackgroundColor(I)V

    .line 51
    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/haibin/calendarview/WeekBar;->setPadding(IIII)V

    .line 53
    :cond_0
    return-void
.end method
