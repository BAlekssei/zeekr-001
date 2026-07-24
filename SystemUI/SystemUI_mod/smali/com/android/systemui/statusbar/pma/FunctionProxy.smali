.class public Lcom/android/systemui/statusbar/pma/FunctionProxy;
.super Ljava/lang/Object;
.source "FunctionProxy.java"


# static fields
.field private static volatile functionProxy:Lcom/android/systemui/statusbar/pma/FunctionProxy;


# instance fields
.field private iAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

.field private iCar:Lcom/ecarx/xui/adaptapi/car/ICar;

.field private iCarFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

.field private iCarInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

.field private iCharging:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

.field private final iDevice:Lcom/ecarx/xui/adaptapi/device/Device;

.field private final iDvr:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

.field private iDvrFunction:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

.field private iDvrManager:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

.field private iHev:Lcom/ecarx/xui/adaptapi/car/hev/IHev;

.field private iSensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

.field private final policy:Lcom/ecarx/xui/adaptapi/policy/Policy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCar:Lcom/ecarx/xui/adaptapi/car/ICar;

    if-nez v0, :cond_0

    .line 76
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/car/Car;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCar:Lcom/ecarx/xui/adaptapi/car/ICar;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCar:Lcom/ecarx/xui/adaptapi/car/ICar;

    if-eqz v0, :cond_2

    .line 81
    :try_start_0
    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-string v0, "FunctionProxy"

    const-string/jumbo v1, "ro.kernel.qemu"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCar:Lcom/ecarx/xui/adaptapi/car/ICar;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/ICar;->getICarFunction()Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCarFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCar:Lcom/ecarx/xui/adaptapi/car/ICar;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/ICar;->getHevManager()Lcom/ecarx/xui/adaptapi/car/hev/IHev;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iHev:Lcom/ecarx/xui/adaptapi/car/hev/IHev;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iHev:Lcom/ecarx/xui/adaptapi/car/hev/IHev;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/hev/IHev;->getChargingManager()Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCharging:Lcom/ecarx/xui/adaptapi/car/hev/ICharging;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCar:Lcom/ecarx/xui/adaptapi/car/ICar;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/ICar;->getSensorManager()Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iSensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCar:Lcom/ecarx/xui/adaptapi/car/ICar;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/car/ICar;->getCarInfoManager()Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCarInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_1
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/policy/Policy;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/policy/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->policy:Lcom/ecarx/xui/adaptapi/policy/Policy;

    .line 94
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/device/Device;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/device/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iDevice:Lcom/ecarx/xui/adaptapi/device/Device;

    .line 95
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iDvr:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    .line 96
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iDvr:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iDvr:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;->getDvrManager()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iDvrManager:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrManager;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iDvr:Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/dvr/forp/Dvr;->getDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iDvrFunction:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    .line 101
    :cond_3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/FunctionProxy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    sget-object v0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->functionProxy:Lcom/android/systemui/statusbar/pma/FunctionProxy;

    if-nez v0, :cond_2

    .line 106
    const-class v0, Lcom/android/systemui/statusbar/pma/FunctionProxy;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/FunctionProxy;->functionProxy:Lcom/android/systemui/statusbar/pma/FunctionProxy;

    if-nez v1, :cond_1

    .line 108
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CommonBean;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "FunctionProxy"

    const-string v2, "getInstance null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/FunctionProxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/FunctionProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/pma/FunctionProxy;->functionProxy:Lcom/android/systemui/statusbar/pma/FunctionProxy;

    .line 113
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 115
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->functionProxy:Lcom/android/systemui/statusbar/pma/FunctionProxy;

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 618
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 619
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public getIAudio()Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    return-object v0
.end method

.method public getICarFunction()Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iCarFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    return-object v0
.end method

.method public getIDvrFunction()Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/FunctionProxy;->iDvrFunction:Lcom/ecarx/xui/adaptapi/dvr/forp/IDvrFunction;

    return-object v0
.end method
