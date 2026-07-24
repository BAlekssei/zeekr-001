.class public Lcom/haibin/calendarview/DefaultYearView;
.super Lcom/haibin/calendarview/YearView;
.source "DefaultYearView.java"


# instance fields
.field private mTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/YearView;-><init>(Landroid/content/Context;)V

    .line 34
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/DefaultYearView;->mTextPadding:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onDrawMonth(Landroid/graphics/Canvas;IIIIII)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 41
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultYearView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    const v1, 0x7f030055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    aget-object v0, v0, v1

    .line 45
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lcom/haibin/calendarview/DefaultYearView;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    iget v2, p0, Lcom/haibin/calendarview/DefaultYearView;->mTextPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, p5

    iget v3, p0, Lcom/haibin/calendarview/DefaultYearView;->mMonthTextBaseLine:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/haibin/calendarview/DefaultYearView;->mMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method protected onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 70
    return-void
.end method

.method protected onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "hasScheme"    # Z

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "hasScheme"    # Z
    .param p6, "isSelected"    # Z

    .line 74
    iget v0, p0, Lcom/haibin/calendarview/DefaultYearView;->mTextBaseLine:F

    int-to-float v1, p4

    add-float/2addr v0, v1

    .line 75
    .local v0, "baselineY":F
    iget v1, p0, Lcom/haibin/calendarview/DefaultYearView;->mItemWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    .line 77
    .local v1, "cx":I
    if-eqz p6, :cond_1

    .line 78
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v1

    .line 81
    if-eqz p5, :cond_0

    iget-object v4, p0, Lcom/haibin/calendarview/DefaultYearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/haibin/calendarview/DefaultYearView;->mSelectTextPaint:Landroid/graphics/Paint;

    .line 78
    :goto_0
    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 82
    :cond_1
    if-eqz p5, :cond_4

    .line 83
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v1

    .line 86
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/haibin/calendarview/DefaultYearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/haibin/calendarview/DefaultYearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/haibin/calendarview/DefaultYearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 83
    :goto_1
    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 90
    :cond_4
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v1

    .line 91
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/haibin/calendarview/DefaultYearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 92
    :cond_5
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/haibin/calendarview/DefaultYearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/haibin/calendarview/DefaultYearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 90
    :goto_2
    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    :goto_3
    return-void
.end method

.method protected onDrawWeek(Landroid/graphics/Canvas;IIIII)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "week"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 54
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultYearView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    .line 55
    .local v0, "text":Ljava/lang/String;
    div-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p3

    int-to-float v1, v1

    int-to-float v2, p4

    iget v3, p0, Lcom/haibin/calendarview/DefaultYearView;->mWeekTextBaseLine:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/haibin/calendarview/DefaultYearView;->mWeekTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 59
    return-void
.end method
