.class public Landroid/support/car/hardware/CarSensorEvent;
.super Ljava/lang/Object;
.source "CarSensorEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;,
        Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;,
        Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;,
        Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;,
        Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;
    }
.end annotation


# static fields
.field private static final EMPTY_FLOAT_ARRAY:[F

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_LONG_ARRAY:[J


# instance fields
.field public availability:I

.field private final floatInterval:I

.field private final floatOffset:I

.field public final floatValues:[F

.field private final intInterval:I

.field private final intOffset:I

.field public final intValues:[I

.field public final longValues:[J

.field public final sensorType:I

.field public final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    const/4 v0, 0x0

    new-array v1, v0, [F

    sput-object v1, Landroid/support/car/hardware/CarSensorEvent;->EMPTY_FLOAT_ARRAY:[F

    .line 139
    new-array v1, v0, [I

    sput-object v1, Landroid/support/car/hardware/CarSensorEvent;->EMPTY_INT_ARRAY:[I

    .line 140
    new-array v0, v0, [J

    sput-object v0, Landroid/support/car/hardware/CarSensorEvent;->EMPTY_LONG_ARRAY:[J

    return-void
.end method

.method public constructor <init>(IJIII)V
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "timestamp"    # J
    .param p4, "floatValueSize"    # I
    .param p5, "intValueSize"    # I
    .param p6, "longValueSize"    # I

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intOffset:I

    .line 1079
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intInterval:I

    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/car/hardware/CarSensorEvent;->floatOffset:I

    .line 1081
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/car/hardware/CarSensorEvent;->floatInterval:I

    .line 152
    iput p1, p0, Landroid/support/car/hardware/CarSensorEvent;->sensorType:I

    .line 153
    iput-wide p2, p0, Landroid/support/car/hardware/CarSensorEvent;->timestamp:J

    .line 154
    new-array v0, p4, [F

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    .line 155
    new-array v0, p5, [I

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    .line 156
    new-array v0, p6, [J

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->longValues:[J

    .line 157
    return-void
.end method

.method public constructor <init>(IJ[F[I[JI)V
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "timestamp"    # J
    .param p4, "floatValues"    # [F
    .param p5, "intValues"    # [I
    .param p6, "longValues"    # [J
    .param p7, "availability"    # I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intOffset:I

    .line 1079
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intInterval:I

    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/car/hardware/CarSensorEvent;->floatOffset:I

    .line 1081
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/car/hardware/CarSensorEvent;->floatInterval:I

    .line 172
    iput p1, p0, Landroid/support/car/hardware/CarSensorEvent;->sensorType:I

    .line 173
    iput-wide p2, p0, Landroid/support/car/hardware/CarSensorEvent;->timestamp:J

    .line 174
    if-nez p4, :cond_0

    sget-object v0, Landroid/support/car/hardware/CarSensorEvent;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    iput-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    .line 175
    if-nez p5, :cond_1

    sget-object v0, Landroid/support/car/hardware/CarSensorEvent;->EMPTY_INT_ARRAY:[I

    goto :goto_1

    :cond_1
    move-object v0, p5

    :goto_1
    iput-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    .line 176
    if-nez p6, :cond_2

    sget-object v0, Landroid/support/car/hardware/CarSensorEvent;->EMPTY_LONG_ARRAY:[J

    goto :goto_2

    :cond_2
    move-object v0, p6

    :goto_2
    iput-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->longValues:[J

    .line 178
    iput p7, p0, Landroid/support/car/hardware/CarSensorEvent;->availability:I

    .line 179
    return-void
.end method

.method private checkType(I)V
    .locals 4
    .param p1, "type"    # I

    .line 210
    iget v0, p0, Landroid/support/car/hardware/CarSensorEvent;->sensorType:I

    if-ne v0, p1, :cond_0

    .line 211
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/support/car/hardware/CarSensorEvent;->sensorType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 213
    const-string v2, "Invalid sensor type: expected %d, got %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCarInAqiLevel(Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;)Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;
    .locals 2
    .param p1, "data"    # Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;

    .line 2102
    const v0, 0x60000013

    invoke-direct {p0, v0}, Landroid/support/car/hardware/CarSensorEvent;->checkType(I)V

    .line 2103
    if-nez p1, :cond_0

    .line 2104
    new-instance v0, Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;-><init>(Landroid/support/car/hardware/CarSensorEvent$1;)V

    move-object p1, v0

    .line 2106
    :cond_0
    iget-wide v0, p0, Landroid/support/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;->timestamp:J

    .line 2107
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;->level:I

    .line 2108
    iget v0, p0, Landroid/support/car/hardware/CarSensorEvent;->availability:I

    iput v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;->availability:I

    .line 2109
    return-object p1
.end method

.method public getCarInPM25Data(Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;)Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;
    .locals 2
    .param p1, "data"    # Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;

    .line 1509
    const v0, 0x60000002

    invoke-direct {p0, v0}, Landroid/support/car/hardware/CarSensorEvent;->checkType(I)V

    .line 1510
    if-nez p1, :cond_0

    .line 1511
    new-instance v0, Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;-><init>(Landroid/support/car/hardware/CarSensorEvent$1;)V

    move-object p1, v0

    .line 1513
    :cond_0
    iget-wide v0, p0, Landroid/support/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;->timestamp:J

    .line 1514
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;->pm25:I

    .line 1515
    iget v0, p0, Landroid/support/car/hardware/CarSensorEvent;->availability:I

    iput v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;->availability:I

    .line 1516
    return-object p1
.end method

.method public getCarInPM25State(Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;)Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;
    .locals 2
    .param p1, "data"    # Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;

    .line 2045
    const v0, 0x60000012

    invoke-direct {p0, v0}, Landroid/support/car/hardware/CarSensorEvent;->checkType(I)V

    .line 2046
    if-nez p1, :cond_0

    .line 2047
    new-instance v0, Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;-><init>(Landroid/support/car/hardware/CarSensorEvent$1;)V

    move-object p1, v0

    .line 2049
    :cond_0
    iget-wide v0, p0, Landroid/support/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;->timestamp:J

    .line 2050
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;->state:I

    .line 2051
    iget v0, p0, Landroid/support/car/hardware/CarSensorEvent;->availability:I

    iput v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;->availability:I

    .line 2052
    return-object p1
.end method

.method public getCarOutPM25Data(Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;)Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;
    .locals 2
    .param p1, "data"    # Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;

    .line 1475
    const v0, 0x60000001

    invoke-direct {p0, v0}, Landroid/support/car/hardware/CarSensorEvent;->checkType(I)V

    .line 1476
    if-nez p1, :cond_0

    .line 1477
    new-instance v0, Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;-><init>(Landroid/support/car/hardware/CarSensorEvent$1;)V

    move-object p1, v0

    .line 1479
    :cond_0
    iget-wide v0, p0, Landroid/support/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;->timestamp:J

    .line 1480
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;->pm25:I

    .line 1481
    return-object p1
.end method

.method public getCarOutTempData(Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;)Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;
    .locals 2
    .param p1, "data"    # Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;

    .line 1544
    const v0, 0x60000003

    invoke-direct {p0, v0}, Landroid/support/car/hardware/CarSensorEvent;->checkType(I)V

    .line 1545
    if-nez p1, :cond_0

    .line 1546
    new-instance v0, Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;-><init>(Landroid/support/car/hardware/CarSensorEvent$1;)V

    move-object p1, v0

    .line 1548
    :cond_0
    iget-wide v0, p0, Landroid/support/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;->timestamp:J

    .line 1549
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;->temp:F

    .line 1550
    iget v0, p0, Landroid/support/car/hardware/CarSensorEvent;->availability:I

    iput v0, p1, Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;->availability:I

    .line 1551
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 2118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2119
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/car/hardware/CarSensorEvent;->sensorType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2121
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2122
    const-string v1, " float values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v1, v4

    .line 2124
    .local v5, "v":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    .end local v5    # "v":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2127
    :cond_0
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 2128
    const-string v1, " int values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v1, v4

    .line 2130
    .local v5, "v":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2129
    .end local v5    # "v":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2133
    :cond_1
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorEvent;->longValues:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/car/hardware/CarSensorEvent;->longValues:[J

    array-length v1, v1

    if-lez v1, :cond_2

    .line 2134
    const-string v1, " long values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorEvent;->longValues:[J

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_2

    aget-wide v4, v1, v2

    .line 2136
    .local v4, "v":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    .end local v4    # "v":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2139
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
