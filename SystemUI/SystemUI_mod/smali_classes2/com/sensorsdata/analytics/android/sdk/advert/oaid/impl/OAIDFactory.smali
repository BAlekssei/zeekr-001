.class public final Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;
.super Ljava/lang/Object;
.source "OAIDFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.OAIDFactory"

.field private static ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 35
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    return-object v0

    .line 38
    :cond_1
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->createManufacturerImpl(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    .line 39
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const-string v0, "SA.OAIDFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manufacturer interface has been found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    return-object v0

    .line 43
    :cond_2
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/DefaultImpl;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/DefaultImpl;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    .line 44
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    return-object v0
.end method

.method private static createManufacturerImpl(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isHuawei()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isEmui()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 51
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isXiaomi()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isMiui()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isBlackShark()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 54
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 57
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isOppo()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isOnePlus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 60
    :cond_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isMeizu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/MeizuImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/MeizuImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 63
    :cond_4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isSamsung()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/SamsungImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/SamsungImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 66
    :cond_5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isNubia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 69
    :cond_6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isASUS()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 70
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 72
    :cond_7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isLenovo()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isMotolora()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 75
    :cond_8
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isZTE()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 76
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 78
    :cond_9
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isCoolpad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 79
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 81
    :cond_a
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_b
    :goto_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 58
    :cond_c
    :goto_1
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 52
    :cond_d
    :goto_2
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 49
    :cond_e
    :goto_3
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
