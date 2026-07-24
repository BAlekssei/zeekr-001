.class public final Lcom/haibin/calendarview/DefaultMonthView;
.super Lcom/haibin/calendarview/MonthView;
.source "DefaultMonthView.java"


# instance fields
.field private mPadding:I

.field private mPaddingVertical:I

.field private mRadio:F

.field private mSchemeBaseLine:F

.field private mSchemeBasicPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/MonthView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 46
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    const v2, -0x12acad

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mRadio:F

    .line 52
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPadding:I

    .line 53
    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPaddingVertical:I

    .line 54
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 55
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, p0, Lcom/haibin/calendarview/DefaultMonthView;->mRadio:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/haibin/calendarview/DefaultMonthView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBaseLine:F

    .line 57
    return-void
.end method

.method private getTextWidth(Ljava/lang/String;)F
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 76
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemWidth:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/haibin/calendarview/DefaultMonthView;->mRadio:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPaddingVertical:I

    add-int/2addr v1, p4

    int-to-float v1, v1

    iget v3, p0, Lcom/haibin/calendarview/DefaultMonthView;->mRadio:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/haibin/calendarview/DefaultMonthView;->mRadio:F

    iget-object v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBasicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemWidth:I

    add-int/2addr v1, p3

    iget v3, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPadding:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/haibin/calendarview/DefaultMonthView;->mRadio:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 81
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/haibin/calendarview/DefaultMonthView;->getTextWidth(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPaddingVertical:I

    add-int/2addr v2, p4

    int-to-float v2, v2

    iget v3, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeBaseLine:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextPaint:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 83
    return-void
.end method

.method protected onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "hasScheme"    # Z

    .line 69
    iget-object v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPadding:I

    add-int/2addr v0, p3

    int-to-float v2, v0

    iget v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPaddingVertical:I

    add-int/2addr v0, p4

    int-to-float v3, v0

    iget v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemWidth:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPadding:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemHeight:I

    add-int/2addr v0, p4

    iget v1, p0, Lcom/haibin/calendarview/DefaultMonthView;->mPaddingVertical:I

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v8, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSelectedPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x41000000    # 8.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "hasScheme"    # Z
    .param p6, "isSelected"    # Z

    .line 98
    iget v0, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    .line 99
    .local v0, "cx":I
    iget v1, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemHeight:I

    div-int/lit8 v1, v1, 0x6

    sub-int v1, p4, v1

    .line 101
    .local v1, "top":I
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextBaseLine:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 104
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextBaseLine:F

    int-to-float v5, p4

    add-float/2addr v4, v5

    iget v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemHeight:I

    div-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 105
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextBaseLine:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextBaseLine:F

    int-to-float v5, p4

    add-float/2addr v4, v5

    iget v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemHeight:I

    div-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 109
    :cond_1
    if-eqz p5, :cond_5

    .line 110
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextBaseLine:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    .line 111
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 110
    :goto_0
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextBaseLine:F

    int-to-float v5, p4

    add-float/2addr v4, v5

    iget v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemHeight:I

    div-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 115
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    .line 114
    :goto_1
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 117
    :cond_5
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextBaseLine:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    .line 118
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mCurDayTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 117
    :goto_2
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getIsFestival()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 121
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextBaseLine:F

    int-to-float v5, p4

    add-float/2addr v4, v5

    iget v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemHeight:I

    div-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 122
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_3

    .line 123
    :cond_8
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mCurMonthLunarFestivalTextPaint:Landroid/graphics/Paint;

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 121
    :goto_3
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 125
    :cond_a
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->getLunar()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v0

    iget v4, p0, Lcom/haibin/calendarview/DefaultMonthView;->mTextBaseLine:F

    int-to-float v5, p4

    add-float/2addr v4, v5

    iget v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mItemHeight:I

    div-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 126
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentDay()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_4

    .line 127
    :cond_b
    invoke-virtual {p2}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_c
    iget-object v5, p0, Lcom/haibin/calendarview/DefaultMonthView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 125
    :goto_4
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 130
    :goto_5
    return-void
.end method
