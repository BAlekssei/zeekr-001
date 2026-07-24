.class public abstract Lcom/haibin/calendarview/BaseView;
.super Landroid/view/View;
.source "BaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field static final TEXT_SIZE:I = 0xe


# instance fields
.field isClick:Z

.field protected mCurDayLunarTextPaint:Landroid/graphics/Paint;

.field protected mCurDayTextPaint:Landroid/graphics/Paint;

.field protected mCurMonthLunarFestivalTextPaint:Landroid/graphics/Paint;

.field protected mCurMonthLunarTextPaint:Landroid/graphics/Paint;

.field protected mCurMonthTextPaint:Landroid/graphics/Paint;

.field mCurrentItem:I

.field mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field protected mItemHeight:I

.field protected mItemWidth:I

.field protected mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field protected mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

.field protected mOtherMonthTextPaint:Landroid/graphics/Paint;

.field mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

.field protected mSchemeLunarTextPaint:Landroid/graphics/Paint;

.field protected mSchemePaint:Landroid/graphics/Paint;

.field protected mSchemeTextPaint:Landroid/graphics/Paint;

.field protected mSelectTextPaint:Landroid/graphics/Paint;

.field protected mSelectedLunarTextPaint:Landroid/graphics/Paint;

.field protected mSelectedPaint:Landroid/graphics/Paint;

.field protected mTextBaseLine:F

.field mWeekStartWidth:I

.field protected mX:F

.field protected mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarFestivalTextPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/haibin/calendarview/BaseView;->isClick:Z

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mCurrentItem:I

    .line 161
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseView;->initPaint(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method private initPaint(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 170
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 172
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const v2, -0xeeeeef

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 174
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 178
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    const v3, -0x1e1e1f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 180
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 185
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarFestivalTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarFestivalTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 188
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 191
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 195
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 198
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 201
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    const v3, -0x12acad

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 203
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 205
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 208
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 210
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 212
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 213
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 215
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    const v4, -0x101011

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 219
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 221
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 225
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 227
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 229
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    invoke-virtual {p0, p0}, Lcom/haibin/calendarview/BaseView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {p0, p0}, Lcom/haibin/calendarview/BaseView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    return-void
.end method


# virtual methods
.method final addSchemesFromMap()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 312
    .local v1, "a":Lcom/haibin/calendarview/Calendar;
    iget-object v2, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    iget-object v2, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/Calendar;

    .line 314
    .local v2, "d":Lcom/haibin/calendarview/Calendar;
    if-nez v2, :cond_1

    .line 315
    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 319
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    .line 320
    .end local v2    # "d":Lcom/haibin/calendarview/Calendar;
    goto :goto_2

    .line 321
    :cond_3
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 322
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 323
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    .line 325
    .end local v1    # "a":Lcom/haibin/calendarview/Calendar;
    :goto_2
    goto :goto_0

    .line 326
    :cond_4
    return-void

    .line 309
    :cond_5
    :goto_3
    return-void
.end method

.method protected getCalendarPaddingLeft()I
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCalendarPaddingRight()I
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getWeekStartWith()I
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected initPaint()V
    .locals 0

    .line 441
    return-void
.end method

.method protected final isInRange(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 408
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSelected(Lcom/haibin/calendarview/Calendar;)Z
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 373
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/BaseView;->mCurrentItem:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 397
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 398
    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 397
    :goto_0
    return v0
.end method

.method protected abstract onDestroy()V
.end method

.method protected onPreviewHook()V
    .locals 0

    .line 364
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 332
    return v1

    .line 333
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 341
    :pswitch_0
    iget-boolean v0, p0, Lcom/haibin/calendarview/BaseView;->isClick:Z

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/haibin/calendarview/BaseView;->mY:F

    sub-float/2addr v0, v3

    .line 343
    .local v0, "mDY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/haibin/calendarview/BaseView;->isClick:Z

    goto :goto_0

    .line 347
    .end local v0    # "mDY":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mX:F

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mY:F

    goto :goto_0

    .line 335
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mX:F

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mY:F

    .line 337
    iput-boolean v2, p0, Lcom/haibin/calendarview/BaseView;->isClick:Z

    .line 338
    nop

    .line 351
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final removeSchemes()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 298
    .local v1, "a":Lcom/haibin/calendarview/Calendar;
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 300
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    .line 301
    .end local v1    # "a":Lcom/haibin/calendarview/Calendar;
    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 243
    iput-object p1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 244
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mWeekStartWidth:I

    .line 245
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->updateStyle()V

    .line 246
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->updateItemHeight()V

    .line 248
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->initPaint()V

    .line 249
    return-void
.end method

.method final update()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->addSchemesFromMap()V

    .line 386
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->invalidate()V

    .line 387
    return-void

    .line 381
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->removeSchemes()V

    .line 382
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->invalidate()V

    .line 383
    return-void
.end method

.method abstract updateCurrentDate()V
.end method

.method updateItemHeight()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mItemHeight:I

    .line 288
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 289
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, p0, Lcom/haibin/calendarview/BaseView;->mItemHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/BaseView;->mTextBaseLine:F

    .line 290
    return-void
.end method

.method final updateStyle()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurDayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurDayLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentMonthTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getOtherMonthTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentMonthLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarFestivalTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentMonthLunarFestivalTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectedLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getOtherMonthLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 269
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 274
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 275
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarFestivalTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 276
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 278
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 279
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectedThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    return-void
.end method
