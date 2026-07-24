.class public final Lcom/haibin/calendarview/DefaultWeekView;
.super Lcom/haibin/calendarview/WeekView;
.source "DefaultWeekView.java"


# instance fields
.field private mPadding:I

.field private mRadio:F

.field private mSchemeBaseLine:F

.field private mSchemeBasicPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/WeekView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 42
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    const v2, -0x12acad

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultWeekView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    .line 48
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultWeekView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    .line 49
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 50
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultWeekView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBaseLine:F

    .line 52
    return-void
.end method

.method private getTextWidth(Ljava/lang/String;)F
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "x"    # I

    .line 73
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemWidth:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    int-to-float v1, v1

    iget v3, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    iget-object v4, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemWidth:I

    add-int/2addr v1, p3

    iget v3, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/haibin/calendarview/DefaultWeekView;->mRadio:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 78
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/haibin/calendarview/DefaultWeekView;->getTextWidth(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeBaseLine:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 80
    return-void
.end method

.method protected onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZ)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "x"    # I
    .param p4, "hasScheme"    # Z

    .line 65
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    add-int/2addr v0, p3

    int-to-float v2, v0

    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    int-to-float v3, v0

    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemWidth:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mPadding:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSelectedPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method protected onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IZZ)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "x"    # I
    .param p4, "hasScheme"    # Z
    .param p5, "isSelected"    # Z

    .line 95
    iget v0, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    .line 96
    .local v0, "cx":I
    iget v1, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x6

    .line 98
    .local v1, "top":I
    if-eqz p5, :cond_0

    .line 99
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    iget v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    div-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 102
    :cond_0
    if-eqz p4, :cond_4

    .line 103
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    .line 104
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 103
    :goto_0
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 107
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    iget v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    div-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 108
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 109
    :cond_3
    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    .line 107
    :goto_1
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 111
    :cond_4
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    .line 112
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 113
    :cond_5
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 111
    :goto_2
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultWeekView;->mTextBaseLine:F

    iget v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mItemHeight:I

    div-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 115
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_3

    .line 116
    :cond_7
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/haibin/calendarview/DefaultWeekView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 114
    :goto_3
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 118
    :goto_4
    return-void
.end method
