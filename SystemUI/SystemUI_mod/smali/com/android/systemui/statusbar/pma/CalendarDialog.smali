.class public Lcom/android/systemui/statusbar/pma/CalendarDialog;
.super Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;
.source "CalendarDialog.java"


# static fields
.field private static DAY_STR:[Ljava/lang/String;

.field private static MONTH_STR:[Ljava/lang/String;


# instance fields
.field calendarMonth:I

.field private calendarView:Lcom/haibin/calendarview/CalendarView;

.field calendarYear:I

.field private date:Landroid/widget/TextView;

.field day:I

.field private layoutChangeAccount:Landroid/widget/FrameLayout;

.field private lunarDate:Landroid/widget/TextView;

.field mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field month:I

.field private next:Landroid/widget/ImageView;

.field private pre:Landroid/widget/ImageView;

.field year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->MONTH_STR:[Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->DAY_STR:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;-><init>(Landroid/content/Context;I)V

    .line 202
    new-instance v0, Lcom/android/systemui/statusbar/pma/CalendarDialog$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/CalendarDialog$4;-><init>(Lcom/android/systemui/statusbar/pma/CalendarDialog;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mContext:Landroid/content/Context;

    .line 57
    const/16 v0, 0x224

    const/16 v1, 0x2aa

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->updateAnimation(II)Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CalendarDialog;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->date:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CalendarDialog;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->next:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CalendarDialog;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->pre:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/CalendarDialog;)Lcom/haibin/calendarview/CalendarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CalendarDialog;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setCanceledOnTouchOutside(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 129
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x7e8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 130
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    const v1, 0x7f1200c9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 132
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 133
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 136
    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 137
    const/16 v2, 0x224

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 138
    const/16 v2, 0x2aa

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 139
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 140
    const/16 v2, 0x56a

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 9
    .param p1, "isDay"    # I

    .line 145
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->layoutChangeAccount:Landroid/widget/FrameLayout;

    const v2, 0x7f080491

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->pre:Landroid/widget/ImageView;

    const v2, 0x7f08041a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->next:Landroid/widget/ImageView;

    const v2, 0x7f080418

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->date:Landroid/widget/TextView;

    const-string v2, "#383A3D"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->lunarDate:Landroid/widget/TextView;

    const-string v2, "#66383A3D"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const-string v2, "#383A3D"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView;->setWeekColor(II)V

    .line 152
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const/4 v4, -0x1

    const-string v0, "#383A3D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const-string v0, "#33383A3D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/haibin/calendarview/CalendarView;->setTextColor(IIIII)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const-string v1, "#F88650"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarView;->setSelectedColor(III)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const-string v1, "#F88650"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarView;->setFestivalTextColor(I)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarView;->setCurDayLunarTextColor(I)V

    goto/16 :goto_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->layoutChangeAccount:Landroid/widget/FrameLayout;

    const v2, 0x7f080492

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->pre:Landroid/widget/ImageView;

    const v2, 0x7f08041b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->next:Landroid/widget/ImageView;

    const v2, 0x7f080419

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->date:Landroid/widget/TextView;

    const-string v2, "#B4B9BE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->lunarDate:Landroid/widget/TextView;

    const-string v2, "#66B4B9BE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const-string v2, "#B4B9BE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/haibin/calendarview/CalendarView;->setWeekColor(II)V

    .line 163
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const-string v0, "#F5FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v0, "#B4B9BE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const-string v0, "#33B4B9BE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/haibin/calendarview/CalendarView;->setTextColor(IIIII)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const-string v1, "#BE7153"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#F5FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#F5FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/haibin/calendarview/CalendarView;->setSelectedColor(III)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const-string v1, "#BE7153"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarView;->setFestivalTextColor(I)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const-string v1, "#F5FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarView;->setCurDayLunarTextColor(I)V

    .line 168
    :goto_0
    return-void
.end method

.method public lunarDateText(III)Ljava/lang/String;
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .line 122
    invoke-static {p1, p2, p3}, Lcom/haibin/calendarview/LunarUtil;->solarToLunar(III)[I

    move-result-object v0

    .line 123
    .local v0, "lunar":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getTrunkBranchYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/haibin/calendarview/TrunkBranchAnnals;->getShengXiaoYear(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/statusbar/pma/CalendarDialog;->MONTH_STR:[Ljava/lang/String;

    const/4 v3, 0x1

    aget v4, v0, v3

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/statusbar/pma/CalendarDialog;->DAY_STR:[Ljava/lang/String;

    const/4 v4, 0x2

    aget v4, v0, v4

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setContentView(I)V

    .line 64
    const v0, 0x7f0a0260

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->layoutChangeAccount:Landroid/widget/FrameLayout;

    .line 65
    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/haibin/calendarview/CalendarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    .line 66
    const v0, 0x7f0a0383

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->pre:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->next:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f0a00fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->date:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0a02ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->lunarDate:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->MONTH_STR:[Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->DAY_STR:[Ljava/lang/String;

    .line 72
    const/16 v0, 0x2aa

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->paramsHeight:I

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->layoutChangeAccount:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->setOpenAnimationView(Landroid/view/View;)V

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->day:I

    .line 79
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    add-int/lit8 v5, v0, -0xa

    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    add-int/lit8 v8, v0, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v9, 0xc

    const/16 v10, 0x1f

    invoke-virtual/range {v4 .. v10}, Lcom/haibin/calendarview/CalendarView;->setRange(IIIIII)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->updateCurrentDate()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/haibin/calendarview/CalendarView;->setMonthDateClickable(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->setOnlyCurrentMode()V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(III)V

    .line 84
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarYear:I

    .line 85
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarMonth:I

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->date:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # Получаем месяц (число)
    iget v5, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    # Конвертируем число месяца в текст через наш новый метод
    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->getMonthText(I)Ljava/lang/String;

    move-result-object v5

    # Добавляем текстовый месяц в StringBuilder
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Добавляем пробел между месяцем и годом
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # Добавляем год (число)
    iget v5, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    # Собираем все в финальную строку и отдаем в TextView
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->lunarDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v4, v2, v1}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->lunarDateText(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CalendarDialog$1;-><init>(Lcom/android/systemui/statusbar/pma/CalendarDialog;)V

    invoke-virtual {v0, v1}, Lcom/haibin/calendarview/CalendarView;->setOnMonthChangeListener(Lcom/haibin/calendarview/CalendarView$OnMonthChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->pre:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/CalendarDialog$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CalendarDialog$2;-><init>(Lcom/android/systemui/statusbar/pma/CalendarDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->next:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/pma/CalendarDialog$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CalendarDialog$3;-><init>(Lcom/android/systemui/statusbar/pma/CalendarDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->initView()V

    .line 119
    return-void
.end method

.method public setDialogShow()V
    .locals 13

    .line 172
    const-string v0, "CalendarDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDialogShow isShowing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 175
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->day:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v5

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarYear:I

    iget v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarMonth:I

    iget v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    .line 176
    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getOffsetPixels()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    const-string v0, "CalendarDialog"

    const-string/jumbo v1, "setDialogShow: no need update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 177
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->updateCurrentDate()V

    .line 178
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    .line 180
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    add-int/lit8 v7, v0, -0xa

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    add-int/lit8 v10, v0, 0xa

    const/16 v11, 0xc

    const/16 v12, 0x1f

    invoke-virtual/range {v6 .. v12}, Lcom/haibin/calendarview/CalendarView;->setRange(IIIIII)V

    .line 182
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->day:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v5

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarView;->getOffsetPixels()I

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    if-ne v0, v5, :cond_4

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    iget v2, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    add-int/2addr v2, v5

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->day:I

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(IIIZ)V

    goto :goto_2

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    iget v2, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    sub-int/2addr v2, v5

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->day:I

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(IIIZ)V

    goto :goto_2

    .line 183
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->day:I

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->lunarDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v1, v4, v2}, Lcom/android/systemui/statusbar/pma/CalendarDialog;->lunarDateText(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->calendarView:Lcom/haibin/calendarview/CalendarView;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->year:I

    iget v2, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->month:I

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->day:I

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/haibin/calendarview/CalendarView;->scrollToCalendar(IIIZ)V

    .line 197
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CalendarDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 199
    :cond_7
    invoke-super {p0}, Lcom/android/systemui/statusbar/pma/StatusBarViewDialog;->setDialogShow()V

    .line 200
    return-void
.end method

.method public static getMonthText(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xd
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1
    const-string v2, "\u042f\u043d\u0432"
    aput-object v2, v0, v1

    const/4 v1, 0x2
    const-string v2, "\u0424\u0435\u0432"
    aput-object v2, v0, v1

    const/4 v1, 0x3
    const-string v2, "\u041c\u0430\u0440"
    aput-object v2, v0, v1

    const/4 v1, 0x4
    const-string v2, "\u0410\u043f\u0440"
    aput-object v2, v0, v1

    const/4 v1, 0x5
    const-string v2, "\u041c\u0430\u0439"
    aput-object v2, v0, v1

    const/4 v1, 0x6
    const-string v2, "\u0418\u044e\u043d"
    aput-object v2, v0, v1

    const/4 v1, 0x7
    const-string v2, "\u0418\u044e\u043b"
    aput-object v2, v0, v1

    const/16 v1, 0x8
    const-string v2, "\u0410\u0432\u0433"
    aput-object v2, v0, v1

    const/16 v1, 0x9
    const-string v2, "\u0421\u0435\u043d"
    aput-object v2, v0, v1

    const/16 v1, 0xa
    const-string v2, "\u041e\u043a\u0442"
    aput-object v2, v0, v1

    const/16 v1, 0xb
    const-string v2, "\u041d\u043e\u044f"
    aput-object v2, v0, v1

    const/16 v1, 0xc
    const-string v2, "\u0414\u0435\u043a"
    aput-object v2, v0, v1

    aget-object v0, v0, p0
    return-object v0
.end method
