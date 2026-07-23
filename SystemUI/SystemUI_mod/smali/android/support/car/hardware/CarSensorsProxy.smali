.class Landroid/support/car/hardware/CarSensorsProxy;
.super Ljava/lang/Object;
.source "CarSensorsProxy.java"


# instance fields
.field private final mAccelerometerSensor:Landroid/hardware/Sensor;

.field private final mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

.field private final mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private final mGyroscopeSensor:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private mI:[F

.field private mLastAccelerometerData:[F

.field private mLastAccelerometerDataTime:J

.field private mLastGpsStatus:Landroid/location/GpsStatus;

.field private mLastGpsStatusTime:J

.field private mLastGyroscopeData:[F

.field private mLastGyroscopeDataTime:J

.field private mLastLocation:Landroid/location/Location;

.field private mLastLocationTime:J

.field private mLastMagneticFieldData:[F

.field private mLastMagneticFieldDataTime:J

.field private final mListenersMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mMagneticFieldSensor:Landroid/hardware/Sensor;

.field private mOrientation:[F

.field private mR:[F

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSupportedSensors:[I


# direct methods
.method constructor <init>(Landroid/support/car/hardware/CarSensorManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "carSensorManager"    # Landroid/support/car/hardware/CarSensorManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerData:[F

    .line 68
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastMagneticFieldData:[F

    .line 70
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGyroscopeData:[F

    .line 72
    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mR:[F

    .line 74
    new-array v1, v1, [F

    iput-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mI:[F

    .line 76
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mOrientation:[F

    .line 88
    new-instance v0, Landroid/support/car/hardware/CarSensorsProxy$1;

    invoke-direct {v0, p0}, Landroid/support/car/hardware/CarSensorsProxy$1;-><init>(Landroid/support/car/hardware/CarSensorsProxy;)V

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 101
    new-instance v0, Landroid/support/car/hardware/CarSensorsProxy$2;

    invoke-direct {v0, p0}, Landroid/support/car/hardware/CarSensorsProxy$2;-><init>(Landroid/support/car/hardware/CarSensorsProxy;)V

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationListener:Landroid/location/LocationListener;

    .line 124
    new-instance v0, Landroid/support/car/hardware/CarSensorsProxy$3;

    invoke-direct {v0, p0}, Landroid/support/car/hardware/CarSensorsProxy$3;-><init>(Landroid/support/car/hardware/CarSensorsProxy;)V

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 158
    new-instance v0, Landroid/support/car/hardware/CarSensorsProxy$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/car/hardware/CarSensorsProxy$4;-><init>(Landroid/support/car/hardware/CarSensorsProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mHandler:Landroid/os/Handler;

    .line 184
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationManager:Landroid/location/LocationManager;

    .line 185
    const-string/jumbo v0, "sensor"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 186
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 187
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mMagneticFieldSensor:Landroid/hardware/Sensor;

    .line 188
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mGyroscopeSensor:Landroid/hardware/Sensor;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mListenersMultiMap:Ljava/util/Map;

    .line 190
    invoke-direct {p0, p2}, Landroid/support/car/hardware/CarSensorsProxy;->initSupportedSensors(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSupportedSensors:[I

    .line 191
    iput-object p1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    .line 192
    return-void
.end method

.method static synthetic access$000(Landroid/support/car/hardware/CarSensorsProxy;)Landroid/location/GpsStatus;
    .locals 1
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;

    .line 45
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGpsStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/car/hardware/CarSensorsProxy;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;
    .param p1, "x1"    # Landroid/location/GpsStatus;

    .line 45
    iput-object p1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGpsStatus:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/car/hardware/CarSensorsProxy;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;

    .line 45
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/car/hardware/CarSensorsProxy;)[F
    .locals 1
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;

    .line 45
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerData:[F

    return-object v0
.end method

.method static synthetic access$1102(Landroid/support/car/hardware/CarSensorsProxy;J)J
    .locals 0
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;
    .param p1, "x1"    # J

    .line 45
    iput-wide p1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerDataTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Landroid/support/car/hardware/CarSensorsProxy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;

    .line 45
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mListenersMultiMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/car/hardware/CarSensorsProxy;)Landroid/support/car/hardware/CarSensorManager;
    .locals 1
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;

    .line 45
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/car/hardware/CarSensorsProxy;J)J
    .locals 0
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;
    .param p1, "x1"    # J

    .line 45
    iput-wide p1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGpsStatusTime:J

    return-wide p1
.end method

.method static synthetic access$300(Landroid/support/car/hardware/CarSensorsProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Landroid/support/car/hardware/CarSensorsProxy;->pushSensorChanges(I)V

    return-void
.end method

.method static synthetic access$402(Landroid/support/car/hardware/CarSensorsProxy;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;
    .param p1, "x1"    # Landroid/location/Location;

    .line 45
    iput-object p1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$502(Landroid/support/car/hardware/CarSensorsProxy;J)J
    .locals 0
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;
    .param p1, "x1"    # J

    .line 45
    iput-wide p1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastLocationTime:J

    return-wide p1
.end method

.method static synthetic access$600(Landroid/support/car/hardware/CarSensorsProxy;)[F
    .locals 1
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;

    .line 45
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGyroscopeData:[F

    return-object v0
.end method

.method static synthetic access$702(Landroid/support/car/hardware/CarSensorsProxy;J)J
    .locals 0
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;
    .param p1, "x1"    # J

    .line 45
    iput-wide p1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGyroscopeDataTime:J

    return-wide p1
.end method

.method static synthetic access$800(Landroid/support/car/hardware/CarSensorsProxy;)[F
    .locals 1
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;

    .line 45
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastMagneticFieldData:[F

    return-object v0
.end method

.method static synthetic access$902(Landroid/support/car/hardware/CarSensorsProxy;J)J
    .locals 0
    .param p0, "x0"    # Landroid/support/car/hardware/CarSensorsProxy;
    .param p1, "x1"    # J

    .line 45
    iput-wide p1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastMagneticFieldDataTime:J

    return-wide p1
.end method

.method private createGpsStatusCarSensorEvent(Landroid/location/GpsStatus;)Landroid/support/car/hardware/CarSensorEvent;
    .locals 19
    .param p1, "gpsStatus"    # Landroid/location/GpsStatus;

    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "event":Landroid/support/car/hardware/CarSensorEvent;
    if-nez p1, :cond_0

    .line 418
    return-object v0

    .line 421
    :cond_0
    const/4 v1, 0x0

    .line 422
    .local v1, "numberInView":I
    const/4 v2, 0x0

    .line 423
    .local v2, "numberInUse":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    .line 424
    .local v4, "satellite":Landroid/location/GpsSatellite;
    add-int/lit8 v1, v1, 0x1

    .line 425
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 426
    add-int/lit8 v2, v2, 0x1

    .line 428
    .end local v4    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    goto :goto_0

    .line 429
    :cond_2
    const/4 v3, 0x4

    mul-int v4, v3, v1

    const/4 v5, 0x0

    add-int/2addr v4, v5

    .line 431
    .local v4, "floatValuesSize":I
    const/4 v13, 0x1

    mul-int v6, v13, v1

    const/4 v14, 0x2

    add-int/lit8 v15, v6, 0x2

    .line 433
    .local v15, "intValuesSize":I
    new-instance v16, Landroid/support/car/hardware/CarSensorEvent;

    const/16 v7, 0x11

    move-object/from16 v12, p0

    iget-wide v8, v12, Landroid/support/car/hardware/CarSensorsProxy;->mLastGpsStatusTime:J

    const/16 v17, 0x0

    move-object/from16 v6, v16

    move v10, v4

    move v11, v15

    move/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Landroid/support/car/hardware/CarSensorEvent;-><init>(IJIII)V

    move-object/from16 v0, v16

    .line 435
    iget-object v6, v0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aput v2, v6, v5

    .line 436
    iget-object v6, v0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aput v1, v6, v13

    .line 437
    const/4 v6, 0x0

    .line 438
    .local v6, "i":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/GpsSatellite;

    .line 439
    .local v8, "satellite":Landroid/location/GpsSatellite;
    mul-int v9, v13, v6

    add-int/2addr v9, v14

    .line 441
    .local v9, "iInt":I
    mul-int v10, v3, v6

    add-int/2addr v10, v5

    .line 443
    .local v10, "iFloat":I
    iget-object v11, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    add-int/lit8 v12, v10, 0x0

    .line 444
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v3

    int-to-float v3, v3

    aput v3, v11, v12

    .line 445
    iget-object v3, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    add-int/lit8 v11, v10, 0x1

    .line 446
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v12

    aput v12, v3, v11

    .line 447
    iget-object v3, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    add-int/lit8 v11, v10, 0x2

    .line 448
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v12

    aput v12, v3, v11

    .line 449
    iget-object v3, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    add-int/lit8 v11, v10, 0x3

    .line 450
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v12

    aput v12, v3, v11

    .line 451
    iget-object v3, v0, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v11

    aput v11, v3, v9

    .line 452
    add-int/lit8 v6, v6, 0x1

    .line 453
    .end local v8    # "satellite":Landroid/location/GpsSatellite;
    .end local v9    # "iInt":I
    .end local v10    # "iFloat":I
    nop

    .line 438
    const/4 v3, 0x4

    goto :goto_1

    .line 454
    :cond_3
    return-object v0
.end method

.method private getSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;
    .locals 13
    .param p1, "sensorType"    # I

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "event":Landroid/support/car/hardware/CarSensorEvent;
    monitor-enter p0

    .line 322
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_2

    const/16 v6, 0xa

    if-eq p1, v6, :cond_1

    const/16 v6, 0xe

    if-eq p1, v6, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 370
    :try_start_0
    const-string v1, "CarSensorsProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSensorEvent]: Unsupported sensor type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 373
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 361
    :pswitch_0
    iget-wide v6, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGyroscopeDataTime:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_3

    .line 362
    new-instance v3, Landroid/support/car/hardware/CarSensorEvent;

    iget-wide v8, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGyroscopeDataTime:J

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    move v7, p1

    invoke-direct/range {v6 .. v12}, Landroid/support/car/hardware/CarSensorEvent;-><init>(IJIII)V

    move-object v0, v3

    .line 363
    iget-object v3, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGyroscopeData:[F

    aget v4, v4, v2

    aput v4, v3, v2

    .line 364
    iget-object v2, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGyroscopeData:[F

    aget v3, v3, v5

    aput v3, v2, v5

    .line 365
    iget-object v2, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGyroscopeData:[F

    aget v3, v3, v1

    aput v3, v2, v1

    goto/16 :goto_0

    .line 356
    :pswitch_1
    iget-wide v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGpsStatusTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 357
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastGpsStatus:Landroid/location/GpsStatus;

    invoke-direct {p0, v1}, Landroid/support/car/hardware/CarSensorsProxy;->createGpsStatusCarSensorEvent(Landroid/location/GpsStatus;)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0

    .line 345
    :cond_0
    iget-wide v6, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerDataTime:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_3

    .line 346
    new-instance v3, Landroid/support/car/hardware/CarSensorEvent;

    iget-wide v8, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerDataTime:J

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    move v7, p1

    invoke-direct/range {v6 .. v12}, Landroid/support/car/hardware/CarSensorEvent;-><init>(IJIII)V

    move-object v0, v3

    .line 347
    iget-object v3, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerData:[F

    aget v4, v4, v2

    aput v4, v3, v2

    .line 349
    iget-object v2, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerData:[F

    aget v3, v3, v5

    aput v3, v2, v5

    .line 351
    iget-object v2, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerData:[F

    aget v3, v3, v1

    aput v3, v2, v1

    goto/16 :goto_0

    .line 339
    :cond_1
    iget-wide v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastLocationTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 340
    new-instance v1, Landroid/support/car/hardware/CarSensorEvent;

    iget-wide v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastLocationTime:J

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v8}, Landroid/support/car/hardware/CarSensorEvent;-><init>(IJIII)V

    move-object v0, v1

    .line 341
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastLocation:Landroid/location/Location;

    invoke-direct {p0, v0, v1}, Landroid/support/car/hardware/CarSensorsProxy;->populateLocationCarSensorEvent(Landroid/support/car/hardware/CarSensorEvent;Landroid/location/Location;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-wide v6, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastMagneticFieldDataTime:J

    cmp-long v6, v6, v3

    if-eqz v6, :cond_3

    iget-wide v6, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerDataTime:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_3

    .line 325
    new-instance v3, Landroid/support/car/hardware/CarSensorEvent;

    iget-wide v6, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastMagneticFieldDataTime:J

    iget-wide v8, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerDataTime:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    move v7, p1

    invoke-direct/range {v6 .. v12}, Landroid/support/car/hardware/CarSensorEvent;-><init>(IJIII)V

    move-object v0, v3

    .line 327
    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy;->mR:[F

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mI:[F

    iget-object v6, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastAccelerometerData:[F

    iget-object v7, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLastMagneticFieldData:[F

    invoke-static {v3, v4, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 329
    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy;->mR:[F

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mOrientation:[F

    invoke-static {v3, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 330
    iget-object v3, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mOrientation:[F

    aget v4, v4, v2

    float-to-double v6, v4

    .line 331
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    aput v4, v3, v2

    .line 332
    iget-object v2, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy;->mOrientation:[F

    aget v3, v3, v5

    float-to-double v3, v3

    .line 333
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v5

    .line 334
    iget-object v2, v0, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy;->mOrientation:[F

    aget v3, v3, v1

    float-to-double v3, v3

    .line 335
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v1

    .line 373
    :cond_3
    :goto_0
    monitor-exit p0

    .line 374
    return-object v0

    .line 373
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initSupportedSensors(Landroid/content/Context;)[I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 196
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 197
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.sensor.compass"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.hardware.sensor.accelerometer"

    .line 198
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    const-string v2, "android.hardware.sensor.accelerometer"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_1
    const-string v2, "android.hardware.sensor.gyroscope"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_2
    const-string v2, "android.hardware.location"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_3
    invoke-static {v0}, Landroid/support/car/hardware/CarSensorsProxy;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    return-object v2
.end method

.method private populateLocationCarSensorEvent(Landroid/support/car/hardware/CarSensorEvent;Landroid/location/Location;)V
    .locals 9
    .param p1, "event"    # Landroid/support/car/hardware/CarSensorEvent;
    .param p2, "location"    # Landroid/location/Location;

    .line 378
    if-nez p2, :cond_0

    .line 379
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x0

    .line 382
    .local v0, "present":I
    const/4 v1, 0x2

    or-int/2addr v0, v1

    .line 383
    iget-object v2, p1, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    .line 384
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const-wide v5, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 386
    const/4 v2, 0x1

    or-int/2addr v0, v2

    .line 387
    iget-object v3, p1, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    .line 388
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    mul-double/2addr v7, v5

    double-to-int v4, v7

    aput v4, v3, v2

    .line 390
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    or-int/lit8 v0, v0, 0x4

    .line 392
    iget-object v2, p1, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    aput v3, v2, v1

    .line 395
    :cond_1
    invoke-virtual {p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    or-int/lit8 v0, v0, 0x8

    .line 397
    iget-object v1, p1, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v2, 0x3

    .line 398
    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    .line 401
    :cond_2
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    or-int/lit8 v0, v0, 0x10

    .line 403
    iget-object v1, p1, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 406
    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 407
    or-int/lit8 v0, v0, 0x20

    .line 408
    iget-object v1, p1, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v2, 0x5

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v3

    aput v3, v1, v2

    .line 411
    :cond_4
    iget-object v1, p1, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 412
    return-void
.end method

.method private pushSensorChanges(I)V
    .locals 4
    .param p1, "sensorType"    # I

    .line 311
    invoke-direct {p0, p1}, Landroid/support/car/hardware/CarSensorsProxy;->getSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v0

    .line 312
    .local v0, "event":Landroid/support/car/hardware/CarSensorEvent;
    if-nez v0, :cond_0

    .line 313
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 316
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    return-void
.end method

.method private static toIntArray(Ljava/util/Collection;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 215
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 216
    .local v0, "len":I
    new-array v1, v0, [I

    .line 217
    .local v1, "arr":[I
    const/4 v2, 0x0

    .line 218
    .local v2, "arrIndex":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 219
    .local v4, "item":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v2

    .line 220
    add-int/lit8 v2, v2, 0x1

    .line 221
    .end local v4    # "item":Ljava/lang/Integer;
    goto :goto_0

    .line 222
    :cond_0
    return-object v1
.end method

.method private updateSensorListeners()V
    .locals 8

    .line 459
    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mListenersMultiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 461
    .local v0, "activeSensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    .line 464
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 471
    :goto_0
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    goto :goto_1

    .line 474
    :cond_1
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 477
    :goto_1
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 478
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 482
    :cond_2
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Landroid/support/car/hardware/CarSensorsProxy;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_3

    .line 479
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Landroid/support/car/hardware/CarSensorsProxy;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v4, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 485
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 486
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mMagneticFieldSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_4

    .line 489
    :cond_4
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mMagneticFieldSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 492
    :goto_4
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 493
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Landroid/support/car/hardware/CarSensorsProxy;->mGyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_5

    .line 496
    :cond_5
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy;->mGyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 498
    :goto_5
    return-void

    .line 461
    .end local v0    # "activeSensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;
    .locals 1
    .param p1, "type"    # I

    .line 307
    invoke-direct {p0, p1}, Landroid/support/car/hardware/CarSensorsProxy;->getSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v0

    return-object v0
.end method

.method public isSensorSupported(I)Z
    .locals 5
    .param p1, "sensorType"    # I

    .line 227
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy;->mSupportedSensors:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 228
    .local v4, "sensor":I
    if-ne v4, p1, :cond_0

    .line 229
    const/4 v0, 0x1

    return v0

    .line 227
    .end local v4    # "sensor":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    :cond_1
    return v2
.end method

.method public registerSensorListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z
    .locals 4
    .param p1, "listener"    # Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;
    .param p2, "sensorType"    # I
    .param p3, "rate"    # I

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "sensorSetChanged":Z
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mListenersMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 245
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mListenersMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/4 v0, 0x1

    .line 249
    :cond_0
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mListenersMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-direct {p0, p2}, Landroid/support/car/hardware/CarSensorsProxy;->pushSensorChanges(I)V

    .line 254
    if-eqz v0, :cond_1

    .line 255
    invoke-direct {p0}, Landroid/support/car/hardware/CarSensorsProxy;->updateSensorListeners()V

    .line 257
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 250
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterSensorListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;
    .param p2, "sensorType"    # I

    .line 262
    if-nez p1, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 266
    .local v0, "sensorSetChanged":Z
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy;->mListenersMultiMap:Ljava/util/Map;

    .line 268
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 269
    .local v1, "sensorTypeListeneres":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;>;"
    if-eqz v1, :cond_1

    .line 270
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy;->mListenersMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const/4 v0, 0x1

    .line 276
    .end local v1    # "sensorTypeListeneres":Ljava/util/Set;, "Ljava/util/Set<Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;>;"
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v0, :cond_2

    .line 278
    invoke-direct {p0}, Landroid/support/car/hardware/CarSensorsProxy;->updateSensorListeners()V

    .line 280
    :cond_2
    return-void

    .line 276
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
