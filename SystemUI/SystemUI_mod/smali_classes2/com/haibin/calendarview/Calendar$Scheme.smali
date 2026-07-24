.class public final Lcom/haibin/calendarview/Calendar$Scheme;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haibin/calendarview/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scheme"
.end annotation


# instance fields
.field private obj:Ljava/lang/Object;

.field private other:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private shcemeColor:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "shcemeColor"    # I
    .param p3, "scheme"    # Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput p1, p0, Lcom/haibin/calendarview/Calendar$Scheme;->type:I

    .line 441
    iput p2, p0, Lcom/haibin/calendarview/Calendar$Scheme;->shcemeColor:I

    .line 442
    iput-object p3, p0, Lcom/haibin/calendarview/Calendar$Scheme;->scheme:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "shcemeColor"    # I
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "other"    # Ljava/lang/String;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput p1, p0, Lcom/haibin/calendarview/Calendar$Scheme;->type:I

    .line 434
    iput p2, p0, Lcom/haibin/calendarview/Calendar$Scheme;->shcemeColor:I

    .line 435
    iput-object p3, p0, Lcom/haibin/calendarview/Calendar$Scheme;->scheme:Ljava/lang/String;

    .line 436
    iput-object p4, p0, Lcom/haibin/calendarview/Calendar$Scheme;->other:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "shcemeColor"    # I
    .param p2, "scheme"    # Ljava/lang/String;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput p1, p0, Lcom/haibin/calendarview/Calendar$Scheme;->shcemeColor:I

    .line 447
    iput-object p2, p0, Lcom/haibin/calendarview/Calendar$Scheme;->scheme:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shcemeColor"    # I
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "other"    # Ljava/lang/String;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput p1, p0, Lcom/haibin/calendarview/Calendar$Scheme;->shcemeColor:I

    .line 452
    iput-object p2, p0, Lcom/haibin/calendarview/Calendar$Scheme;->scheme:Ljava/lang/String;

    .line 453
    iput-object p3, p0, Lcom/haibin/calendarview/Calendar$Scheme;->other:Ljava/lang/String;

    .line 454
    return-void
.end method


# virtual methods
.method public getObj()Ljava/lang/Object;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar$Scheme;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getOther()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar$Scheme;->other:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/haibin/calendarview/Calendar$Scheme;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getShcemeColor()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/haibin/calendarview/Calendar$Scheme;->shcemeColor:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 481
    iget v0, p0, Lcom/haibin/calendarview/Calendar$Scheme;->type:I

    return v0
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 493
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar$Scheme;->obj:Ljava/lang/Object;

    .line 494
    return-void
.end method

.method public setOther(Ljava/lang/String;)V
    .locals 0
    .param p1, "other"    # Ljava/lang/String;

    .line 477
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar$Scheme;->other:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .line 469
    iput-object p1, p0, Lcom/haibin/calendarview/Calendar$Scheme;->scheme:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public setShcemeColor(I)V
    .locals 0
    .param p1, "shcemeColor"    # I

    .line 461
    iput p1, p0, Lcom/haibin/calendarview/Calendar$Scheme;->shcemeColor:I

    .line 462
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 485
    iput p1, p0, Lcom/haibin/calendarview/Calendar$Scheme;->type:I

    .line 486
    return-void
.end method
