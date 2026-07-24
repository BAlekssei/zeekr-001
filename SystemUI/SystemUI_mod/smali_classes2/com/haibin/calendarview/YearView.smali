.class public abstract Lcom/haibin/calendarview/YearView;
.super Landroid/view/View;
.source "YearView.java"


# instance fields
.field protected mCurDayLunarTextPaint:Landroid/graphics/Paint;

.field protected mCurDayTextPaint:Landroid/graphics/Paint;

.field protected mCurMonthLunarTextPaint:Landroid/graphics/Paint;

.field protected mCurMonthTextPaint:Landroid/graphics/Paint;

.field mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field protected mItemHeight:I

.field protected mItemWidth:I

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field protected mLineCount:I

.field protected mMonth:I

.field protected mMonthTextBaseLine:F

.field protected mMonthTextPaint:Landroid/graphics/Paint;

.field protected mNextDiff:I

.field protected mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

.field protected mOtherMonthTextPaint:Landroid/graphics/Paint;

.field protected mSchemeLunarTextPaint:Landroid/graphics/Paint;

.field protected mSchemePaint:Landroid/graphics/Paint;

.field protected mSchemeTextPaint:Landroid/graphics/Paint;

.field protected mSelectTextPaint:Landroid/graphics/Paint;

.field protected mSelectedLunarTextPaint:Landroid/graphics/Paint;

.field protected mSelectedPaint:Landroid/graphics/Paint;

.field protected mTextBaseLine:F

.field protected mWeekStart:I

.field protected mWeekTextBaseLine:F

.field protected mWeekTextPaint:Landroid/graphics/Paint;

.field protected mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/YearView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    .line 171
    invoke-direct {p0}, Lcom/haibin/calendarview/YearView;->initPaint()V

    .line 172
    return-void
.end method

.method private addSchemesFromMap()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 332
    .local v1, "a":Lcom/haibin/calendarview/Calendar;
    iget-object v2, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/Calendar;

    .line 334
    .local v2, "d":Lcom/haibin/calendarview/Calendar;
    if-nez v2, :cond_1

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 339
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    .line 340
    .end local v2    # "d":Lcom/haibin/calendarview/Calendar;
    goto :goto_2

    .line 341
    :cond_3
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 343
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    .line 345
    .end local v1    # "a":Lcom/haibin/calendarview/Calendar;
    :goto_2
    goto :goto_0

    .line 346
    :cond_4
    return-void

    .line 329
    :cond_5
    :goto_3
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p3, "i"    # I
    .param p4, "j"    # I
    .param p5, "d"    # I

    move-object v7, p0

    move-object/from16 v8, p2

    .line 450
    iget v0, v7, Lcom/haibin/calendarview/YearView;->mItemWidth:I

    mul-int v0, v0, p4

    iget-object v1, v7, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingLeft()I

    move-result v1

    add-int v9, v0, v1

    .line 451
    .local v9, "x":I
    iget v0, v7, Lcom/haibin/calendarview/YearView;->mItemHeight:I

    mul-int v0, v0, p3

    invoke-direct {v7}, Lcom/haibin/calendarview/YearView;->getMonthViewTop()I

    move-result v1

    add-int v10, v0, v1

    .line 453
    .local v10, "y":I
    iget-object v0, v7, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v8, v0}, Lcom/haibin/calendarview/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 454
    .local v11, "isSelected":Z
    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->hasScheme()Z

    move-result v12

    .line 456
    .local v12, "hasScheme":Z
    if-eqz v12, :cond_4

    .line 458
    const/4 v6, 0x0

    .line 459
    .local v6, "isDrawSelected":Z
    if-eqz v11, :cond_0

    .line 460
    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/YearView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z

    move-result v6

    .line 462
    :cond_0
    if-nez v6, :cond_2

    if-nez v11, :cond_1

    goto :goto_0

    .line 467
    .end local v6    # "isDrawSelected":Z
    :cond_1
    move-object v13, p1

    goto :goto_2

    .line 464
    .restart local v6    # "isDrawSelected":Z
    :cond_2
    :goto_0
    iget-object v0, v7, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, v7, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    move-object v13, p1

    invoke-virtual {v7, v13, v8, v9, v10}, Lcom/haibin/calendarview/YearView;->onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V

    .line 467
    .end local v6    # "isDrawSelected":Z
    :goto_2
    goto :goto_3

    .line 468
    :cond_4
    move-object v13, p1

    if-eqz v11, :cond_5

    .line 469
    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v13

    move-object v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/haibin/calendarview/YearView;->onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z

    .line 472
    :cond_5
    :goto_3
    move-object v0, v7

    move-object v1, v13

    move-object v2, v8

    move v3, v9

    move v4, v10

    move v5, v12

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/haibin/calendarview/YearView;->onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V

    .line 473
    return-void
