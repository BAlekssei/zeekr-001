.class public final Lcom/haibin/calendarview/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haibin/calendarview/Calendar$Scheme;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/haibin/calendarview/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f60d640f96f427L


# instance fields
.field private day:I

.field private gregorianFestival:Ljava/lang/String;

.field private isCurrentDay:Z

.field private isCurrentMonth:Z

.field private isFestival:Z

.field private isLeapYear:Z

.field private isWeekend:Z

.field private leapMonth:I

.field private lunar:Ljava/lang/String;

.field private lunarCalendar:Lcom/haibin/calendarview/Calendar;

.field private month:I

.field private scheme:Ljava/lang/String;

.field private schemeColor:I

.field private schemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar$Scheme;",
            ">;"
        }
    .end annotation
.end field

.field private solarTerm:Ljava/lang/String;

.field private traditionFestival:Ljava/lang/String;

.field private week:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addScheme(IILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "schemeColor"    # I
    .param p3, "scheme"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    new-instance v1, Lcom/haibin/calendarview/Calendar$Scheme;

    invoke-direct {v1, p1, p2, p3}, Lcom/haibin/calendarview/Calendar$Scheme;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public addScheme(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "schemeColor"    # I
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "other"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    new-instance v1, Lcom/haibin/calendarview/Calendar$Scheme;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/haibin/calendarview/Calendar$Scheme;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public addScheme(ILjava/lang/String;)V
    .locals 2
    .param p1, "schemeColor"    # I
    .param p2, "scheme"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    new-instance v1, Lcom/haibin/calendarview/Calendar$Scheme;

    invoke-direct {v1, p1, p2}, Lcom/haibin/calendarview/Calendar$Scheme;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public addScheme(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "schemeColor"    # I
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "other"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    new-instance v1, Lcom/haibin/calendarview/Calendar$Scheme;

    invoke-direct {v1, p1, p2, p3}, Lcom/haibin/calendarview/Calendar$Scheme;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public addScheme(Lcom/haibin/calendarview/Calendar$Scheme;)V
    .locals 1
    .param p1, "scheme"    # Lcom/haibin/calendarview/Calendar$Scheme;

    .line 217
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method final clearScheme()V
    .locals 1

    .line 414
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    .line 417
    return-void
.end method

.method public compareTo(Lcom/haibin/calendarview/Calendar;)I
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 343
    if-nez p1, :cond_0

    .line 344
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/haibin/calendarview/Calendar;

    invoke-virtual {p0, p1}, Lcom/haibin/calendarview/Calendar;->compareTo(Lcom/haibin/calendarview/Calendar;)I

    move-result p1

    return p1
.end method

.method public final differ(Lcom/haibin/calendarview/Calendar;)I
    .locals 1
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 356
    invoke-static {p0, p1}, Lcom/haibin/calendarview/CalendarUtil;->differ(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/Calendar;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 383
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/haibin/calendarview/Calendar;

    if-eqz v0, :cond_0

    .line 384
    move-object v0, p1

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->year:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->month:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v0}, Lcom/haibin/calendarview/Calendar;->getDay()I

    move-result v0

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->day:I

    if-ne v0, v1, :cond_0

    .line 385
    const/4 v0, 0x1

    return v0

    .line 387
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDay()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->day:I

    return v0
.end method

.method public getGregorianFestival()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->gregorianFestival:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFestival()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/haibin/calendarview/Calendar;->isFestival:Z

    return v0
.end method

.method public getLeapMonth()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->leapMonth:I

    return v0
.end method

.method public getLunar()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->lunar:Ljava/lang/String;

    return-object v0
.end method

.method public getLunarCalendar()Lcom/haibin/calendarview/Calendar;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->lunarCalendar:Lcom/haibin/calendarview/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->month:I

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeColor()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->schemeColor:I

    return v0
.end method

.method public getSchemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar$Scheme;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    return-object v0
.end method

.method public getSolarTerm()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->solarTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 3

    .line 374
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 375
    .local v0, "calendar":Ljava/util/Calendar;
    iget v1, p0, Lcom/haibin/calendarview/Calendar;->year:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 376
    iget v1, p0, Lcom/haibin/calendarview/Calendar;->month:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 377
    iget v1, p0, Lcom/haibin/calendarview/Calendar;->day:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 378
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getTraditionFestival()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->traditionFestival:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->week:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->year:I

    return v0
.end method

.method public hasScheme()Z
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    return v1

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar;->scheme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    return v1

    .line 323
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 5

    .line 365
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->year:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/haibin/calendarview/Calendar;->month:I

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->day:I

    if-lez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->day:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->month:I

    const/16 v4, 0xc

    if-gt v3, v4, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->year:I

    const/16 v4, 0x76c

    if-lt v3, v4, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    and-int/2addr v0, v3

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->year:I

    const/16 v4, 0x833

    if-gt v3, v4, :cond_6

    move v1, v2

    nop

    :cond_6
    and-int/2addr v0, v1

    return v0
.end method

.method public isCurrentDay()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/haibin/calendarview/Calendar;->isCurrentDay:Z

    return v0
.end method

.method public isCurrentMonth()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/haibin/calendarview/Calendar;->isCurrentMonth:Z

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/haibin/calendarview/Calendar;->isLeapYear:Z

    return v0
.end method

.method public isSameMonth(Lcom/haibin/calendarview/Calendar;)Z
    .locals 2
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;

    .line 333
    iget v0, p0, Lcom/haibin/calendarview/Calendar;->year:I

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/haibin/calendarview/Calendar;->month:I

    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getMonth()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWeekend()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/haibin/calendarview/Calendar;->isWeekend:Z

    return v0
.end method

.method final mergeScheme(Lcom/haibin/calendarview/Calendar;Ljava/lang/String;)V
    .locals 1
    .param p1, "calendar"    # Lcom/haibin/calendarview/Calendar;
    .param p2, "defaultScheme"    # Ljava/lang/String;

    .line 405
    if-nez p1, :cond_0

    .line 406
    return-void

    .line 407
    :cond_0
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    nop

    .line 407
    move-object v0, p2

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 407
    :goto_0
    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 410
    invoke-virtual {p1}, Lcom/haibin/calendarview/Calendar;->getSchemes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    .line 411
    return-void
.end method

.method public setCurrentDay(Z)V
    .locals 0
    .param p1, "currentDay"    # Z

    .line 175
    iput-boolean p1, p0, Lcom/haibin/calendarview/Calendar;->isCurrentDay:Z

    .line 176
    return-void
.end method

.method public setCurrentMonth(Z)V
    .locals 0
    .param p1, "currentMonth"    # Z

    .line 167
    iput-boolean p1, p0, Lcom/haibin/calendarview/Calendar;->isCurrentMonth:Z

    .line 168
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .line 158
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->day:I

    .line 159
    return-void
.end method

.method public setGregorianFestival(Ljava/lang/String;)V
    .locals 0
    .param p1, "gregorianFestival"    # Ljava/lang/String;

    .line 288
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->gregorianFestival:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setIsFestival(Z)V
    .locals 0
    .param p1, "isFestival"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/haibin/calendarview/Calendar;->isFestival:Z

    .line 135
    return-void
.end method

.method public setLeapMonth(I)V
    .locals 0
    .param p1, "leapMonth"    # I

    .line 297
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->leapMonth:I

    .line 298
    return-void
.end method

.method public setLeapYear(Z)V
    .locals 0
    .param p1, "leapYear"    # Z

    .line 305
    iput-boolean p1, p0, Lcom/haibin/calendarview/Calendar;->isLeapYear:Z

    .line 306
    return-void
.end method

.method public setLunar(Ljava/lang/String;)V
    .locals 0
    .param p1, "lunar"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->lunar:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setLunarCalendar(Lcom/haibin/calendarview/Calendar;)V
    .locals 0
    .param p1, "lunarCakendar"    # Lcom/haibin/calendarview/Calendar;

    .line 272
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->lunarCalendar:Lcom/haibin/calendarview/Calendar;

    .line 273
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .line 150
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->month:I

    .line 151
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->scheme:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setSchemeColor(I)V
    .locals 0
    .param p1, "schemeColor"    # I

    .line 203
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->schemeColor:I

    .line 204
    return-void
.end method

.method public setSchemes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar$Scheme;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "schemes":Ljava/util/List;, "Ljava/util/List<Lcom/haibin/calendarview/Calendar$Scheme;>;"
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->schemes:Ljava/util/List;

    .line 213
    return-void
.end method

.method public setSolarTerm(Ljava/lang/String;)V
    .locals 0
    .param p1, "solarTerm"    # Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->solarTerm:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setTraditionFestival(Ljava/lang/String;)V
    .locals 0
    .param p1, "traditionFestival"    # Ljava/lang/String;

    .line 313
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar;->traditionFestival:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setWeek(I)V
    .locals 0
    .param p1, "week"    # I

    .line 264
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->week:I

    .line 265
    return-void
.end method

.method public setWeekend(Z)V
    .locals 0
    .param p1, "weekend"    # Z

    .line 256
    iput-boolean p1, p0, Lcom/haibin/calendarview/Calendar;->isWeekend:Z

    .line 257
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .line 142
    iput p1, p0, Lcom/haibin/calendarview/Calendar;->year:I

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->month:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/haibin/calendarview/Calendar;->month:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/haibin/calendarview/Calendar;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/haibin/calendarview/Calendar;->day:I

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/haibin/calendarview/Calendar;->day:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/haibin/calendarview/Calendar;->day:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
