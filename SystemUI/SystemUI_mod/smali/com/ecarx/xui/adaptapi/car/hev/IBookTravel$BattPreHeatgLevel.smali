.class public final enum Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;
.super Ljava/lang/Enum;
.source "IBookTravel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BattPreHeatgLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

.field public static final enum ECO:Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

.field public static final enum NOTACTIVE:Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

.field public static final enum SPORT:Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    const-string v1, "NOTACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;->NOTACTIVE:Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    .line 41
    new-instance v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    const-string v1, "ECO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;->ECO:Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    .line 42
    new-instance v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    const-string v1, "SPORT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;->SPORT:Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    sget-object v1, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;->NOTACTIVE:Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;->ECO:Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;->SPORT:Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;->$VALUES:[Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    return-object v0
.end method

.method public static values()[Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;
    .locals 1

    .line 39
    sget-object v0, Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;->$VALUES:[Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    invoke-virtual {v0}, [Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ecarx/xui/adaptapi/car/hev/IBookTravel$BattPreHeatgLevel;

    return-object v0
.end method
