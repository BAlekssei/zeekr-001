.class public Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;
.super Landroid/widget/LinearLayout;
.source "DateAndClockLayoutForPMA.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private UNIT_DATE_FORMAT_DMY:I

.field private UNIT_DATE_FORMAT_MDY:I

.field private UNIT_DATE_FORMAT_YMD:I

.field private date:Ljava/lang/StringBuilder;

.field private mCalendar:Ljava/util/Calendar;

.field private mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mDateFormat:I

.field private mHandler:Landroid/os/Handler;

.field private mHour12Format:Ljava/lang/String;

.field private mHour24Format:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field public mMonthText:[Ljava/lang/String;

.field private mTimeFormat:I

.field private retryCnt:I

.field private tvClock:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const-string v0, "DateAndClockLayoutForPMA"

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->UNIT_DATE_FORMAT_YMD:I

    .line 75
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->UNIT_DATE_FORMAT_DMY:I

    .line 76
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->UNIT_DATE_FORMAT_MDY:I

    .line 77
    const-string v2, "\u042f\u043d\u0432"

    const-string v3, "\u0424\u0435\u0432"

    const-string v4, "\u041c\u0430\u0440"

    const-string v5, "\u0410\u043f\u0440"

    const-string v6, "\u041c\u0430\u0439"

    const-string v7, "\u0418\u044e\u043d"

    const-string v8, "\u0418\u044e\u043b"

    const-string v9, "\u0410\u0432\u0433"

    const-string v10, "\u0421\u0435\u043d"

    const-string v11, "\u041e\u043a\u0442"

    const-string v12, "\u041d\u043e\u044f"

    const-string v13, "\u0414\u0435\u043a"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mMonthText:[Ljava/lang/String;

    .line 78
    const-string v1, "24"

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHour24Format:Ljava/lang/String;

    .line 79
    const-string v1, "12"

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHour12Format:Ljava/lang/String;

    .line 82
    iput v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->retryCnt:I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    .line 169
    new-instance v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHandler:Landroid/os/Handler;

    .line 314
    new-instance v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    const-class v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getTimeFormat(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->init()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    move-object v0, p0

    .line 94
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const-string v1, "DateAndClockLayoutForPMA"

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->UNIT_DATE_FORMAT_YMD:I

    .line 75
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->UNIT_DATE_FORMAT_DMY:I

    .line 76
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->UNIT_DATE_FORMAT_MDY:I

    .line 77
    const-string v3, "\u042f\u043d\u0432"

    const-string v4, "\u0424\u0435\u0432"

    const-string v5, "\u041c\u0430\u0440"

    const-string v6, "\u0410\u043f\u0440"

    const-string v7, "\u041c\u0430\u0439"

    const-string v8, "\u0418\u044e\u043d"

    const-string v9, "\u0418\u044e\u043b"

    const-string v10, "\u0410\u0432\u0433"

    const-string v11, "\u0421\u0435\u043d"

    const-string v12, "\u041e\u043a\u0442"

    const-string v13, "\u041d\u043e\u044f"

    const-string v14, "\u0414\u0435\u043a"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mMonthText:[Ljava/lang/String;

    .line 78
    const-string v2, "24"

    iput-object v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHour24Format:Ljava/lang/String;

    .line 79
    const-string v2, "12"

    iput-object v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHour12Format:Ljava/lang/String;

    .line 82
    iput v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->retryCnt:I

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    .line 169
    new-instance v1, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHandler:Landroid/os/Handler;

    .line 314
    new-instance v1, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 96
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getTimeFormat(Landroid/content/Context;)V

    .line 97
    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->init()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    move-object v0, p0

    .line 101
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const-string v1, "DateAndClockLayoutForPMA"

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->UNIT_DATE_FORMAT_YMD:I

    .line 75
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->UNIT_DATE_FORMAT_DMY:I

    .line 76
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->UNIT_DATE_FORMAT_MDY:I

    .line 77
    const-string v3, "\u042f\u043d\u0432"

    const-string v4, "\u0424\u0435\u0432"

    const-string v5, "\u041c\u0430\u0440"

    const-string v6, "\u0410\u043f\u0440"

    const-string v7, "\u041c\u0430\u0439"

    const-string v8, "\u0418\u044e\u043d"

    const-string v9, "\u0418\u044e\u043b"

    const-string v10, "\u0410\u0432\u0433"

    const-string v11, "\u0421\u0435\u043d"

    const-string v12, "\u041e\u043a\u0442"

    const-string v13, "\u041d\u043e\u044f"

    const-string v14, "\u0414\u0435\u043a"

    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mMonthText:[Ljava/lang/String;

    .line 78
    const-string v2, "24"

    iput-object v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHour24Format:Ljava/lang/String;

    .line 79
    const-string v2, "12"

    iput-object v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHour12Format:Ljava/lang/String;

    .line 82
    iput v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->retryCnt:I

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    .line 169
    new-instance v1, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$1;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHandler:Landroid/os/Handler;

    .line 314
    new-instance v1, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA$2;-><init>(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    const-class v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 103
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getTimeFormat(Landroid/content/Context;)V

    .line 104
    invoke-direct {v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->init()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;
    .param p1, "x1"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->setTimeFormatToCarService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;
    .param p1, "x1"    # Ljava/util/Locale;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;
    .param p1, "x1"    # Ljava/util/Calendar;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final getCurrentTime()Ljava/lang/String;
    .locals 17

    .line 243
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 244
    .local v1, "context":Landroid/content/Context;
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getTimeFormat(Landroid/content/Context;)V

    .line 245
    iget v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mTimeFormat:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 246
    iget v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->retryCnt:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->retryCnt:I

    .line 247
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY_TIMEFORMT_FORM_CARSERVICE retryCnt === "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->retryCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->retryCnt:I

    const/16 v4, 0x1f

    if-ge v2, v4, :cond_1

    .line 251
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    :cond_1
    const-string v2, ""

    return-object v2

    .line 255
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 256
    iget v2, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mTimeFormat:I

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v5

    .line 257
    .local v2, "is24":Z
    :goto_0
    iget-object v6, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 258
    .local v6, "hour":I
    iget-object v7, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 259
    .local v7, "minute":I
    const/16 v9, 0xa

    if-lt v7, v9, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_4
    const-string v10, "0%s"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, "currentMinute":Ljava/lang/String;
    :goto_1
    iget-object v11, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mMonthText:[Ljava/lang/String;

    aget-object v11, v12, v11

    .line 261
    .local v11, "mMonth":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCalendar:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, "mDay":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCalendar:Ljava/util/Calendar;

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, "mWay":Ljava/lang/String;
    const-string v14, "1"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 264
    const-string/jumbo v13, "\u0412\u0441"

    goto :goto_2

    .line 265
    :cond_5
    const-string v14, "2"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 266
    const-string/jumbo v13, "\u041f\u043d"

    goto :goto_2

    .line 267
    :cond_6
    const-string v14, "3"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 268
    const-string/jumbo v13, "\u0412\u0442"

    goto :goto_2

    .line 269
    :cond_7
    const-string v14, "4"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 270
    const-string/jumbo v13, "\u0421\u0440"

    goto :goto_2

    .line 271
    :cond_8
    const-string v14, "5"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 272
    const-string/jumbo v13, "\u0427\u0442"

    goto :goto_2

    .line 273
    :cond_9
    const-string v14, "6"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 274
    const-string/jumbo v13, "\u041f\u0442"

    goto :goto_2

    .line 275
    :cond_a
    const-string v14, "7"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 276
    const-string/jumbo v13, "\u0421\u0431"

    .line 278
    :cond_b
    :goto_2
    iget-object v14, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    const-string v15, "%s %s %s "

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v11, v8, v5

    aput-object v12, v8, v4

    aput-object v13, v8, v3

    invoke-static {v15, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getCurrentTime is24: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", hour: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", currentMinute: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "mMonth: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", mDay: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", mWay: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz v2, :cond_d

    .line 281
    if-lt v6, v9, :cond_c

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    const-string v3, "0%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "currentHour":Ljava/lang/String;
    :goto_3
    iget-object v4, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v4, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 285
    .end local v3    # "currentHour":Ljava/lang/String;
    :cond_d
    const/16 v3, 0xc

    if-lt v6, v3, :cond_f

    .line 286
    if-le v6, v3, :cond_e

    .line 287
    add-int/lit8 v6, v6, -0xc

    .line 290
    :cond_e
    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 294
    :cond_f
    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v3, v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->date:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getTimeFormat(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCarSettingTimeFormat()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mTimeFormat:I

    .line 139
    :cond_0
    return-void
.end method

.method private init()V
    .locals 7

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "ACTION_TIME_CHANGE_CUSTOM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v4, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 194
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/os/Handler;

    .line 193
    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 196
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCalendar:Ljava/util/Calendar;

    .line 197
    return-void
.end method

.method private setTimeFormatToCarService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, "cv":Landroid/content/ContentResolver;
    const-string/jumbo v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "timeFormat":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTimeFormatToCarService timeFormat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v2, "12"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mTimeFormat:I

    goto :goto_0

    .line 161
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mTimeFormat:I

    .line 163
    .end local v0    # "cv":Landroid/content/ContentResolver;
    .end local v1    # "timeFormat":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTimeFormatToCarService context or context.getContentResolver() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCarBodyStateManager:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mTimeFormat:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setCarSettingTimeFormat(I)V

    .line 167
    return-void
.end method

.method private setTimeFormatToSettings(I)V
    .locals 3
    .param p1, "format"    # I

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, "cv":Landroid/content/ContentResolver;
    iput p1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mTimeFormat:I

    .line 144
    if-nez p1, :cond_0

    .line 145
    const-string/jumbo v1, "time_12_24"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHour24Format:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 148
    :cond_0
    const-string/jumbo v1, "time_12_24"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mHour12Format:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .line 109
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchSetPressed(Z)V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->setAlpha(F)V

    goto :goto_0

    .line 113
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->setAlpha(F)V

    .line 115
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 201
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 203
    const v0, 0x7f0a04b5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->tvClock:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->updateClock()V

    .line 206
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    return-void
.end method

.method public setDateFormat(I)V
    .locals 3
    .param p1, "dateFormat"    # I

    .line 219
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDateFormat: dateFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mDateFormat:I

    .line 224
    return-void
.end method

.method public setTimeFormat(I)V
    .locals 3
    .param p1, "timeFormat"    # I

    .line 227
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTimeFormat: timeFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->setTimeFormatToSettings(I)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->tvClock:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method final updateClock()V
    .locals 3

    .line 235
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateClock!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->tvClock:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/DateAndClockLayoutForPMA;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method
