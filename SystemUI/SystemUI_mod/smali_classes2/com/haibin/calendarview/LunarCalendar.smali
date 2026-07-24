.class public final Lcom/haibin/calendarview/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static DAY_STR:[Ljava/lang/String;

.field private static final LUNAR_INFO:[I

.field private static MONTH_STR:[Ljava/lang/String;

.field private static SOLAR_CALENDAR:[Ljava/lang/String;

.field private static final SOLAR_TERMS:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPECIAL_FESTIVAL:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

.field private static TRADITION_FESTIVAL_STR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    nop

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->MONTH_STR:[Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->TRADITION_FESTIVAL_STR:[Ljava/lang/String;

    .line 60
    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->DAY_STR:[Ljava/lang/String;

    .line 65
    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL:Ljava/util/Map;

    .line 76
    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_CALENDAR:[Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_TERMS:Ljava/util/Map;

    .line 150
    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->LUNAR_INFO:[I

    return-void

    :array_0
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5b0
        0x14573
        0x52b0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
        0x14b63
        0x9370
        0x49f8
        0x4970
        0x64b0
        0x168a6
        0xea50
        0x6b20
        0x1a6c4
        0xaae0
        0xa2e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x14b55
        0x4b60
        0xa570
        0x54e4
        0xd160
        0xe968
        0xd520
        0xdaa0
        0x16aa6
        0x56d0
        0x4ae0
        0xa9d4
        0xa2d0
        0xd150
        0xf252
        0xd520
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dateToString(III)Ljava/lang/String;
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static daysInLunarMonth(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 183
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0x10000

    shr-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 184
    const/16 v0, 0x1d

    return v0

    .line 186
    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method public static getLunarText(III)Ljava/lang/String;
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 248
    invoke-static {p0, p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getSolarTerm(III)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "termText":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->gregorianFestival(II)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "solar":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    return-object v1

    .line 252
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    return-object v0

    .line 254
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/haibin/calendarview/LunarUtil;->solarToLunar(III)[I

    move-result-object v2

    .line 255
    .local v2, "lunar":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v5, v2, v4

    const/4 v6, 0x2

    aget v7, v2, v6

    invoke-static {v3, v5, v7}, Lcom/haibin/calendarview/LunarCalendar;->getTraditionFestival(III)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "festival":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 257
    return-object v3

    .line 258
    :cond_2
    aget v4, v2, v4

    aget v5, v2, v6

    const/4 v6, 0x3

    aget v6, v2, v6

    invoke-static {v4, v5, v6}, Lcom/haibin/calendarview/LunarCalendar;->numToChinese(III)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getLunarText(Lcom/haibin/calendarview/Calendar;)Ljava/lang/String;
    .locals 3
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 391
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/LunarCalendar;->getLunarText(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSolarTerm(III)Ljava/lang/String;
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 222
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_TERMS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_TERMS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lcom/haibin/calendarview/SolarTermUtil;->getSolarTerms(I)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_TERMS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 226
    .local v0, "solarTerm":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "text":Ljava/lang/String;
    const-string v2, ""

    .line 228
    .local v2, "solar":Ljava/lang/String;
    nop

    .line 229
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 230
    .local v5, "solarTermName":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    const-string v3, ""

    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 232
    goto :goto_1

    .line 229
    .end local v5    # "solarTermName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :cond_2
    :goto_1
    return-object v2
.end method

.method private static getSpecialFestival(III)Ljava/lang/String;
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 273
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Lcom/haibin/calendarview/LunarCalendar;->getSpecialFestivals(I)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 277
    .local v0, "specialFestivals":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "text":Ljava/lang/String;
    const-string v2, ""

    .line 279
    .local v2, "solar":Ljava/lang/String;
    nop

    .line 280
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 281
    .local v5, "special":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 282
    const-string v3, ""

    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 283
    goto :goto_1

    .line 280
    .end local v5    # "special":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    :cond_2
    :goto_1
    return-object v2
.end method

.method private static getSpecialFestivals(I)[Ljava/lang/String;
    .locals 10
    .param p0, "year"    # I

    .line 298
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 299
    .local v0, "festivals":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 300
    .local v1, "date":Ljava/util/Calendar;
    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, p0, v3, v2}, Ljava/util/Calendar;->set(III)V

    .line 301
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 302
    .local v4, "week":I
    rsub-int/lit8 v5, v4, 0x7

    add-int/2addr v5, v2

    .line 303
    .local v5, "startDiff":I
    const/4 v6, 0x0

    const/4 v7, 0x5

    if-ne v5, v3, :cond_0

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v5, 0x1

    invoke-static {p0, v7, v9}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v6

    goto :goto_0

    .line 306
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v5, 0x7

    add-int/2addr v9, v2

    invoke-static {p0, v7, v9}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v6

    .line 308
    :goto_0
    invoke-virtual {v1, p0, v7, v2}, Ljava/util/Calendar;->set(III)V

    .line 309
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 310
    rsub-int/lit8 v6, v4, 0x7

    add-int/2addr v6, v2

    .line 311
    .end local v5    # "startDiff":I
    .local v6, "startDiff":I
    const/4 v5, 0x6

    if-ne v6, v3, :cond_1

    .line 312
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v6, 0x7

    add-int/2addr v9, v2

    invoke-static {p0, v5, v9}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    goto :goto_1

    .line 314
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v6, 0x7

    add-int/2addr v9, v3

    add-int/2addr v9, v2

    invoke-static {p0, v5, v9}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 317
    :goto_1
    const/16 v5, 0xa

    invoke-virtual {v1, p0, v5, v2}, Ljava/util/Calendar;->set(III)V

    .line 318
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 319
    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 320
    .end local v6    # "startDiff":I
    .local v3, "startDiff":I
    const/16 v2, 0xb

    const/4 v5, 0x2

    if-gt v3, v5, :cond_2

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v3, 0x15

    add-int/2addr v8, v7

    invoke-static {p0, v2, v8}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_2

    .line 323
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v3, 0xe

    add-int/2addr v8, v7

    invoke-static {p0, v2, v8}, Lcom/haibin/calendarview/LunarCalendar;->dateToString(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 325
    :goto_2
    return-object v0
.end method

.method private static getString(II)Ljava/lang/String;
    .locals 4
    .param p0, "month"    # I
    .param p1, "day"    # I

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    if-lt p0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt p1, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTraditionFestival(III)Ljava/lang/String;
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 93
    const/4 v0, 0x0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 94
    invoke-static {p0, p1}, Lcom/haibin/calendarview/LunarCalendar;->daysInLunarMonth(II)I

    move-result v1

    .line 95
    .local v1, "count":I
    if-ne p2, v1, :cond_0

    .line 96
    sget-object v2, Lcom/haibin/calendarview/LunarCalendar;->TRADITION_FESTIVAL_STR:[Ljava/lang/String;

    aget-object v0, v2, v0

    return-object v0

    .line 99
    .end local v1    # "count":I
    :cond_0
    invoke-static {p1, p2}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "text":Ljava/lang/String;
    const-string v2, ""

    .line 101
    .local v2, "festivalStr":Ljava/lang/String;
    sget-object v3, Lcom/haibin/calendarview/LunarCalendar;->TRADITION_FESTIVAL_STR:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 102
    .local v5, "festival":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    const-string v0, ""

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 104
    goto :goto_1

    .line 101
    .end local v5    # "festival":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    :goto_1
    return-object v2
.end method

.method private static gregorianFestival(II)Ljava/lang/String;
    .locals 7
    .param p0, "month"    # I
    .param p1, "day"    # I

    .line 197
    invoke-static {p0, p1}, Lcom/haibin/calendarview/LunarCalendar;->getString(II)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    .line 199
    .local v1, "solar":Ljava/lang/String;
    sget-object v2, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_CALENDAR:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 200
    .local v5, "aMSolarCalendar":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    const-string v2, ""

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 202
    goto :goto_1

    .line 199
    .end local v5    # "aMSolarCalendar":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    :cond_1
    :goto_1
    return-object v1
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->MONTH_STR:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/haibin/calendarview/TrunkBranchAnnals;->init(Landroid/content/Context;)V

    .line 39
    invoke-static {p0}, Lcom/haibin/calendarview/SolarTermUtil;->init(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->MONTH_STR:[Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->TRADITION_FESTIVAL_STR:[Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->DAY_STR:[Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->SPECIAL_FESTIVAL_STR:[Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/haibin/calendarview/LunarCalendar;->SOLAR_CALENDAR:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private static numToChinese(III)Ljava/lang/String;
    .locals 2
    .param p0, "month"    # I
    .param p1, "day"    # I
    .param p2, "leap"    # I

    .line 134
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 135
    invoke-static {p0, p2}, Lcom/haibin/calendarview/LunarCalendar;->numToChineseMonth(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->DAY_STR:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static numToChineseMonth(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "leap"    # I

    .line 119
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u95f0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/haibin/calendarview/LunarCalendar;->MONTH_STR:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    sget-object v0, Lcom/haibin/calendarview/LunarCalendar;->MONTH_STR:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static setupLunarCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 14
    .param p0, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 339
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    .line 340
    .local v0, "year":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    .line 341
    .local v1, "month":I
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v2

    .line 342
    .local v2, "day":I
    invoke-static {p0}, Lcom/haibin/calendarview/CalendarUtil;->isWeekend(Lcom/haibin/calendarview/Calendar;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/Calendar;->setWeekend(Z)V

    .line 343
    invoke-static {p0}, Lcom/haibin/calendarview/CalendarUtil;->getWeekFormCalendar(Lcom/haibin/calendarview/Calendar;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/Calendar;->setWeek(I)V

    .line 345
    new-instance v3, Lcom/haibin/calendarview/Calendar;

    invoke-direct {v3}, Lcom/haibin/calendarview/Calendar;-><init>()V

    .line 346
    .local v3, "lunarCalendar":Lcom/haibin/calendarview/Calendar;
    invoke-virtual {p0, v3}, Lcom/haibin/calendarview/Calendar;->setLunarCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 347
    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/LunarUtil;->solarToLunar(III)[I

    move-result-object v4

    .line 348
    .local v4, "lunar":[I
    const/4 v5, 0x0

    aget v6, v4, v5

    invoke-virtual {v3, v6}, Lcom/haibin/calendarview/Calendar;->setYear(I)V

    .line 349
    const/4 v6, 0x1

    aget v7, v4, v6

    invoke-virtual {v3, v7}, Lcom/haibin/calendarview/Calendar;->setMonth(I)V

    .line 350
    const/4 v7, 0x2

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Lcom/haibin/calendarview/Calendar;->setDay(I)V

    .line 351
    invoke-static {v0}, Lcom/haibin/calendarview/CalendarUtil;->isLeapYear(I)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/haibin/calendarview/Calendar;->setLeapYear(Z)V

    .line 352
    const/4 v8, 0x3

    aget v9, v4, v8

    if-ne v9, v6, :cond_0

    .line 353
    aget v9, v4, v6

    invoke-virtual {p0, v9}, Lcom/haibin/calendarview/Calendar;->setLeapMonth(I)V

    .line 354
    aget v9, v4, v6

    invoke-virtual {v3, v9}, Lcom/haibin/calendarview/Calendar;->setLeapMonth(I)V

    .line 356
    :cond_0
    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/LunarCalendar;->getSolarTerm(III)Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "solarTerm":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/haibin/calendarview/LunarCalendar;->gregorianFestival(II)Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, "gregorian":Ljava/lang/String;
    aget v11, v4, v5

    aget v12, v4, v6

    aget v13, v4, v7

    invoke-static {v11, v12, v13}, Lcom/haibin/calendarview/LunarCalendar;->getTraditionFestival(III)Ljava/lang/String;

    move-result-object v11

    .line 359
    .local v11, "festival":Ljava/lang/String;
    aget v12, v4, v6

    aget v7, v4, v7

    aget v8, v4, v8

    invoke-static {v12, v7, v8}, Lcom/haibin/calendarview/LunarCalendar;->numToChinese(III)Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, "lunarText":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 361
    invoke-static {v0, v1, v2}, Lcom/haibin/calendarview/LunarCalendar;->getSpecialFestival(III)Ljava/lang/String;

    move-result-object v10

    .line 363
    :cond_1
    invoke-virtual {p0, v9}, Lcom/haibin/calendarview/Calendar;->setSolarTerm(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, v10}, Lcom/haibin/calendarview/Calendar;->setGregorianFestival(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, v11}, Lcom/haibin/calendarview/Calendar;->setTraditionFestival(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3, v11}, Lcom/haibin/calendarview/Calendar;->setTraditionFestival(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v3, v9}, Lcom/haibin/calendarview/Calendar;->setSolarTerm(Ljava/lang/String;)V

    .line 368
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 369
    invoke-virtual {p0, v6}, Lcom/haibin/calendarview/Calendar;->setIsFestival(Z)V

    .line 370
    invoke-virtual {p0, v9}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 372
    invoke-virtual {p0, v6}, Lcom/haibin/calendarview/Calendar;->setIsFestival(Z)V

    .line 373
    invoke-virtual {p0, v10}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 375
    invoke-virtual {p0, v6}, Lcom/haibin/calendarview/Calendar;->setIsFestival(Z)V

    .line 376
    invoke-virtual {p0, v11}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_4
    invoke-virtual {p0, v5}, Lcom/haibin/calendarview/Calendar;->setIsFestival(Z)V

    .line 379
    invoke-virtual {p0, v7}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    .line 381
    :goto_0
    invoke-virtual {v3, v7}, Lcom/haibin/calendarview/Calendar;->setLunar(Ljava/lang/String;)V

    .line 382
    return-void
.end method