.end method

.method private getMonthViewTop()I
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 376
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 377
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 378
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    return v0
.end method

.method private initPaint()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 181
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const v2, -0xeeeeef

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 184
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 186
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    const v2, -0x1e1e1f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 192
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 195
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 198
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 201
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 203
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 205
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 208
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 209
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 211
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    const v2, -0x12acad

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 214
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 217
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 220
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemePaint:Landroid/graphics/Paint;

    const v3, -0x101011

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 226
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 227
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 230
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 231
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 232
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 235
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    return-void
.end method

.method private onDrawMonth(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 365
    iget v2, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    iget v3, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 367
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingLeft()I

    move-result v4

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 368
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingTop()I

    move-result v5

    .line 369
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingRight()I

    move-result v1

    const/4 v6, 0x2

    mul-int/2addr v6, v1

    sub-int v6, v0, v6

    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 370
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthHeight()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 371
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingTop()I

    move-result v1

    add-int v7, v0, v1

    .line 365
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/haibin/calendarview/YearView;->onDrawMonth(Landroid/graphics/Canvas;IIIIII)V

    .line 372
    return-void
.end method

.method private onDrawMonthView(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 421
    iget v0, p0, Lcom/haibin/calendarview/YearView;->mLineCount:I

    const/4 v1, 0x7

    mul-int/2addr v0, v1

    .line 422
    .local v0, "count":I
    const/4 v2, 0x0

    .line 423
    .local v2, "d":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "d":I
    :goto_0
    iget v5, p0, Lcom/haibin/calendarview/YearView;->mLineCount:I

    if-ge v2, v5, :cond_3

    .line 424
    move v11, v4

    move v4, v3

    .local v4, "j":I
    .local v11, "d":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 425
    iget-object v5, p0, Lcom/haibin/calendarview/YearView;->mItems:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/haibin/calendarview/Calendar;

    .line 426
    .local v12, "calendar":Lcom/haibin/calendarview/Calendar;
    iget-object v5, p0, Lcom/haibin/calendarview/YearView;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/haibin/calendarview/YearView;->mNextDiff:I

    sub-int/2addr v5, v6

    if-le v11, v5, :cond_0

    .line 427
    return-void

    .line 429
    :cond_0
    invoke-virtual {v12}, Lcom/haibin/calendarview/Calendar;->isCurrentMonth()Z

    move-result v5

    if-nez v5, :cond_1

    .line 430
    add-int/lit8 v11, v11, 0x1

    .line 431
    goto :goto_2

    .line 433
    :cond_1
    move-object v5, p0

    move-object v6, p1

    move-object v7, v12

    move v8, v2

    move v9, v4

    move v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/haibin/calendarview/YearView;->draw(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;III)V

    .line 434
    add-int/lit8 v11, v11, 0x1

    .line 424
    .end local v12    # "calendar":Lcom/haibin/calendarview/Calendar;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 423
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v4, v11

    goto :goto_0

    .line 437
    .end local v2    # "i":I
    .end local v11    # "d":I
    .local v4, "d":I
    :cond_3
    return-void
.end method

.method private onDrawWeek(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 387
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    .line 391
    .local v0, "week":I
    if-lez v0, :cond_1

    .line 392
    add-int/lit8 v0, v0, -0x1

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 395
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 396
    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x7

    div-int/2addr v1, v2

    .line 397
    .local v1, "width":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move v10, v3

    .end local v3    # "i":I
    .local v10, "i":I
    if-ge v10, v2, :cond_3

    .line 398
    iget-object v3, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 400
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingLeft()I

    move-result v3

    mul-int v4, v10, v1

    add-int v6, v3, v4

    iget-object v3, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 401
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthHeight()I

    move-result v3

    iget-object v4, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 402
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 403
    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingBottom()I

    move-result v4

    add-int v7, v3, v4

    iget-object v3, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 405
    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekHeight()I

    move-result v9

    .line 398
    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move v8, v1

    invoke-virtual/range {v3 .. v9}, Lcom/haibin/calendarview/YearView;->onDrawWeek(Landroid/graphics/Canvas;IIIII)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 407
    if-lt v0, v2, :cond_2

    .line 408
    const/4 v0, 0x0

    .line 397
    :cond_2
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 412
    .end local v3    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method final init(II)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 278
    iput p1, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    .line 279
    iput p2, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    .line 280
    iget v0, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    iget-object v2, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthEndDiff(III)I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/YearView;->mNextDiff:I

    .line 281
    iget v0, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    iget v1, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    iget-object v2, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/CalendarUtil;->getMonthViewStartDiff(III)I

    move-result v0

    .line 283
    .local v0, "preDiff":I
    iget v1, p0, Lcom/haibin/calendarview/YearView;->mYear:I

    iget v2, p0, Lcom/haibin/calendarview/YearView;->mMonth:I

    iget-object v3, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentDay()Lcom/haibin/calendarview/Calendar;

    move-result-object v3

    iget-object v4, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->initCalendarForMonthView(IILcom/haibin/calendarview/Calendar;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/haibin/calendarview/YearView;->mItems:Ljava/util/List;

    .line 285
    const/4 v1, 0x6

    iput v1, p0, Lcom/haibin/calendarview/YearView;->mLineCount:I

    .line 286
    invoke-direct {p0}, Lcom/haibin/calendarview/YearView;->addSchemesFromMap()V

    .line 288
    return-void
.end method

.method final measureSize(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 300
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 301
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 302
    .local v1, "textHeight":I
    const/16 v2, 0xc

    mul-int/2addr v2, v1

    invoke-direct {p0}, Lcom/haibin/calendarview/YearView;->getMonthViewTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 304
    .local v2, "mMinHeight":I
    if-lt p2, v2, :cond_0

    move v3, p2

    goto :goto_0

    :cond_0
    move v3, v2

    .line 306
    .local v3, "h":I
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput p1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    invoke-direct {p0}, Lcom/haibin/calendarview/YearView;->getMonthViewTop()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/haibin/calendarview/YearView;->mItemHeight:I

    .line 310
    iget-object v4, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 311
    .local v4, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v5, p0, Lcom/haibin/calendarview/YearView;->mItemHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v5, v6

    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v7, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/haibin/calendarview/YearView;->mTextBaseLine:F

    .line 313
    iget-object v5, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 314
    .local v5, "monthMetrics":Landroid/graphics/Paint$FontMetrics;
    iget-object v6, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v6}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v8, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v6, v8

    iget v8, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v9, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    iput v6, p0, Lcom/haibin/calendarview/YearView;->mMonthTextBaseLine:F

    .line 317
    iget-object v6, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 318
    .local v6, "weekMetrics":Landroid/graphics/Paint$FontMetrics;
    iget-object v8, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v8}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v8, v9

    iget v9, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v10, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, p0, Lcom/haibin/calendarview/YearView;->mWeekTextBaseLine:F

    .line 321
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->invalidate()V

    .line 322
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 350
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 351
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 352
    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/haibin/calendarview/YearView;->mItemWidth:I

    .line 353
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->onPreviewHook()V

    .line 354
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/YearView;->onDrawMonth(Landroid/graphics/Canvas;)V

    .line 355
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/YearView;->onDrawWeek(Landroid/graphics/Canvas;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/YearView;->onDrawMonthView(Landroid/graphics/Canvas;)V

    .line 357
    return-void
.end method

.method protected abstract onDrawMonth(Landroid/graphics/Canvas;IIIIII)V
.end method

.method protected abstract onDrawScheme(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;II)V
.end method

.method protected abstract onDrawSelected(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZ)Z
.end method

.method protected abstract onDrawText(Landroid/graphics/Canvas;Lcom/haibin/calendarview/Calendar;IIZZ)V
.end method

.method protected abstract onDrawWeek(Landroid/graphics/Canvas;IIIII)V
.end method

.method protected onPreviewHook()V
    .locals 0

    .line 484
    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 246
    iput-object p1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 247
    invoke-virtual {p0}, Lcom/haibin/calendarview/YearView;->updateStyle()V

    .line 248
    return-void
.end method

.method final updateStyle()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 256
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 257
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 260
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSchemeTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewSchemeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewDayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mCurDayTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewCurDayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mSelectTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewSelectTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewMonthTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object v0, p0, Lcom/haibin/calendarview/YearView;->mWeekTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/YearView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getYearViewWeekTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 269
    return-void
.end method
