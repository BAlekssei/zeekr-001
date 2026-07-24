.class public Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIGLOBALCallbackImpl;,
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMINAVICallbackImpl;,
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;,
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;,
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;,
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;,
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;,
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;,
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;,
        Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static DRIVER_TEMP_LOWEST:I

.field public static PASSENGER_TEMP_LOWEST:I

.field public static isACCapCallback:Z

.field public static isDCCapCallback:Z

.field private static isInUImodeloading:Z

.field private static is_init_complete:Z


# instance fields
.field public DRIVER_HEAT_GREY_VENTILATION_SHOW:I

.field public DRIVER_HEAT_SHOW_VENTILATION_GREY:I

.field public DRIVER_HEAT_VENTILATION_SHOW:I

.field public DRIVER_ONLY_HEAT_SHOW:I

.field public DRIVER_ONLY_VENTILATION_SHOW:I

.field public NONE:I

.field public PASSENGER_HEAT_GREY_VENTILATION_SHOW:I

.field public PASSENGER_HEAT_SHOW_VENTILATION_GREY:I

.field public PASSENGER_HEAT_VENTILATION_SHOW:I

.field public PASSENGER_ONLY_HEAT_SHOW:I

.field public PASSENGER_ONLY_VENTILATION_SHOW:I

.field private STR_MODE_LAUNCHER_ADNAVI_INDEX:I

.field private STR_MODE_LAUNCHER_CLIMATE_INDEX:I

.field private STR_MODE_LAUNCHER_HOME_INDEX:I

.field private STR_MODE_LAUNCHER_MEDIA_INDEX:I

.field private STR_MODE_LAUNCHER_SETTINGS_INDEX:I

.field private aqi:I

.field private final carRsemEventCallback:Landroid/car/hardware/rsem/CarRSEMYfveManager$CarRSEMYfveCallback;

.field private currentDriverHeat:I

.field private currentDriverVent:I

.field private currentPassengerHeat:I

.field private currentPassengerVent:I

.field private getBattryLevelCount:I

.field private inPm25AVAI:I

.field private isDriveVentilationHeatChange:Z

.field private isPassengerVentilationHeatChange:Z

.field lastTime:J

.field private localConfigListener:Lcom/yfvet/localconfigjni/ILocalConfigListener;

.field private localConfigManager:Lcom/yfvet/localconfigjni/LocalConfigManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;",
            ">;"
        }
    .end annotation
.end field

.field private mCarAudioManager:Landroid/support/car/media/CarAudioManager;

.field private mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

.field private final mCarConnectionCallback:Landroid/support/car/CarConnectionCallback;

.field private mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

.field private final mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

.field private mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

.field private final mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

.field private mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

.field private mCarService:Landroid/support/car/Car;

.field private final mCarSettingEventCallback:Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingEventCallback;

.field private mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

.field private mContext:Landroid/content/Context;

.field private mDisableLoading:Z

.field private mHMIMusicVolumeLister:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;

.field private mHMIOccVolumeLister:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;

.field private mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

.field private final mOTAIconHide:I

.field private final mOTAIconShow:I

.field private final mOTAListener:Lcom/yfvet/javaIpcp/base/IpcpServiceListener;

.field private mOTAService:Lcom/yfvet/javaIpcp/service/OTA/OTAService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSTRModeObserver:Landroid/database/ContentObserver;

.field private mSetCarStateDisposable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingStateChangeCallback:Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingStateChangeCallback;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSystemHMIGLOBALCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIGLOBALCallbackImpl;

.field private mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

.field private mSystemHMIMediaCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;

.field private mSystemHMINaviCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMINAVICallbackImpl;

.field private mSystemHMIPhoneCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;

.field private mUIModeObserver:Landroid/database/ContentObserver;

.field private mUpdateCarStateDisposable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbEventListener:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mUserUnlocked:Z

.field private final micKTVCallback:Landroid/car/hardware/NoMicKTVManager$NoMicKTVCB;

.field oneTime:J

.field private outSideTempAVAI:I

.field private out_level:I

.field private pm25Value:I

.field private songMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 155
    const-string v0, "persist.log.tag"

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    .line 258
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isInUImodeloading:Z

    .line 290
    sput v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_TEMP_LOWEST:I

    .line 291
    const/4 v1, 0x2

    sput v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_TEMP_LOWEST:I

    .line 352
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->is_init_complete:Z

    .line 398
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isACCapCallback:Z

    .line 399
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isDCCapCallback:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_HEAT_VENTILATION_SHOW:I

    .line 270
    const/16 v1, -0x7d0

    iput v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_HEAT_SHOW_VENTILATION_GREY:I

    .line 271
    const/16 v2, -0xbb8

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_HEAT_GREY_VENTILATION_SHOW:I

    .line 272
    const/16 v3, -0xfa0

    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_ONLY_HEAT_SHOW:I

    .line 273
    const/16 v4, -0x1388

    iput v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_ONLY_VENTILATION_SHOW:I

    .line 274
    const/16 v5, -0x1770

    iput v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->NONE:I

    .line 276
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_HEAT_VENTILATION_SHOW:I

    .line 277
    iput v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_HEAT_SHOW_VENTILATION_GREY:I

    .line 278
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_HEAT_GREY_VENTILATION_SHOW:I

    .line 279
    iput v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_ONLY_HEAT_SHOW:I

    .line 280
    iput v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_ONLY_VENTILATION_SHOW:I

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->pm25Value:I

    .line 301
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->songMode:I

    .line 302
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->aqi:I

    .line 303
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->out_level:I

    .line 307
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBattryLevelCount:I

    .line 328
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_MEDIA_INDEX:I

    .line 329
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_CLIMATE_INDEX:I

    .line 330
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_ADNAVI_INDEX:I

    .line 331
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_SETTINGS_INDEX:I

    .line 332
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_HOME_INDEX:I

    .line 339
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAIconHide:I

    .line 340
    iput v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAIconShow:I

    .line 349
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    .line 353
    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 391
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isDriveVentilationHeatChange:Z

    .line 392
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isPassengerVentilationHeatChange:Z

    .line 461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCallbacks:Ljava/util/ArrayList;

    .line 463
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mLock:Ljava/lang/Object;

    .line 1036
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAListener:Lcom/yfvet/javaIpcp/base/IpcpServiceListener;

    .line 3671
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->localConfigListener:Lcom/yfvet/localconfigjni/ILocalConfigListener;

    .line 3840
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$6;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->micKTVCallback:Landroid/car/hardware/NoMicKTVManager$NoMicKTVCB;

    .line 3877
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarConnectionCallback:Landroid/support/car/CarConnectionCallback;

    .line 3982
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4016
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$9;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 4640
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingEventCallback:Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingEventCallback;

    .line 4928
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$11;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSettingStateChangeCallback:Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingStateChangeCallback;

    .line 4958
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    .line 5088
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentDriverHeat:I

    .line 5089
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentDriverVent:I

    .line 5090
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentPassengerVent:I

    .line 5091
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentPassengerHeat:I

    .line 5096
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 5608
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 6033
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->carRsemEventCallback:Landroid/car/hardware/rsem/CarRSEMYfveManager$CarRSEMYfveCallback;

    .line 467
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "CarBodyStateManager"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    .line 471
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    .line 472
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    .line 473
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "systemhmi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/systemHMI/SystemHMIManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    .line 476
    invoke-static {}, Lcom/yfvet/localconfigjni/LocalConfigManager;->getLocalConfigManager()Lcom/yfvet/localconfigjni/LocalConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->localConfigManager:Lcom/yfvet/localconfigjni/LocalConfigManager;

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->localConfigManager:Lcom/yfvet/localconfigjni/LocalConfigManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->localConfigListener:Lcom/yfvet/localconfigjni/ILocalConfigListener;

    invoke-virtual {v0, v1}, Lcom/yfvet/localconfigjni/LocalConfigManager;->registerLocalConfigListener(Lcom/yfvet/localconfigjni/ILocalConfigListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarConnectionCallback:Landroid/support/car/CarConnectionCallback;

    invoke-static {v0, v1}, Landroid/support/car/Car;->createCar(Landroid/content/Context;Landroid/support/car/CarConnectionCallback;)Landroid/support/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarService:Landroid/support/car/Car;

    .line 480
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v1, "ACTION_TEST_MODE_STS_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->watchForUIMode(Landroid/content/Context;)V

    .line 488
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUserManager:Landroid/os/UserManager;

    .line 491
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 492
    .local v1, "userUnlockReceiverFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 496
    new-instance v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUsbEventListener:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;

    .line 497
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 499
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 500
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v3, "ACTION_MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v3, "ACTION_PHONE_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v3, "ACTION_NAVI_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string/jumbo v3, "zeekr.intent.action.MUTE_ALL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v3, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "LocalsHandlerThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 509
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 510
    new-instance v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getTempList()V

    .line 512
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->checkUsbIconState()V

    .line 513
    return-void
.end method

.method private STRModechange()V
    .locals 6

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 582
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "power_str_mode_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 583
    .local v1, "strMode":I
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 584
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STRModechange,strMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBattryLevelCount:I

    .line 587
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->removeMessages(I)V

    .line 588
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendEmptyMessage(I)Z

    .line 589
    const/16 v2, 0x79

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 590
    if-nez v1, :cond_1

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->removeStrModeMessage()V

    .line 592
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    .line 593
    const/16 v2, 0x31

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    goto :goto_0

    .line 594
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 595
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 596
    const-string v2, "CarBodyStateManager"

    const-string v3, "STRModechange  launcher com.zeekr.local"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "strMode":I
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentUiMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateSongMode(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateMicReverb(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateMicVolume(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateMicMode(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_CLIMATE_INDEX:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleLauncherAppInNormalMode(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->connectHAVCService()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->connectCarSensorService()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->connectCarSettingYfveService()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 151
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->connectRSEMService()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->checkSTRMode()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->connectNoMic()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/hvac/CarHvacManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/setting/CarSettingYfveManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STRModechange()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingEventCallback:Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingEventCallback;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager$CarRSEMYfveCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->carRsemEventCallback:Landroid/car/hardware/rsem/CarRSEMYfveManager$CarRSEMYfveCallback;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIPhoneCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIMediaCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMINAVICallbackImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMINaviCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMINAVICallbackImpl;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIGLOBALCallbackImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIGLOBALCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIGLOBALCallbackImpl;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mDisableLoading:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_HOME_INDEX:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBatteryColorValue()V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUserUnlocked:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateWPCChargeStatus(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateWPCChargeMode(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->pm25Value:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->pm25Value:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePm25ValueInternal(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->aqi:I

    return v0
.end method

.method static synthetic access$4502(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->aqi:I

    return p1
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOutsideAQIInternal(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->outSideTempAVAI:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->outSideTempAVAI:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateRoadSlipStateInternal(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # F

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOutsideTempInternal(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->inPm25AVAI:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->inPm25AVAI:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateInPm25StateInternal(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateEnduranceMileage(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateGear(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateSpeed(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentDriverHeat:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentDriverHeat:I

    return p1
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentDriverVent:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentDriverVent:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isDriveVentilationHeatChange:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isDriveVentilationHeatChange:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentPassengerHeat:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentPassengerHeat:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentPassengerVent:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->currentPassengerVent:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->processEventInner(II[B)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isPassengerVentilationHeatChange:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isPassengerVentilationHeatChange:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->syncDeviceLanguage()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->onVolumeStateChanged(II)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$6400(Ljava/util/Locale;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Locale;

    .line 151
    invoke-static {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->createOTAServiceListener()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setUsbStorageStatus()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # Landroid/os/Message;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lunchNextAppInSTRMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # Landroid/os/Message;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lunchNextAppNormalBootMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->checkCarSpeed()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->queryCarConfig(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->checkSupportElectricDoor()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBattryLevelCount:I

    return v0
.end method

.method static synthetic access$7102(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBattryLevelCount:I

    return p1
.end method

.method static synthetic access$7112(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBattryLevelCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBattryLevelCount:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->out_level:I

    return v0
.end method

.method static synthetic access$7202(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->out_level:I

    return p1
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/media/CarAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarAudioManager:Landroid/support/car/media/CarAudioManager;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHMIMusicVolumeLister:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHMIOccVolumeLister:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->songMode:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->songMode:I

    return p1
.end method

.method private checkCarSpeed()V
    .locals 4

    .line 862
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x0

    .line 864
    .local v0, "carSpeed":I
    const/4 v1, 0x0

    .line 866
    .local v1, "event":Landroid/support/car/hardware/CarSensorEvent;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v2
    :try_end_0
    .catch Landroid/support/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 869
    goto :goto_0

    .line 867
    :catch_0
    move-exception v2

    .line 868
    .local v2, "e":Landroid/support/car/CarNotConnectedException;
    invoke-virtual {v2}, Landroid/support/car/CarNotConnectedException;->printStackTrace()V

    .line 870
    .end local v2    # "e":Landroid/support/car/CarNotConnectedException;
    :goto_0
    if-eqz v1, :cond_0

    .line 872
    :try_start_1
    iget-object v2, v1, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0xa

    move v0, v2

    .line 873
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput v0, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCarSpeed:I

    .line 874
    const/16 v2, 0x32

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 877
    goto :goto_1

    .line 875
    :catch_1
    move-exception v2

    .line 876
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 878
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    const/16 v2, 0x5dc

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleCheckCarSpeed(I)V

    .line 881
    .end local v0    # "carSpeed":I
    .end local v1    # "event":Landroid/support/car/hardware/CarSensorEvent;
    :cond_0
    return-void
.end method

.method private checkIpcpService()V
    .locals 2

    .line 935
    const-string v0, "connectivity.IpcpHandlerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "init.svc.ipcpservice"

    .line 936
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "running"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 937
    :cond_0
    const-string/jumbo v0, "sys.restart_ipcpservice"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_1
    return-void
.end method

.method private checkSTRMode()V
    .locals 6

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 747
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$1;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSTRModeObserver:Landroid/database/ContentObserver;

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_str_mode_state"

    .line 760
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSTRModeObserver:Landroid/database/ContentObserver;

    .line 759
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 764
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "power_str_mode_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 765
    .local v1, "strMode":I
    const-string/jumbo v2, "sys.strmode.state"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "strState":Ljava/lang/String;
    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    const-string v4, "power_str_mode_state"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 769
    return-void

    .line 771
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 772
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSTRMode,strMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_1
    nop

    .line 779
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "strMode":I
    .end local v2    # "strState":Ljava/lang/String;
    goto :goto_0

    .line 780
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 781
    const-string v0, "CarBodyStateManager"

    const-string v1, "checkSTRMode,mContext==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_3
    :goto_0
    return-void
.end method

.method private checkSupportElectricDoor()V
    .locals 4

    .line 3758
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CHECK_SUPPORT_ELECTRIC_DOOR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3759
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3760
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3762
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fFBOog4b_IDNuoHakzvMu-tJbcM;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fFBOog4b_IDNuoHakzvMu-tJbcM;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3773
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8qrbNSfdtfKP06rCAeTB27mfe4A;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8qrbNSfdtfKP06rCAeTB27mfe4A;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SI2Qpo-PrrAbJ_a1lY3m-qFOrWs;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SI2Qpo-PrrAbJ_a1lY3m-qFOrWs;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3781
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CHECK_SUPPORT_ELECTRIC_DOOR"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3782
    return-void
.end method

.method private checkUsbIconState()V
    .locals 4

    .line 942
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 944
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 946
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private closeDriverVentilationAndHeat()V
    .locals 4

    .line 1840
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DRIVER_HEAT_VENTILATION_CLOSE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1841
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 1842
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1844
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverVentilationShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {v2, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 1845
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$POfj4PXyq6rYR_mQC8shKZrrJUU;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$POfj4PXyq6rYR_mQC8shKZrrJUU;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$zYJdnx7syKdGdDiGv2-I4Glodb8;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$zYJdnx7syKdGdDiGv2-I4Glodb8;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1850
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DRIVER_HEAT_VENTILATION_CLOSE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    return-void
.end method

.method private closePassengerVentilationAndHeat()V
    .locals 4

    .line 1958
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PASSENGER_VENTILATION_HEAT_CLOSE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1959
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 1960
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1963
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerVentilationShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {v2, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 1964
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$gJLSp9aARALb5u3sXIneeltw1gw;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$gJLSp9aARALb5u3sXIneeltw1gw;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sTTrzxb7HuZERcgvqPXxAPFT7jA;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sTTrzxb7HuZERcgvqPXxAPFT7jA;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1968
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PASSENGER_VENTILATION_HEAT_CLOSE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    return-void
.end method

.method private connectCarSensorService()V
    .locals 4

    .line 4155
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarService:Landroid/support/car/Car;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/support/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/car/hardware/CarSensorManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    .line 4156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    if-eqz v0, :cond_1

    .line 4157
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const v2, 0x60000002

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4158
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const v2, 0x60000001

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4159
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const v2, 0x60000003

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4160
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const v2, 0x60000004

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4161
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const v2, 0x60000012

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4162
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const v2, 0x60000013

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4163
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const v2, 0x6000002c

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4164
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const v2, 0x60000007

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4165
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const v2, 0x60000009

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4166
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4167
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorEventCallback:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/car/hardware/CarSensorManager;->addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    .line 4168
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentCarGear()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCarGear:I

    .line 4169
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4170
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectCarSensorService mCarBodyStateData.mCarGear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCarGear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    :cond_0
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4177
    :cond_1
    goto :goto_0

    .line 4175
    :catch_0
    move-exception v0

    .line 4176
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarBodyStateManager"

    const-string v2, "Connect Car Sensor Service Error!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private connectCarSettingYfveService()V
    .locals 6

    .line 4182
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarService:Landroid/support/car/Car;

    const-string/jumbo v2, "setting_yfve"

    invoke-virtual {v1, v2}, Landroid/support/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/setting/CarSettingYfveManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    .line 4183
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    if-eqz v1, :cond_1

    .line 4184
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingEventCallback:Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingEventCallback;

    invoke-virtual {v1, v2}, Landroid/car/hardware/setting/CarSettingYfveManager;->registerCallback(Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingEventCallback;)V

    .line 4185
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSettingStateChangeCallback:Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingStateChangeCallback;

    invoke-virtual {v1, v2}, Landroid/car/hardware/setting/CarSettingYfveManager;->registerSettingCallback(Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingStateChangeCallback;)V

    .line 4186
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x401c

    const/high16 v4, -0x80000000

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mUnitDis:I

    .line 4187
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x601b

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeStatus:I

    .line 4188
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x601a

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeMode:I

    .line 4189
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x60ff

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mUsgMode:I

    .line 4191
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x82

    const/16 v5, 0x80

    invoke-virtual {v2, v3, v5}, Landroid/car/hardware/setting/CarSettingYfveManager;->getCarSettingPropertyStatus(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCapAvail:I

    .line 4192
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v3, 0x21020500

    const/16 v5, 0x8

    invoke-virtual {v2, v3, v5}, Landroid/car/hardware/setting/CarSettingYfveManager;->getCarSettingPropertyStatus(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCapAvail:I

    .line 4193
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x7030

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    .line 4194
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x6002

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getFloatProperty(II)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeSOCLevel:F

    .line 4195
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v3, 0x9013

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSceneMode:I

    .line 4196
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v3, 0xa901

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSentryMode:I

    .line 4197
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x6138

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLocationMode:I

    .line 4198
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x6006

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugACState:I

    .line 4199
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v3, 0x6007

    invoke-virtual {v2, v3, v4}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugDCState:I

    .line 4200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->checkSupportElectricDoor()V

    .line 4201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDvrView()V

    .line 4202
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTopBarBatteryColor\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryColor(I)V

    .line 4204
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeSOCLevel:F

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeSOCLevel(ZF)V

    .line 4205
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4206
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectCarSettingYfveService mWPCChargeStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mWPCChargeMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mUsgMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mUsgMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mChargeDCCapAvail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCapAvail:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mChargeACCapAvail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCapAvail:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSceneMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSceneMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSentryMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSentryMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mLocationMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLocationMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4211
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCarSettingTimeFormat()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTimeFormat:I

    .line 4212
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 4213
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 4214
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 4215
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 4216
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 4217
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryTemp(ZI)V

    .line 4218
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryPreheatingButton(ZI)V

    .line 4219
    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    goto :goto_0

    .line 4221
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 4222
    const-string v1, "CarBodyStateManager"

    const-string v2, "connectCarSettingYfveService mCarSettingYfveManager == null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4227
    :cond_2
    :goto_0
    goto :goto_1

    .line 4225
    :catch_0
    move-exception v1

    .line 4226
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connect Car Settings Service Error! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4228
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private connectHAVCService()V
    .locals 7

    .line 4097
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarService:Landroid/support/car/Car;

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Landroid/support/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 4098
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_4

    .line 4099
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHVACEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->registerCallback(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 4100
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x4003

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->getBooleanProperty(II)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    .line 4102
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x4001

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/car/hardware/hvac/CarHvacManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    .line 4104
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v2, v4}, Landroid/car/hardware/hvac/CarHvacManager;->getPropertyStatus(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDriverTempAVAI:I

    .line 4106
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v5}, Landroid/car/hardware/hvac/CarHvacManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    .line 4108
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v2, v5}, Landroid/car/hardware/hvac/CarHvacManager;->getPropertyStatus(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerTempAVAI:I

    .line 4110
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x8

    const/16 v6, 0x4004

    invoke-virtual {v1, v6, v2}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    .line 4112
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v6, v2}, Landroid/car/hardware/hvac/CarHvacManager;->getPropertyStatus(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateAVAI:I

    .line 4114
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    if-gtz v0, :cond_1

    .line 4115
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x5503

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    goto :goto_1

    .line 4117
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    .line 4120
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x5501

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->getPropertyStatus(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2TimeOut:I

    .line 4121
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 4122
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectHAVCService mPreClimateShift: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " connectHAVCService mLastClimateShift: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " connectHAVCService mPassengerTempAVAI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerTempAVAI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " connectHAVCService mPrePassengerTemp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " connectHAVCService mDriverTempAVAI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDriverTempAVAI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " connectHAVCService mPreDriverTemp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " connectHAVCService mAQICO2TimeOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2TimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " connectHAVCService isAcPowerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " connectHAVCService mPreClimateAVAI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateAVAI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAcPowerChange(ZZ)V

    .line 4133
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDriverTemp(ZF)V

    .line 4134
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePassengerTemp(ZF)V

    .line 4135
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAQICO2AutoStateInternal(ZI)V

    .line 4136
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2TimeOut:I

    if-ne v1, v4, :cond_3

    .line 4137
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAQICO2LevelInternal(ZI)V

    goto :goto_2

    .line 4139
    :cond_3
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAQICO2LevelInternal(ZI)V

    goto :goto_2

    .line 4142
    :cond_4
    const-string v0, "CarBodyStateManager"

    const-string v1, "mCarHAVCManager == null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/support/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4148
    :catch_0
    move-exception v0

    .line 4149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 4146
    :catch_1
    move-exception v0

    .line 4147
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    goto :goto_2

    .line 4144
    :catch_2
    move-exception v0

    .line 4145
    .local v0, "e":Landroid/support/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/support/car/CarNotConnectedException;->printStackTrace()V

    .line 4150
    .end local v0    # "e":Landroid/support/car/CarNotConnectedException;
    :goto_2
    nop

    .line 4151
    :goto_3
    return-void
.end method

.method private connectNoMic()V
    .locals 3

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarService:Landroid/support/car/Car;

    const-string v1, "nomic_ktv"

    invoke-virtual {v0, v1}, Landroid/support/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/NoMicKTVManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    .line 629
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMicVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v2}, Landroid/car/hardware/NoMicKTVManager;->getMicVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMicReverb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v2}, Landroid/car/hardware/NoMicKTVManager;->getMicReverb()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->micKTVCallback:Landroid/car/hardware/NoMicKTVManager$NoMicKTVCB;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->registerCallback(Landroid/car/hardware/NoMicKTVManager$NoMicKTVCB;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :cond_0
    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarBodyStateManager"

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private connectRSEMService()V
    .locals 5

    .line 4045
    :try_start_0
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4046
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectRSEMService... mContext.getPackageName() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarService:Landroid/support/car/Car;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/car/media/CarAudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarAudioManager:Landroid/support/car/media/CarAudioManager;

    .line 4049
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mAudioManager:Landroid/media/AudioManager;

    .line 4050
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarService:Landroid/support/car/Car;

    const-string v1, "car_rsem"

    invoke-virtual {v0, v1}, Landroid/support/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/rsem/CarRSEMYfveManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    .line 4051
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4052
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectRSEMService mCarRSEMYfveManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is_init_complete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->is_init_complete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->is_init_complete:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4055
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v2, 0x63

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4056
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4057
    sput-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->is_init_complete:Z

    .line 4060
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4061
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->carRsemEventCallback:Landroid/car/hardware/rsem/CarRSEMYfveManager$CarRSEMYfveCallback;

    invoke-virtual {v0, v2}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->registerCallback(Landroid/car/hardware/rsem/CarRSEMYfveManager$CarRSEMYfveCallback;)V

    .line 4063
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIPhoneCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;

    .line 4064
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIMediaCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;

    .line 4065
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMINAVICallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMINAVICallbackImpl;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMINaviCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMINAVICallbackImpl;

    .line 4066
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIGLOBALCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIGLOBALCallbackImpl;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIGLOBALCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIGLOBALCallbackImpl;

    .line 4068
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIPhoneCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;

    invoke-virtual {v0, v2}, Landroid/app/systemHMI/SystemHMIManager;->subscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    .line 4069
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIMediaCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;

    invoke-virtual {v0, v2}, Landroid/app/systemHMI/SystemHMIManager;->subscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    .line 4070
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMINaviCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMINAVICallbackImpl;

    invoke-virtual {v0, v2}, Landroid/app/systemHMI/SystemHMIManager;->subscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    .line 4071
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIGLOBALCallbackImpl:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIGLOBALCallbackImpl;

    invoke-virtual {v0, v2}, Landroid/app/systemHMI/SystemHMIManager;->subscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    .line 4073
    const/4 v0, 0x0

    .line 4074
    .local v0, "audio_level":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_4

    .line 4075
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    move v0, v2

    .line 4077
    :cond_4
    const-string v2, "CarBodyStateManager"

    const-string v3, "connectRSEMService: init media volume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setMediaVolume2Hmi(I)V

    .line 4079
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    const v3, 0x50010

    const/high16 v4, -0x80000000

    invoke-virtual {v2, v3, v4, v1}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    .line 4081
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    if-eqz v2, :cond_6

    .line 4082
    const v2, 0x50002

    if-nez v0, :cond_5

    .line 4083
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    invoke-virtual {v3, v2, v4, v1}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    goto :goto_0

    .line 4085
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    .line 4087
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    const v2, 0x50001

    invoke-virtual {v1, v2, v4, v0}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4092
    .end local v0    # "audio_level":I
    :cond_6
    goto :goto_1

    .line 4090
    :catch_0
    move-exception v0

    .line 4091
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarBodyStateManager"

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4093
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private createOTAServiceListener()V
    .locals 5

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAService:Lcom/yfvet/javaIpcp/service/OTA/OTAService;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1010
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1011
    const-string v0, "CarBodyStateManager"

    const-string v2, "createOTAServiceListener OTAService"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_0
    new-instance v0, Lcom/yfvet/javaIpcp/service/OTA/OTAService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAListener:Lcom/yfvet/javaIpcp/base/IpcpServiceListener;

    invoke-direct {v0, v2}, Lcom/yfvet/javaIpcp/service/OTA/OTAService;-><init>(Lcom/yfvet/javaIpcp/base/IpcpServiceListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAService:Lcom/yfvet/javaIpcp/service/OTA/OTAService;

    .line 1014
    const-string v0, "persist.ota.status"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    goto :goto_0

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAService:Lcom/yfvet/javaIpcp/service/OTA/OTAService;

    invoke-virtual {v0}, Lcom/yfvet/javaIpcp/service/OTA/OTAService;->hasSetIpcpServiceListener()Z

    move-result v0

    .line 1017
    .local v0, "otaHasLister":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1018
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createOTAServiceListener otaHasLister "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_2
    if-nez v0, :cond_3

    .line 1021
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAService:Lcom/yfvet/javaIpcp/service/OTA/OTAService;

    invoke-virtual {v2}, Lcom/yfvet/javaIpcp/service/OTA/OTAService;->onDestroy()V

    .line 1022
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAService:Lcom/yfvet/javaIpcp/service/OTA/OTAService;

    .line 1023
    new-instance v2, Lcom/yfvet/javaIpcp/service/OTA/OTAService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAListener:Lcom/yfvet/javaIpcp/base/IpcpServiceListener;

    invoke-direct {v2, v3}, Lcom/yfvet/javaIpcp/service/OTA/OTAService;-><init>(Lcom/yfvet/javaIpcp/base/IpcpServiceListener;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mOTAService:Lcom/yfvet/javaIpcp/service/OTA/OTAService;

    .line 1024
    const-string v2, "persist.ota.status"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    .line 1027
    .end local v0    # "otaHasLister":Z
    :cond_3
    :goto_0
    return-void
.end method

.method private getAdjustableTempList(IFF)Ljava/util/List;
    .locals 8
    .param p1, "misCelsius"    # I
    .param p2, "max"    # F
    .param p3, "min"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2990
    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2991
    .local v1, "isCelsius":Z
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2992
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-ne v1, v0, :cond_1

    .line 2993
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v3, p3, v0

    .local v3, "i":F
    :goto_1
    add-float v4, p2, v0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_2

    .line 2994
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2993
    add-float/2addr v3, v0

    goto :goto_1

    .line 2997
    .end local v3    # "i":F
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2998
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    const v3, 0x3fe66666    # 1.8f

    mul-float v4, p2, v3

    const/high16 v5, 0x42000000    # 32.0f

    add-float/2addr v4, v5

    .line 2999
    .end local p2    # "max":F
    .local v4, "max":F
    float-to-double v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 3000
    .end local v4    # "max":F
    .restart local p2    # "max":F
    mul-float/2addr v3, p3

    add-float/2addr v3, v5

    .line 3001
    .end local p3    # "min":F
    .local v3, "min":F
    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 3002
    .end local v3    # "min":F
    .restart local p3    # "min":F
    const/high16 v3, 0x40000000    # 2.0f

    sub-float v3, p3, v3

    .local v3, "i":F
    :goto_2
    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v4, p2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_2

    .line 3003
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3002
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    goto :goto_2

    .line 3006
    .end local v0    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v3    # "i":F
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTempSize:I

    .line 3007
    return-object v2
.end method

.method private getBatteryColorValue()V
    .locals 4

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    if-eqz v0, :cond_1

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x7030

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    .line 790
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 791
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryColor\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getBatteryColorValue e :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 797
    :cond_1
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCarSettingYfveManager ==null , getBatteryColor :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :goto_1
    return-void
.end method

.method private getCelsiusTempByFahrenheit(F)F
    .locals 5
    .param p1, "mFahrenheitTemp"    # F

    .line 1712
    const/high16 v0, 0x426c0000    # 59.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x42aa0000    # 85.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mFahrenheitTempList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1716
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCelsiusTempList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1717
    .local v1, "celsiusTemp":F
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1718
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCelsiusTempByFahrenheit temp =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1720
    :cond_1
    return v1

    .line 1713
    .end local v0    # "index":I
    .end local v1    # "celsiusTemp":F
    :cond_2
    :goto_0
    const/high16 v0, 0x41b00000    # 22.0f

    return v0
.end method

.method private getCurrentUiMode(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1217
    if-nez p1, :cond_0

    .line 1218
    const/4 v0, 0x1

    return v0

    .line 1220
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1223
    .local v0, "defaultNightMode":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getDoorPos(I)I
    .locals 3
    .param p1, "doorArea"    # I

    .line 1283
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1284
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1285
    const-string v0, "CarBodyStateManager"

    const-string v2, "getDoorPos mCarSettingYfveManager == null "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    return v1

    .line 1289
    :cond_1
    move v0, v1

    .line 1291
    .local v0, "doorPosValue":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v2, 0x8013

    invoke-virtual {v1, v2, p1}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1295
    goto :goto_0

    .line 1292
    :catch_0
    move-exception v1

    .line 1293
    .local v1, "e":Landroid/car/CarNotConnectedException;
    const/4 v0, 0x0

    .line 1294
    invoke-virtual {v1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 1296
    .end local v1    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    return v0
.end method

.method private getDriverHeatShift(ZI)Lio/reactivex/Observable;
    .locals 1
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2857
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Of-nsxn4118IK1Zc0HpefUkEKk4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Of-nsxn4118IK1Zc0HpefUkEKk4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getDriverVentilationShift(ZI)Lio/reactivex/Observable;
    .locals 1
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2836
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Kfqj8pTJnKZn8HDJ786C3-Ssa6w;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Kfqj8pTJnKZn8HDJ786C3-Ssa6w;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getFahrenheitTempByCelsius(F)F
    .locals 5
    .param p1, "mCelsiusTemp"    # F

    .line 1724
    const/high16 v0, 0x41780000    # 15.5f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x41e40000    # 28.5f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCelsiusTempList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1728
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mFahrenheitTempList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1729
    .local v1, "fahrenheitTemp":F
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1730
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFahrenheitTempByCelsius temp =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1732
    :cond_1
    return v1

    .line 1725
    .end local v0    # "index":I
    .end local v1    # "fahrenheitTemp":F
    :cond_2
    :goto_0
    const/high16 v0, 0x42900000    # 72.0f

    return v0
.end method

.method private getPassengerHeatShift(ZI)Lio/reactivex/Observable;
    .locals 1
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2792
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$RDeKMzjtMjSWp-md-ttTyVJNExI;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$RDeKMzjtMjSWp-md-ttTyVJNExI;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getPassengerVentilationShift(ZI)Lio/reactivex/Observable;
    .locals 1
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2774
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Mu6mKdLvnqIGr9t7-KnzumXZn3o;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Mu6mKdLvnqIGr9t7-KnzumXZn3o;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private getTempList()V
    .locals 3

    .line 1699
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCelsiusTempList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCelsiusTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1700
    :cond_0
    const/high16 v0, 0x41780000    # 15.5f

    .local v0, "i":F
    :goto_0
    const/high16 v1, 0x41e40000    # 28.5f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 1701
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCelsiusTempList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1700
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    goto :goto_0

    .line 1704
    .end local v0    # "i":F
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mFahrenheitTempList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mFahrenheitTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1705
    :cond_2
    const/high16 v0, 0x426c0000    # 59.0f

    .restart local v0    # "i":F
    :goto_1
    const/high16 v1, 0x42aa0000    # 85.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    .line 1706
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mFahrenheitTempList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    goto :goto_1

    .line 1709
    .end local v0    # "i":F
    :cond_3
    return-void
.end method

.method private handleCheckCarSpeed(I)V
    .locals 4
    .param p1, "delayMs"    # I

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    if-eqz v0, :cond_1

    .line 853
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 854
    const-string v0, "CarBodyStateManager"

    const-string v1, "handleCheckCarSpeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 857
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 859
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private handleLauncherAppByIndexInSTRMode(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "delayMs"    # I

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 569
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 571
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private handleLauncherAppInNormalMode(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "delayMs"    # I

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 807
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 808
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 810
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static synthetic lambda$checkSupportElectricDoor$244(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Lio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3763
    const/16 v0, 0x1e1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->queryCarConfig(I)I

    move-result v0

    .line 3764
    .local v0, "status":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3765
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSupportElectricDoor: isSupportElectricDoor status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3768
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isSupportElectricDoor:Z

    goto :goto_0

    .line 3770
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isSupportElectricDoor:Z

    .line 3772
    :goto_0
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3773
    return-void
.end method

.method public static synthetic lambda$checkSupportElectricDoor$245(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3774
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3775
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSupportElectricDoor: isSupportElectricDoor  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isSupportElectricDoor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    :cond_0
    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3778
    return-void
.end method

.method static synthetic lambda$checkSupportElectricDoor$246(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3779
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSupportElectricDoor Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3780
    return-void
.end method

.method static synthetic lambda$closeDriverVentilationAndHeat$13(Ljava/lang/String;)V
    .locals 2
    .param p0, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1846
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1847
    return-void
.end method

.method static synthetic lambda$closeDriverVentilationAndHeat$14(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1848
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    const-string v1, "Close driver ventilation and heat failure %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1849
    return-void
.end method

.method static synthetic lambda$closePassengerVentilationAndHeat$21(Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1965
    return-void
.end method

.method static synthetic lambda$closePassengerVentilationAndHeat$22(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1966
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    const-string v1, "Close passenger ventilation and heat failure %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1967
    return-void
.end method

.method public static synthetic lambda$getDriverHeatShift$127(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/ObservableEmitter;)V
    .locals 5
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I
    .param p3, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2859
    if-eqz p1, :cond_0

    .line 2860
    move v0, p2

    .local v0, "driverHeat":I
    goto :goto_0

    .line 2862
    .end local v0    # "driverHeat":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 2863
    const/4 v1, 0x1

    const/16 v2, 0x4008

    invoke-virtual {v0, v2, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    .line 2864
    .restart local v0    # "driverHeat":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v4, v2, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getPropertyStatus(II)I

    move-result v1

    iput v1, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    .line 2865
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2866
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverHeatShift: driver heat avai = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2870
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverHeatShift(),  mSeatLeftTempAvai = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " driverHeat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 2873
    return-void
.end method

.method public static synthetic lambda$getDriverVentilationShift$126(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/ObservableEmitter;)V
    .locals 5
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I
    .param p3, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2837
    const/4 v0, 0x0

    .line 2838
    .local v0, "driverVentilation":I
    if-eqz p1, :cond_0

    .line 2839
    move v0, p2

    goto :goto_0

    .line 2841
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 2842
    const/4 v2, 0x1

    const/16 v3, 0x4010

    invoke-virtual {v1, v3, v2}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    .line 2843
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 2844
    invoke-virtual {v4, v3, v2}, Landroid/car/hardware/hvac/CarHvacManager;->getPropertyStatus(II)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    .line 2845
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2846
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverVentilationShift: driver vent avai = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2850
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriverVentilationShift(),  mSeatLeftVentilationAvai = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " driverVentilation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 2853
    return-void
.end method

.method public static synthetic lambda$getPassengerHeatShift$122(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/ObservableEmitter;)V
    .locals 5
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I
    .param p3, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2794
    if-eqz p1, :cond_0

    .line 2795
    move v0, p2

    .local v0, "passengerHeat":I
    goto :goto_0

    .line 2797
    .end local v0    # "passengerHeat":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 2798
    const/4 v1, 0x4

    const/16 v2, 0x4008

    invoke-virtual {v0, v2, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    .line 2799
    .restart local v0    # "passengerHeat":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 2800
    invoke-virtual {v4, v2, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getPropertyStatus(II)I

    move-result v1

    iput v1, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    .line 2802
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2803
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPassengerHeatShift passengerHeat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 2806
    return-void
.end method

.method public static synthetic lambda$getPassengerVentilationShift$121(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/ObservableEmitter;)V
    .locals 5
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I
    .param p3, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2776
    if-eqz p1, :cond_0

    .line 2777
    move v0, p2

    .local v0, "passengerVentilation":I
    goto :goto_0

    .line 2779
    .end local v0    # "passengerVentilation":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 2780
    const/4 v1, 0x4

    const/16 v2, 0x4010

    invoke-virtual {v0, v2, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    .line 2781
    .restart local v0    # "passengerVentilation":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 2782
    invoke-virtual {v4, v2, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getPropertyStatus(II)I

    move-result v1

    iput v1, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    .line 2784
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2785
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPassengerVentilationShift passengerVentilation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 2788
    return-void
.end method

.method static synthetic lambda$hideBtDialerIcon$247(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .param p0, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6624
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 6625
    return-void
.end method

.method public static synthetic lambda$hideBtDialerIcon$248(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6626
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6627
    const-string v0, "CarBodyStateManager"

    const-string v1, "hideBtDialerIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6629
    :cond_0
    const/16 v0, 0x34

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 6630
    return-void
.end method

.method static synthetic lambda$hideBtDialerIcon$249(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6631
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6632
    const-string v0, "CarBodyStateManager"

    const-string v1, "hide bt dialer icon error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6634
    :cond_0
    return-void
.end method

.method static synthetic lambda$hideRemoteLogcatIcon$253(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .param p0, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6664
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 6665
    return-void
.end method

.method public static synthetic lambda$hideRemoteLogcatIcon$254(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6666
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6667
    const-string v0, "CarBodyStateManager"

    const-string v1, "hideRemoteLogcatIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6669
    :cond_0
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 6670
    return-void
.end method

.method static synthetic lambda$hideRemoteLogcatIcon$255(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6671
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6672
    const-string v0, "CarBodyStateManager"

    const-string v1, "hide remote logcat icon error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6674
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setAcPowerState$6(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZLio/reactivex/CompletableEmitter;)V
    .locals 3
    .param p1, "isPowerState"    # Z
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1741
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v1, 0x4003

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setBooleanProperty(IIZ)V

    .line 1742
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 1743
    return-void
.end method

.method static synthetic lambda$setAcPowerState$7()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1744
    return-void
.end method

.method static synthetic lambda$setAcPowerState$8(ZLjava/lang/Throwable;)V
    .locals 3
    .param p0, "isPowerState"    # Z
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1745
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1746
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set Ac Power State Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1748
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setCarDoorStatus$109(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;IILio/reactivex/CompletableEmitter;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "doorArea"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2657
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2658
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCarDoorStatus: value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , doorArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v1, 0x4004

    invoke-virtual {v0, v1, p2, p1}, Landroid/car/hardware/setting/CarSettingYfveManager;->setIntProperty(III)V

    .line 2661
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2662
    return-void
.end method

.method static synthetic lambda$setCarDoorStatus$110()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2663
    return-void
.end method

.method static synthetic lambda$setCarDoorStatus$111(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2664
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "setCarDoorStatus Failure "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2665
    return-void
.end method

.method public static synthetic lambda$setChargeACCapOn$106(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "isOn"    # Z
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2628
    move v0, p1

    .line 2629
    .local v0, "value":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2630
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setChargeACCapOn: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , isOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x4003

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v0}, Landroid/car/hardware/setting/CarSettingYfveManager;->setIntProperty(III)V

    .line 2633
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2634
    return-void
.end method

.method static synthetic lambda$setChargeACCapOn$107()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2635
    return-void
.end method

.method static synthetic lambda$setChargeACCapOn$108(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2636
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "setChargeACCapOn Failure "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2637
    return-void
.end method

.method public static synthetic lambda$setChargeDCCapOn$103(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "isOn"    # Z
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2609
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2610
    .local v0, "value":I
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2611
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setChargeDCCapOn: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , isOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x4003

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3, v0}, Landroid/car/hardware/setting/CarSettingYfveManager;->setIntProperty(III)V

    .line 2614
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2615
    return-void
.end method

.method static synthetic lambda$setChargeDCCapOn$104()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2616
    return-void
.end method

.method static synthetic lambda$setChargeDCCapOn$105(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2617
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "setChargeDCCapOn Failure "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2618
    return-void
.end method

.method public static synthetic lambda$setClimateShift$82(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 3
    .param p1, "shift"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2471
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2472
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClimateShift: shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v1, 0x4004

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setIntProperty(III)V

    .line 2475
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2476
    return-void
.end method

.method static synthetic lambda$setClimateShift$83()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2477
    return-void
.end method

.method static synthetic lambda$setClimateShift$84(ILjava/lang/Throwable;)V
    .locals 3
    .param p0, "shift"    # I
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2478
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set Climate Shift Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2479
    return-void
.end method

.method static synthetic lambda$setDriverHeatShift$10(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1820
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    const-string v1, "Set driver heat failure %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1821
    return-void
.end method

.method static synthetic lambda$setDriverHeatShift$9(Ljava/lang/String;)V
    .locals 2
    .param p0, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1818
    const-string v0, "CarBodyStateManager"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1819
    return-void
.end method

.method public static synthetic lambda$setDriverHeatShiftInternal$15(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/ObservableEmitter;)V
    .locals 3
    .param p1, "shift"    # I
    .param p2, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1855
    const-string v0, "launcher_dock_driver_Seat_heating_set"

    const-string v1, "ac_driver_Seat_heating_status"

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackHeatVentilation(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1856
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/4 v1, 0x1

    const/16 v2, 0x4008

    invoke-virtual {v0, v2, v1, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setIntProperty(III)V

    .line 1857
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1858
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set driver heat shift "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_0
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 1861
    return-void
.end method

.method public static synthetic lambda$setDriverTemp$0(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;FLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "temp"    # F
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1636
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1637
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDriverTemp: Celsius ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getIsCelsius()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getIsCelsius()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCelsiusTempByFahrenheit(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    goto :goto_0

    .line 1642
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    .line 1644
    :goto_0
    const-string v0, "launcher_dock_ltem_set"

    const-string v1, "ac_tem_status"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    const-string/jumbo v3, "\u6ed1\u52a8\u64cd\u4f5c"

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackTemp(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 1645
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v1, 0x4001

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->setFloatProperty(IIF)V

    .line 1646
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 1647
    return-void
.end method

.method public static synthetic lambda$setDriverTemp$1(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1648
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1649
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Driver Temp success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1652
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setDriverTemp$2(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1653
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1654
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Driver Temp failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1656
    :cond_0
    return-void
.end method

.method static synthetic lambda$setDriverVentilationShift$11(Ljava/lang/String;)V
    .locals 2
    .param p0, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1832
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1833
    return-void
.end method

.method static synthetic lambda$setDriverVentilationShift$12(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1834
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    const-string v1, "Set driver ventilation failure %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1835
    return-void
.end method

.method public static synthetic lambda$setDriverVentilationShiftInternal$16(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/ObservableEmitter;)V
    .locals 3
    .param p1, "shift"    # I
    .param p2, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1866
    const-string v0, "launcher_dock_driver_Seat_ventilation_set"

    const-string v1, "ac_driver_Seat_ventilation_status"

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackHeatVentilation(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1867
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/4 v1, 0x1

    const/16 v2, 0x4010

    invoke-virtual {v0, v2, v1, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setIntProperty(III)V

    .line 1868
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1869
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set driver ventilation shift "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_0
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 1872
    return-void
.end method

.method static synthetic lambda$setPassengerHeatShift$17(Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1936
    return-void
.end method

.method static synthetic lambda$setPassengerHeatShift$18(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1937
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    const-string v1, "Set passenger heat failure %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1938
    return-void
.end method

.method public static synthetic lambda$setPassengerHeatShiftInternal$23(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/ObservableEmitter;)V
    .locals 3
    .param p1, "shift"    # I
    .param p2, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1973
    const-string v0, "launcher_dock_codriver_Seat_heating_set"

    const-string v1, "ac_codriver_Seat_heating_status"

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackHeatVentilation(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1974
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v1, 0x4008

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setIntProperty(III)V

    .line 1975
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1976
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set passenger heat shift "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_0
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 1979
    return-void
.end method

.method public static synthetic lambda$setPassengerTemp$3(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;FLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "temp"    # F
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1677
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getIsCelsius()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCelsiusTempByFahrenheit(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    goto :goto_0

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    .line 1682
    :goto_0
    const-string v0, "launcher_dock_rtem_set"

    const-string v1, "rac_tem_status"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    const-string/jumbo v3, "\u6ed1\u52a8\u64cd\u4f5c"

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackTemp(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 1683
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v1, 0x4001

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->setFloatProperty(IIF)V

    .line 1684
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 1685
    return-void
.end method

.method public static synthetic lambda$setPassengerTemp$4(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1686
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1687
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Passenger Temp Success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1690
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setPassengerTemp$5(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1691
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1692
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Passenger Temp Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1694
    :cond_0
    return-void
.end method

.method static synthetic lambda$setPassengerVentilationShift$19(Ljava/lang/String;)V
    .locals 0
    .param p0, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1949
    return-void
.end method

.method static synthetic lambda$setPassengerVentilationShift$20(Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1950
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1951
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    const-string v1, "Set passenger ventilation failure %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1953
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setPassengerVentilationShiftInternal$24(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/ObservableEmitter;)V
    .locals 3
    .param p1, "shift"    # I
    .param p2, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1984
    const-string v0, "launcher_dock_codriver_Seat_hventilation_set"

    const-string v1, "ac_codriver_Seat_ventilation_status"

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackHeatVentilation(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1985
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v1, 0x4010

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setIntProperty(III)V

    .line 1986
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1987
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set passenger ventilation shift "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_0
    invoke-interface {p2}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 1990
    return-void
.end method

.method public static synthetic lambda$setStartCharging$94(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 3
    .param p1, "isOn"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2555
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2556
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_START_CHARGING: shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v1, 0x6001

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/setting/CarSettingYfveManager;->setIntProperty(III)V

    .line 2559
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2560
    return-void
.end method

.method static synthetic lambda$setStartCharging$95()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2561
    return-void
.end method

.method static synthetic lambda$setStartCharging$96(ILjava/lang/Throwable;)V
    .locals 3
    .param p0, "isOn"    # I
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2562
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_START_CHARGING Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2563
    return-void
.end method

.method public static synthetic lambda$setTempSyncState$79(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "targetSync"    # Z
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2456
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    xor-int/lit8 v1, p1, 0x1

    const/16 v2, 0x400d

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setBooleanProperty(IIZ)V

    .line 2457
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2458
    return-void
.end method

.method static synthetic lambda$setTempSyncState$80()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2459
    return-void
.end method

.method static synthetic lambda$setTempSyncState$81(ZLjava/lang/Throwable;)V
    .locals 3
    .param p0, "targetSync"    # Z
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2460
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Temp Sync State Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2461
    return-void
.end method

.method public static synthetic lambda$setV2LOn$91(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 3
    .param p1, "isOn"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2537
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2538
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setV2LOn: shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v1, 0x6117

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/setting/CarSettingYfveManager;->setIntProperty(III)V

    .line 2541
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2542
    return-void
.end method

.method static synthetic lambda$setV2LOn$92()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2543
    return-void
.end method

.method static synthetic lambda$setV2LOn$93(ILjava/lang/Throwable;)V
    .locals 3
    .param p0, "isOn"    # I
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2544
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setV2LOn Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2545
    return-void
.end method

.method public static synthetic lambda$setV2VOn$88(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 3
    .param p1, "isOn"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2519
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2520
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setV2VOn: shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v1, 0x6118

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/setting/CarSettingYfveManager;->setIntProperty(III)V

    .line 2523
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2524
    return-void
.end method

.method static synthetic lambda$setV2VOn$89()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2525
    return-void
.end method

.method static synthetic lambda$setV2VOn$90(ILjava/lang/Throwable;)V
    .locals 3
    .param p0, "isOn"    # I
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2526
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setV2VOn Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2527
    return-void
.end method

.method static synthetic lambda$showBtDialerIcon$250(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .param p0, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6644
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 6645
    return-void
.end method

.method public static synthetic lambda$showBtDialerIcon$251(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6646
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6647
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "showBtDialerIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6649
    :cond_0
    const/16 v0, 0x35

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 6650
    return-void
.end method

.method static synthetic lambda$showBtDialerIcon$252(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6651
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6652
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "show bt dialer icon error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6654
    :cond_0
    return-void
.end method

.method static synthetic lambda$showRemoteLogcatIcon$256(Lio/reactivex/CompletableEmitter;)V
    .locals 0
    .param p0, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6684
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 6685
    return-void
.end method

.method public static synthetic lambda$showRemoteLogcatIcon$257(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6686
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6687
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "showRemoteLogcatIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6689
    :cond_0
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 6690
    return-void
.end method

.method static synthetic lambda$showRemoteLogcatIcon$258(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6691
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6692
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "show remote logcat icon error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6694
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateAQICO2AutoStateInternal$175(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "value"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3226
    if-nez p1, :cond_0

    .line 3227
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x5504

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2AutoState:I

    goto :goto_0

    .line 3229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2AutoState:I

    .line 3230
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3231
    return-void
.end method

.method public static synthetic lambda$updateAQICO2AutoStateInternal$176(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3232
    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3233
    return-void
.end method

.method static synthetic lambda$updateAQICO2AutoStateInternal$177(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3234
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update AQI co2 auto state Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3235
    return-void
.end method

.method public static synthetic lambda$updateAQICO2LevelInternal$172(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 5
    .param p1, "hasValue"    # Z
    .param p2, "value"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3202
    if-nez p1, :cond_1

    .line 3203
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/high16 v2, -0x80000000

    const/16 v3, 0x5501

    invoke-virtual {v1, v3, v2}, Landroid/car/hardware/hvac/CarHvacManager;->getPropertyStatus(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2TimeOut:I

    .line 3204
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2TimeOut:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3205
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1, v3, v2}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2Level:I

    goto :goto_0

    .line 3207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2Level:I

    goto :goto_0

    .line 3210
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2Level:I

    .line 3211
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3212
    return-void
.end method

.method public static synthetic lambda$updateAQICO2LevelInternal$173(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3213
    const/16 v0, 0x74

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3214
    return-void
.end method

.method static synthetic lambda$updateAQICO2LevelInternal$174(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3215
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update AQI co2 Level state Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3216
    return-void
.end method

.method public static synthetic lambda$updateAQILevelInternal$169(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 3
    .param p1, "hasValue"    # Z
    .param p2, "AQILevel"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3180
    if-nez p1, :cond_1

    .line 3181
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const v1, 0x60000013

    invoke-virtual {v0, v1}, Landroid/support/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v0

    .line 3182
    .local v0, "event":Landroid/support/car/hardware/CarSensorEvent;
    if-eqz v0, :cond_0

    .line 3183
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/car/hardware/CarSensorEvent;->getCarInAqiLevel(Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;)Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;

    move-result-object v2

    iget v2, v2, Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;->level:I

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQILevel:I

    .line 3185
    .end local v0    # "event":Landroid/support/car/hardware/CarSensorEvent;
    :cond_0
    goto :goto_0

    .line 3186
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQILevel:I

    .line 3187
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3188
    return-void
.end method

.method public static synthetic lambda$updateAQILevelInternal$170(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3189
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3190
    return-void
.end method

.method static synthetic lambda$updateAQILevelInternal$171(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3191
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update AQI Level state Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3192
    return-void
.end method

.method public static synthetic lambda$updateAcPowerChange$76(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZZLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "isOn"    # Z
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2429
    if-nez p1, :cond_0

    .line 2430
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x4003

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->getBooleanProperty(II)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    goto :goto_0

    .line 2432
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    .line 2434
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2435
    return-void
.end method

.method public static synthetic lambda$updateAcPowerChange$77(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2436
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2438
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQILevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2439
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAQILevelInternal(ZI)V

    .line 2441
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateAcPowerChange$78(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2442
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Ac Power State Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2443
    return-void
.end method

.method public static synthetic lambda$updateAdjustableTemp$134(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)Ljava/util/List;
    .locals 3
    .param p1, "TempUnit"    # Ljava/lang/Integer;
    .param p2, "max"    # Ljava/lang/Float;
    .param p3, "min"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2960
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getAdjustableTempList(IFF)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateAdjustableTemp$135(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/util/List;)V
    .locals 1
    .param p1, "result"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2961
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput-object p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAdjustableTemp:Ljava/util/List;

    .line 2962
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2963
    return-void
.end method

.method static synthetic lambda$updateAdjustableTemp$136(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2964
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Driver Adjustable Temp Failure, Because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2965
    return-void
.end method

.method public static synthetic lambda$updateAqiHigh$238(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Lio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3714
    const/16 v0, 0xae

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->queryCarConfig(I)I

    move-result v0

    .line 3715
    .local v0, "status":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_1

    const/16 v1, 0x83

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3718
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAqiHighConfig:Z

    goto :goto_1

    .line 3716
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAqiHighConfig:Z

    .line 3720
    :goto_1
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 3721
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAqiHigh: status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isAqiHighConfig= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAqiHighConfig:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    :cond_2
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3724
    return-void
.end method

.method public static synthetic lambda$updateAqiHigh$239(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3725
    const/16 v0, 0x76

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3726
    return-void
.end method

.method static synthetic lambda$updateAqiHigh$240(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3727
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAqiHigh Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3728
    return-void
.end method

.method public static synthetic lambda$updateBatteryColor$187(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "batteryColor"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3322
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    .line 3323
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3324
    return-void
.end method

.method public static synthetic lambda$updateBatteryColor$188(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3325
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3326
    return-void
.end method

.method static synthetic lambda$updateBatteryColor$189(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3327
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update battery color Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3328
    return-void
.end method

.method public static synthetic lambda$updateBatteryFailure$54(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mBatteryFailure"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2225
    if-nez p1, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x7029

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryFail:I

    goto :goto_0

    .line 2229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryFail:I

    .line 2231
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2232
    return-void
.end method

.method public static synthetic lambda$updateBatteryFailure$55(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2233
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2234
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBatteryFailure: mCarBodyStateData.mBatteryFail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryFail:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_0
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2237
    return-void
.end method

.method static synthetic lambda$updateBatteryFailure$56(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2238
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2239
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update mBatteryFail error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2241
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateBatteryIconColor$51(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mBatteryIconColor"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2201
    if-nez p1, :cond_0

    .line 2202
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x7030

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryColor:I

    goto :goto_0

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryColor:I

    .line 2207
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2208
    return-void
.end method

.method public static synthetic lambda$updateBatteryIconColor$52(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2209
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2210
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBatteryIconColor: mCarBodyStateData.mBatteryColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2213
    return-void
.end method

.method static synthetic lambda$updateBatteryIconColor$53(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2214
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update mBatteryColor error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2215
    return-void
.end method

.method public static synthetic lambda$updateBatteryLevel$184(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZFLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "batteryLevel"    # F
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3296
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3297
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const v2, 0x6000002c

    invoke-virtual {v1, v2}, Landroid/support/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v1

    .line 3298
    .local v1, "event":Landroid/support/car/hardware/CarSensorEvent;
    if-eqz v1, :cond_0

    .line 3299
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v3, v1, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    aget v3, v3, v0

    iput v3, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryLevel:F

    .line 3301
    .end local v1    # "event":Landroid/support/car/hardware/CarSensorEvent;
    :cond_0
    goto :goto_0

    .line 3302
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryLevel:F

    .line 3303
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryLevel:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 3304
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->removeMessages(I)V

    .line 3305
    iput v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getBattryLevelCount:I

    .line 3307
    :cond_2
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3308
    return-void
.end method

.method public static synthetic lambda$updateBatteryLevel$185(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3309
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3310
    return-void
.end method

.method static synthetic lambda$updateBatteryLevel$186(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3311
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update battery level Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3312
    return-void
.end method

.method public static synthetic lambda$updateBatteryPreheatingButton$181(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "state"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3264
    if-nez p1, :cond_0

    .line 3265
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v2, 0xee45

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryPreheating:I

    goto :goto_0

    .line 3267
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryPreheating:I

    .line 3268
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3269
    return-void
.end method

.method public static synthetic lambda$updateBatteryPreheatingButton$182(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3270
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3271
    return-void
.end method

.method static synthetic lambda$updateBatteryPreheatingButton$183(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3272
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update battery temp Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3273
    return-void
.end method

.method public static synthetic lambda$updateBatteryStateAC$45(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mACState"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2149
    if-nez p1, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x7028

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateAC:I

    goto :goto_0

    .line 2153
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateAC:I

    .line 2155
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2156
    return-void
.end method

.method public static synthetic lambda$updateBatteryStateAC$46(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2157
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2158
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBatteryStateAC: mCarBodyStateData.mBatteryStateAC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateAC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :cond_0
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2161
    return-void
.end method

.method static synthetic lambda$updateBatteryStateAC$47(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2162
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2163
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update battery ac state error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2165
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateBatteryStateDC$48(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mDCState"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2175
    if-nez p1, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x7028

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateDC:I

    goto :goto_0

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateDC:I

    .line 2181
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2182
    return-void
.end method

.method public static synthetic lambda$updateBatteryStateDC$49(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2183
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2184
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBatteryStateDC: mCarBodyStateData.mBatteryStateDC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateDC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    :cond_0
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2187
    return-void
.end method

.method static synthetic lambda$updateBatteryStateDC$50(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2188
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2189
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update battery dc state error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2191
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateBatteryTemp$178(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "temp"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3245
    if-nez p1, :cond_0

    .line 3246
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v2, 0xee71

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryTemp:I

    goto :goto_0

    .line 3248
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryTemp:I

    .line 3249
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3250
    return-void
.end method

.method public static synthetic lambda$updateBatteryTemp$179(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3251
    const/16 v0, 0x77

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3252
    return-void
.end method

.method static synthetic lambda$updateBatteryTemp$180(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3253
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update battery temp Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3254
    return-void
.end method

.method public static synthetic lambda$updateChargeACCap$220(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeCap"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3525
    if-nez p1, :cond_0

    .line 3526
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x4003

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCap:I

    goto :goto_0

    .line 3528
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCap:I

    .line 3529
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3530
    return-void
.end method

.method public static synthetic lambda$updateChargeACCap$221(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3531
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3532
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update AC charge cap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    :cond_0
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3535
    return-void
.end method

.method static synthetic lambda$updateChargeACCap$222(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3536
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update AC charge cap Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3537
    return-void
.end method

.method public static synthetic lambda$updateChargeACCapAvail$223(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeCapAvail"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3547
    if-nez p1, :cond_0

    .line 3548
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v2, 0x21020500

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getCarSettingPropertyStatus(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCapAvail:I

    goto :goto_0

    .line 3550
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCapAvail:I

    .line 3551
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3552
    return-void
.end method

.method public static synthetic lambda$updateChargeACCapAvail$224(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3553
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3554
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update AC charge cap avail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCapAvail:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    :cond_0
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3557
    return-void
.end method

.method static synthetic lambda$updateChargeACCapAvail$225(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3558
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update AC charge cap avail Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3559
    return-void
.end method

.method public static synthetic lambda$updateChargeDCCap$229(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeCap"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3591
    if-nez p1, :cond_0

    .line 3592
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x4003

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCap:I

    goto :goto_0

    .line 3594
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCap:I

    .line 3595
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3596
    return-void
.end method

.method public static synthetic lambda$updateChargeDCCap$230(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3597
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3598
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update DC charge cap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3600
    :cond_0
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3601
    return-void
.end method

.method static synthetic lambda$updateChargeDCCap$231(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3602
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update  DC charge cap Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3603
    return-void
.end method

.method public static synthetic lambda$updateChargeDCCapAvail$226(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeCapAvail"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3569
    if-nez p1, :cond_0

    .line 3570
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x82

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getCarSettingPropertyStatus(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCapAvail:I

    goto :goto_0

    .line 3572
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCapAvail:I

    .line 3573
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3574
    return-void
.end method

.method public static synthetic lambda$updateChargeDCCapAvail$227(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3575
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3576
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update DC charge cap avail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCapAvail:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    :cond_0
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3579
    return-void
.end method

.method static synthetic lambda$updateChargeDCCapAvail$228(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3580
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update DC charge cap avail Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3581
    return-void
.end method

.method public static synthetic lambda$updateChargeSOCLevel$208(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZFLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeSocLevel"    # F
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3440
    if-nez p1, :cond_0

    .line 3441
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x6002

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeSOCLevel:F

    goto :goto_0

    .line 3443
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeSOCLevel:F

    .line 3444
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3445
    return-void
.end method

.method public static synthetic lambda$updateChargeSOCLevel$209(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3446
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3447
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update charge SOC level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeSOCLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    :cond_0
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3450
    return-void
.end method

.method static synthetic lambda$updateChargeSOCLevel$210(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3451
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update charge SOC level Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3452
    return-void
.end method

.method public static synthetic lambda$updateClimateECOStatu$131(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZZLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "statu"    # Z
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2940
    if-nez p1, :cond_0

    .line 2941
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x4015

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->getBooleanProperty(II)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOStatus:Z

    goto :goto_0

    .line 2943
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOStatus:Z

    .line 2944
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2945
    return-void
.end method

.method public static synthetic lambda$updateClimateECOStatu$132(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2946
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2947
    return-void
.end method

.method static synthetic lambda$updateClimateECOStatu$133(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2948
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Climate ECO Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2949
    return-void
.end method

.method public static synthetic lambda$updateClimateShift$128(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2901
    if-eqz p1, :cond_2

    .line 2902
    if-nez p2, :cond_1

    .line 2903
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2904
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClimateShift1 mCarBodyStateData.mPreClimateShift "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    if-lez v0, :cond_1

    .line 2907
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    .line 2910
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    goto :goto_0

    .line 2912
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v1, 0x4004

    const/16 v2, 0x8

    .line 2913
    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/hvac/CarHvacManager;->getIntProperty(II)I

    move-result v0

    .line 2914
    .local v0, "value":I
    if-nez v0, :cond_4

    .line 2915
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 2916
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClimateShift2 mCarBodyStateData.mPreClimateShift "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    if-lez v1, :cond_4

    .line 2919
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    .line 2922
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput v0, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    .line 2924
    .end local v0    # "value":I
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2925
    return-void
.end method

.method public static synthetic lambda$updateClimateShift$129(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2926
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2927
    return-void
.end method

.method static synthetic lambda$updateClimateShift$130(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2928
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Climate Shift Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2929
    return-void
.end method

.method public static synthetic lambda$updateDateFormatUnit$27(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "mDate"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2021
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDateFormat:I

    .line 2022
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2023
    return-void
.end method

.method public static synthetic lambda$updateDateFormatUnit$28(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2024
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2025
    return-void
.end method

.method static synthetic lambda$updateDateFormatUnit$29(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2026
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update outside temperature unit error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2029
    return-void
.end method

.method public static synthetic lambda$updateDayNightMode$112(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Lio/reactivex/CompletableEmitter;)V
    .locals 2
    .param p1, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2679
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getCurrentUiMode(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    .line 2680
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2681
    return-void
.end method

.method public static synthetic lambda$updateDayNightMode$113(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2682
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2683
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDayNightMode: mDayOrNight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    if-nez v0, :cond_5

    .line 2686
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    if-nez v0, :cond_1

    .line 2687
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarService:Landroid/support/car/Car;

    const-string/jumbo v1, "setting_yfve"

    invoke-virtual {v0, v1}, Landroid/support/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/setting/CarSettingYfveManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    .line 2689
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 2690
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x601d

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v0

    .line 2691
    .local v0, "sensor_value":I
    if-ne v0, v1, :cond_2

    .line 2692
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput v1, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    goto :goto_0

    .line 2694
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    .line 2696
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 2697
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDayNightMode,mCarBodyStateData.mDayOrNight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    .end local v0    # "sensor_value":I
    :cond_3
    goto :goto_1

    .line 2700
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    .line 2703
    :cond_5
    :goto_1
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2704
    return-void
.end method

.method static synthetic lambda$updateDayNightMode$114(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2705
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update dayOrNight mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2706
    return-void
.end method

.method public static synthetic lambda$updateDisChargeSOCLevel$211(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;FLio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "disChargeSocLevel"    # F
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3462
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDischargeSOCLevel:F

    .line 3463
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3464
    return-void
.end method

.method public static synthetic lambda$updateDisChargeSOCLevel$212(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3465
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3466
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update discharge SOC level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDischargeSOCLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    :cond_0
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3469
    return-void
.end method

.method static synthetic lambda$updateDisChargeSOCLevel$213(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3470
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update discharge SOC level Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3471
    return-void
.end method

.method static synthetic lambda$updateDriverHeatOrVentilationShift$123(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "ventilation"    # Ljava/lang/Integer;
    .param p1, "heat"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2819
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2820
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updateDriverHeatOrVentilationShift$124(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2825
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverShift:I

    .line 2826
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2827
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDriverHeatOrVentilationShift: mCarBodyStateData.mPreDriverShift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :cond_0
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2830
    return-void
.end method

.method static synthetic lambda$updateDriverHeatOrVentilationShift$125(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2830
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Driver Heat or Ventilation Shift Failure, Because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$updateDriverTemp$85(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZFLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "temp"    # F
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2494
    if-nez p1, :cond_0

    .line 2495
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x4001

    const/4 v3, 0x1

    .line 2496
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    goto :goto_0

    .line 2498
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    .line 2501
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getIsCelsius()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2502
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getFahrenheitTempByCelsius(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    .line 2504
    :cond_1
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2505
    return-void
.end method

.method public static synthetic lambda$updateDriverTemp$86(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2506
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2507
    return-void
.end method

.method static synthetic lambda$updateDriverTemp$87(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2508
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Driver Temp Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2509
    return-void
.end method

.method public static synthetic lambda$updateDvrState$36(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mDvrState"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2071
    if-nez p1, :cond_0

    .line 2072
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x7027

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDvrState:I

    goto :goto_0

    .line 2074
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDvrState:I

    .line 2076
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2077
    return-void
.end method

.method public static synthetic lambda$updateDvrState$37(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2078
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2079
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDvrState: mDvrState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDvrState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_0
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2082
    return-void
.end method

.method static synthetic lambda$updateDvrState$38(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2083
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2084
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update dvr state error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2086
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateDvrView$241(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Lio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3738
    const/16 v0, 0x1e3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->queryCarConfig(I)I

    move-result v0

    .line 3739
    .local v0, "status":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3740
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isDvrIconShow:Z

    goto :goto_0

    .line 3741
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3742
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isDvrIconShow:Z

    .line 3744
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 3745
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDvrView: status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isDvrIconShow= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isDvrIconShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    :cond_2
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3748
    return-void
.end method

.method public static synthetic lambda$updateDvrView$242(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3749
    const/16 v0, 0x6a

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3750
    return-void
.end method

.method static synthetic lambda$updateDvrView$243(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3751
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDvrView Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3752
    return-void
.end method

.method public static synthetic lambda$updateEnduranceMileage$190(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "enduranceMileage"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3338
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mEnduranceMileage:I

    .line 3339
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3340
    return-void
.end method

.method public static synthetic lambda$updateEnduranceMileage$191(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3341
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3342
    return-void
.end method

.method static synthetic lambda$updateEnduranceMileage$192(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3343
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update mileage level Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3344
    return-void
.end method

.method public static synthetic lambda$updateEstimatedTime$205(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZFLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "estimatedTime"    # F
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3418
    if-nez p1, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x6120

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mEstimatedTime:F

    goto :goto_0

    .line 3421
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mEstimatedTime:F

    .line 3422
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3423
    return-void
.end method

.method public static synthetic lambda$updateEstimatedTime$206(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3424
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3425
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEstimatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mEstimatedTime:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    :cond_0
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3428
    return-void
.end method

.method static synthetic lambda$updateEstimatedTime$207(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3429
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update estimated time Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3430
    return-void
.end method

.method public static synthetic lambda$updateGear$193(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "gear"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3354
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCarGear:I

    .line 3355
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3356
    return-void
.end method

.method public static synthetic lambda$updateGear$194(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3357
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3358
    return-void
.end method

.method static synthetic lambda$updateGear$195(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3359
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGear Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3360
    return-void
.end method

.method public static synthetic lambda$updateInPm25StateInternal$166(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "inPm25State"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3161
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->inPm25State:I

    .line 3162
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3163
    return-void
.end method

.method public static synthetic lambda$updateInPm25StateInternal$167(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3164
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3165
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInPm25StateInternal: inPm25State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->inPm25State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3168
    return-void
.end method

.method static synthetic lambda$updateInPm25StateInternal$168(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3169
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update  inside pm2.5 stae Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3170
    return-void
.end method

.method public static synthetic lambda$updateLanguage$142(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "language"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3032
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLanguage:I

    .line 3033
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3034
    return-void
.end method

.method public static synthetic lambda$updateLanguage$143(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3035
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3036
    const-string v0, "persist.ota.status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    .line 3037
    return-void
.end method

.method static synthetic lambda$updateLanguage$144(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3038
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update MSG_LANGUAGE_CHANGED Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3039
    return-void
.end method

.method public static synthetic lambda$updateLocationMode$69(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mode"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2360
    if-nez p1, :cond_0

    .line 2361
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x6138

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLocationMode:I

    goto :goto_0

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLocationMode:I

    .line 2365
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2366
    return-void
.end method

.method public static synthetic lambda$updateLocationMode$70(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2367
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2368
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocationMode: mLocationMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLocationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_0
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2371
    return-void
.end method

.method static synthetic lambda$updateLocationMode$71(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2372
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2373
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "updateLocationMode error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2375
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateMaxAdjustableTempInternal$137(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .param p1, "e"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2971
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 2972
    const/16 v1, 0x4011

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/hvac/CarHvacManager;->getFloatProperty(II)F

    move-result v0

    .line 2973
    .local v0, "max":F
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, ".0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2974
    .local v1, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2975
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 2976
    return-void
.end method

.method public static synthetic lambda$updateMicMode$160(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3128
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mMicMode:I

    .line 3129
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3130
    return-void
.end method

.method public static synthetic lambda$updateMicMode$161(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3131
    const/16 v0, 0x7b

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3132
    return-void
.end method

.method static synthetic lambda$updateMicMode$162(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3133
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update inside aqi Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3134
    return-void
.end method

.method public static synthetic lambda$updateMicReverb$157(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "reverb"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3113
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mMicReverb:I

    .line 3114
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3115
    return-void
.end method

.method public static synthetic lambda$updateMicReverb$158(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3116
    const/16 v0, 0x7d

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3117
    return-void
.end method

.method static synthetic lambda$updateMicReverb$159(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3118
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update inside aqi Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3119
    return-void
.end method

.method public static synthetic lambda$updateMicVolume$154(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3097
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mMicVolume:I

    .line 3098
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3099
    return-void
.end method

.method public static synthetic lambda$updateMicVolume$155(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3100
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3101
    return-void
.end method

.method static synthetic lambda$updateMicVolume$156(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3102
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update inside aqi Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3103
    return-void
.end method

.method public static synthetic lambda$updateMinAdjustableTempInternal$138(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .param p1, "e"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2981
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 2982
    const/16 v1, 0x4012

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/hvac/CarHvacManager;->getFloatProperty(II)F

    move-result v0

    .line 2983
    .local v0, "min":F
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, ".0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2984
    .local v1, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2985
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 2986
    return-void
.end method

.method public static synthetic lambda$updateOutsideAQIInternal$145(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "aqi"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3049
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreOutsidePm:I

    .line 3050
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3051
    return-void
.end method

.method public static synthetic lambda$updateOutsideAQIInternal$146(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3052
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3053
    return-void
.end method

.method static synthetic lambda$updateOutsideAQIInternal$147(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3054
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Outside aqi Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3055
    return-void
.end method

.method public static synthetic lambda$updateOutsideTempInternal$139(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;FLio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "temp"    # F
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3016
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreOutsideTemp:F

    .line 3017
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3018
    return-void
.end method

.method public static synthetic lambda$updateOutsideTempInternal$140(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3019
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3020
    return-void
.end method

.method static synthetic lambda$updateOutsideTempInternal$141(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3021
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Outside temp Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3022
    return-void
.end method

.method public static synthetic lambda$updateOutsideTempUnit$25(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2003
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isCelsius:Z

    .line 2004
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2005
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAdjustableTemp(ZI)V

    .line 2006
    return-void
.end method

.method public static synthetic lambda$updateOutsideTempUnit$26(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2007
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update outside temperature unit error"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2008
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isCelsius:Z

    .line 2009
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2010
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAdjustableTemp(ZI)V

    .line 2011
    return-void
.end method

.method public static synthetic lambda$updateOutsideTempUnitInternal$72(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/ObservableEmitter;)V
    .locals 3
    .param p1, "hasValue"    # Z
    .param p2, "isCelsius"    # I
    .param p3, "emitter"    # Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2382
    if-nez p1, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v1, 0x401a

    const/high16 v2, -0x80000000

    .line 2384
    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v0

    .local v0, "TempUnit":I
    goto :goto_0

    .line 2386
    .end local v0    # "TempUnit":I
    :cond_0
    move v0, p2

    .line 2388
    .restart local v0    # "TempUnit":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 2389
    return-void
.end method

.method public static synthetic lambda$updatePDCStatusInternal$57(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZZLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "status"    # Z
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2252
    if-nez p1, :cond_0

    .line 2253
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x6133

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getBooleanProperty(II)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPDCStatus:Z

    goto :goto_0

    .line 2255
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPDCStatus:Z

    .line 2257
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2258
    return-void
.end method

.method public static synthetic lambda$updatePDCStatusInternal$58(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2259
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2260
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePDCStatusInternal: mCarBodyStateData.mPDCStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPDCStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_0
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2263
    return-void
.end method

.method static synthetic lambda$updatePDCStatusInternal$59(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2264
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update pdc Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2266
    return-void
.end method

.method public static synthetic lambda$updateParkComfortModeLeftTime$235(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Lio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3633
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x6126

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mParkComfortModeLeftTime:I

    .line 3634
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3635
    return-void
.end method

.method public static synthetic lambda$updateParkComfortModeLeftTime$236(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3636
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3637
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateParkComfortModeLeftTime mParkComfortModeLeftTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mParkComfortModeLeftTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    :cond_0
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3640
    return-void
.end method

.method static synthetic lambda$updateParkComfortModeLeftTime$237(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3641
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Park Comfort Mode Left Time Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3642
    return-void
.end method

.method public static synthetic lambda$updateParkComfortModeView$232(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Lio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3613
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x7026

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mParkComfortModeValue:I

    .line 3614
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3615
    return-void
.end method

.method public static synthetic lambda$updateParkComfortModeView$233(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3616
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v1, 0x60ff

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v0

    .line 3617
    .local v0, "usgMode":I
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3618
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateParkComfortModeView: usgMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mParkComfortModeValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mParkComfortModeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    :cond_0
    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3621
    return-void
.end method

.method static synthetic lambda$updateParkComfortModeView$234(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3622
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Park Comfort Mode Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3623
    return-void
.end method

.method public static synthetic lambda$updatePassengerDoorPos$60(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "passengerDoorPos"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2276
    if-nez p1, :cond_0

    .line 2277
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v2, 0x8013

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerDoorPos:I

    goto :goto_0

    .line 2279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerDoorPos:I

    .line 2281
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2282
    return-void
.end method

.method public static synthetic lambda$updatePassengerDoorPos$61(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2283
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2284
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePassengerDoorPos: mPassengerDoorPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerDoorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_0
    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2287
    return-void
.end method

.method static synthetic lambda$updatePassengerDoorPos$62(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2288
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2289
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "update Passenger Door Pos error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2291
    :cond_0
    return-void
.end method

.method static synthetic lambda$updatePassengerHeatOrVentilationShift$118(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p0, "ventilation"    # Ljava/lang/Integer;
    .param p1, "heat"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2759
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2760
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$updatePassengerHeatOrVentilationShift$119(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2762
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerShift:I

    .line 2763
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2764
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePassengerHeatOrVentilationShift: mCarBodyStateData.mPrePassengerShift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :cond_0
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2767
    return-void
.end method

.method static synthetic lambda$updatePassengerHeatOrVentilationShift$120(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2768
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Passenger Heat or Ventilation Shift Failure, Because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2769
    return-void
.end method

.method public static synthetic lambda$updatePassengerTemp$115(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZFLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "temp"    # F
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2730
    if-nez p1, :cond_0

    .line 2731
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x4001

    const/4 v3, 0x4

    .line 2732
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    goto :goto_0

    .line 2734
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    .line 2737
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getIsCelsius()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2738
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getFahrenheitTempByCelsius(F)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    .line 2740
    :cond_1
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2741
    return-void
.end method

.method public static synthetic lambda$updatePassengerTemp$116(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2742
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2743
    return-void
.end method

.method static synthetic lambda$updatePassengerTemp$117(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2744
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Passenger Temp Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2745
    return-void
.end method

.method public static synthetic lambda$updatePlugStateAC$39(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mACState"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2096
    if-nez p1, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x6006

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugACState:I

    goto :goto_0

    .line 2100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugACState:I

    .line 2102
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2103
    return-void
.end method

.method public static synthetic lambda$updatePlugStateAC$40(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2104
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2105
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePlugStateAC: mCarBodyStateData.mPlugACState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugACState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_0
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2108
    return-void
.end method

.method static synthetic lambda$updatePlugStateAC$41(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2109
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2110
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update plug ac state error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2112
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updatePlugStateDC$42(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mDCState"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2123
    if-nez p1, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x6007

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugDCState:I

    goto :goto_0

    .line 2127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugDCState:I

    .line 2129
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2130
    return-void
.end method

.method public static synthetic lambda$updatePlugStateDC$43(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2131
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2132
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePlugStateDC: mCarBodyStateData.mPlugDCState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugDCState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_0
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2135
    return-void
.end method

.method static synthetic lambda$updatePlugStateDC$44(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2136
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2137
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update plug dc state error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2139
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updatePm25ValueInternal$148(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "pm25Value"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3065
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreInsidePm:I

    .line 3066
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3067
    return-void
.end method

.method public static synthetic lambda$updatePm25ValueInternal$149(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3068
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3069
    return-void
.end method

.method static synthetic lambda$updatePm25ValueInternal$150(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3070
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update inside aqi Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3071
    return-void
.end method

.method public static synthetic lambda$updateRoadSlipStateInternal$163(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isRoadSlip:I

    .line 3145
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3146
    return-void
.end method

.method public static synthetic lambda$updateRoadSlipStateInternal$164(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3147
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3148
    return-void
.end method

.method static synthetic lambda$updateRoadSlipStateInternal$165(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3149
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update road slip Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3150
    return-void
.end method

.method public static synthetic lambda$updateSceneMode$63(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mode"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2304
    if-nez p1, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v2, 0x9013

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSceneMode:I

    goto :goto_0

    .line 2307
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSceneMode:I

    .line 2309
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2310
    return-void
.end method

.method public static synthetic lambda$updateSceneMode$64(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2311
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2312
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSceneMode: mSceneMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSceneMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_0
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2315
    return-void
.end method

.method static synthetic lambda$updateSceneMode$65(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2316
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2317
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "updateSceneMode error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2319
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateSentryMode$66(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mode"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2332
    if-nez p1, :cond_0

    .line 2333
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v2, 0xa901

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSentryMode:I

    goto :goto_0

    .line 2335
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSentryMode:I

    .line 2337
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2338
    return-void
.end method

.method public static synthetic lambda$updateSentryMode$67(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2339
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2340
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSentryMode: mSentryMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSentryMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2343
    return-void
.end method

.method static synthetic lambda$updateSentryMode$68(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2344
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2345
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "updateSentryMode error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2347
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateSongMode$151(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3081
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSongMode:I

    .line 3082
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3083
    return-void
.end method

.method public static synthetic lambda$updateSongMode$152(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3084
    const/16 v0, 0x7a

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3085
    return-void
.end method

.method static synthetic lambda$updateSongMode$153(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3086
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update inside aqi Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3087
    return-void
.end method

.method public static synthetic lambda$updateSpeed$196(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "speed"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3370
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSensorCarSpeed:I

    .line 3371
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3372
    return-void
.end method

.method public static synthetic lambda$updateSpeed$197(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3373
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3374
    return-void
.end method

.method static synthetic lambda$updateSpeed$198(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3375
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSpeed Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3376
    return-void
.end method

.method public static synthetic lambda$updateTempSyncState$73(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZZLio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "syncState"    # Z
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2401
    if-nez p1, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarHAVCManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/16 v2, 0x400d

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/hvac/CarHvacManager;->getBooleanProperty(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isTempSync:Z

    goto :goto_0

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isTempSync:Z

    .line 2406
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2407
    return-void
.end method

.method public static synthetic lambda$updateTempSyncState$74(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2408
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2409
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTempSyncState: syncState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isTempSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_0
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2412
    return-void
.end method

.method static synthetic lambda$updateTempSyncState$75(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2413
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2414
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update Temp Sync State Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2416
    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateV2LStatus$217(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "V2Lstatus"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3503
    if-nez p1, :cond_0

    .line 3504
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x6117

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2LState:I

    goto :goto_0

    .line 3506
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2LState:I

    .line 3507
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3508
    return-void
.end method

.method public static synthetic lambda$updateV2LStatus$218(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3509
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3510
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update v2l level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2LState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    :cond_0
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3513
    return-void
.end method

.method static synthetic lambda$updateV2LStatus$219(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3514
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update v2l Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3515
    return-void
.end method

.method public static synthetic lambda$updateV2VStatus$214(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZILio/reactivex/CompletableEmitter;)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "V2Vstatus"    # I
    .param p3, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3481
    if-nez p1, :cond_0

    .line 3482
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x6118

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2VState:I

    goto :goto_0

    .line 3484
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2VState:I

    .line 3485
    :goto_0
    invoke-interface {p3}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3486
    return-void
.end method

.method public static synthetic lambda$updateV2VStatus$215(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3487
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3488
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update v2v level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2VState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    :cond_0
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3491
    return-void
.end method

.method static synthetic lambda$updateV2VStatus$216(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3492
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update v2v Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3493
    return-void
.end method

.method public static synthetic lambda$updateWPCChargeMode$202(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3402
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeMode:I

    .line 3403
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3404
    return-void
.end method

.method public static synthetic lambda$updateWPCChargeMode$203(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3405
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3406
    return-void
.end method

.method static synthetic lambda$updateWPCChargeMode$204(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3407
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update WPC Charge Mode Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3408
    return-void
.end method

.method public static synthetic lambda$updateWPCChargeStatus$199(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3386
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeStatus:I

    .line 3387
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 3388
    return-void
.end method

.method public static synthetic lambda$updateWPCChargeStatus$200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3389
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 3390
    return-void
.end method

.method static synthetic lambda$updateWPCChargeStatus$201(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3391
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update WPC Charge Status level Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3392
    return-void
.end method

.method public static synthetic lambda$updatemTimeFormatUnit$30(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "mTime"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTimeFormat:I

    .line 2040
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2041
    return-void
.end method

.method public static synthetic lambda$updatemTimeFormatUnit$31(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2042
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2043
    return-void
.end method

.method static synthetic lambda$updatemTimeFormatUnit$32(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2044
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update Time Format unit error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2045
    return-void
.end method

.method public static synthetic lambda$updatemUnitDriverDis$33(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ILio/reactivex/CompletableEmitter;)V
    .locals 1
    .param p1, "unitDis"    # I
    .param p2, "emitter"    # Lio/reactivex/CompletableEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2055
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mUnitDis:I

    .line 2056
    invoke-interface {p2}, Lio/reactivex/CompletableEmitter;->onComplete()V

    .line 2057
    return-void
.end method

.method public static synthetic lambda$updatemUnitDriverDis$34(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2058
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 2059
    return-void
.end method

.method static synthetic lambda$updatemUnitDriverDis$35(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2060
    const-string v0, "CarBodyStateManager"

    const-string v1, "Update Driver Distance unit error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2061
    return-void
.end method

.method private lunchNextAppInSTRMode(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "appIndex":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_6

    .line 518
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 519
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "power_str_mode_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 521
    .local v2, "strMode":I
    if-nez v2, :cond_1

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->removeStrModeMessage()V

    .line 523
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 524
    const-string v3, "CarBodyStateManager"

    const-string v4, "lunchNextAppInSTRMode, is not in STR mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    return-void

    .line 529
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_MEDIA_INDEX:I

    const/16 v5, 0x2328

    const/16 v6, 0x31

    if-ne v3, v4, :cond_2

    .line 530
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    .line 531
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 532
    iget v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_CLIMATE_INDEX:I

    invoke-direct {p0, v3, v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleLauncherAppByIndexInSTRMode(II)V

    goto :goto_0

    .line 533
    :cond_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_CLIMATE_INDEX:I

    if-ne v3, v4, :cond_3

    .line 534
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    .line 535
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 536
    iget v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_ADNAVI_INDEX:I

    invoke-direct {p0, v3, v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleLauncherAppByIndexInSTRMode(II)V

    goto :goto_0

    .line 537
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_ADNAVI_INDEX:I

    if-ne v3, v4, :cond_4

    .line 538
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    .line 539
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 540
    iget v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_SETTINGS_INDEX:I

    invoke-direct {p0, v3, v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleLauncherAppByIndexInSTRMode(II)V

    goto :goto_0

    .line 541
    :cond_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_SETTINGS_INDEX:I

    const/4 v5, 0x5

    if-ne v3, v4, :cond_5

    .line 542
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput v5, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    .line 543
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 545
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    .line 546
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 547
    iget v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_HOME_INDEX:I

    const/16 v4, 0x4650

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->handleLauncherAppByIndexInSTRMode(II)V

    goto :goto_0

    .line 548
    :cond_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->STR_MODE_LAUNCHER_HOME_INDEX:I

    if-ne v3, v4, :cond_6

    .line 549
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->removeStrModeMessage()V

    .line 550
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput v5, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    .line 551
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 554
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "strMode":I
    :cond_6
    :goto_0
    return-void
.end method

.method private lunchNextAppNormalBootMode(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "appIndex":I
    if-eqz p1, :cond_4

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x69

    if-ne v1, v2, :cond_4

    .line 815
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 816
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 818
    .local v3, "provisioned":I
    const-string/jumbo v4, "sys.strmode.state"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, "strState":Ljava/lang/String;
    sget-boolean v5, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 821
    const-string v5, "CarBodyStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lunchNextAppNormalBootMode, msg.arg1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " provisioned: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " strmode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 831
    return-void

    .line 834
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 835
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->removeMessages(I)V

    .line 839
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mDisableLoading:Z

    if-eqz v2, :cond_4

    .line 840
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 841
    const-string v2, "CarBodyStateManager"

    const-string v5, "lunchNextAppNormalBootMode go home, reason: eol test mode on"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v5, 0x5

    iput v5, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    .line 844
    const/16 v2, 0x31

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 845
    const-string v2, "eol test mode on"

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->TellQnxAndroidBootComplete(Ljava/lang/String;)V

    .line 846
    return-void

    .line 849
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "provisioned":I
    .end local v4    # "strState":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private notifyOTAStatusonChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "newStats"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1073
    if-nez p1, :cond_0

    .line 1074
    return-void

    .line 1076
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "otaStatus":Ljava/lang/String;
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1078
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOTAStatusonChanged otaStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "INSTALLATION-PENDING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "INSTALLATION-ABORTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "ASSIGNMENT_WITHDRAWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "INSTALLATION-CONSENT-REVOKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "INSTALLATION-DEFERRED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "INSTALLATION-FAILED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "SCHEDULE-TIME-AND-DATE-OCCURS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "DOWNLOAD-CONSENT-REVOKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "INSTALLATION-CONSENT-GRANTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x10

    goto :goto_0

    :sswitch_9
    const-string v2, "DOWNLOAD-ABORTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v2, "INSTALLATION-FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_b
    const-string v2, "INSTALLATION-FAILED-CRITICAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_c
    const-string v2, "DOWNLOAD-STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xe

    goto :goto_0

    :sswitch_d
    const-string v2, "DOWNLOAD-CONSENT-GRANTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_e
    const-string v2, "DOWNLOAD-FAILED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v4

    goto :goto_0

    :sswitch_f
    const-string v2, "DOWNLOAD-COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_10
    const-string v2, "INSTALLATION-COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_11
    const-string v2, "INSTALLATION-STARTED-BOOT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x11

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1121
    :pswitch_0
    goto :goto_1

    .line 1119
    :pswitch_1
    goto :goto_1

    .line 1117
    :pswitch_2
    goto :goto_1

    .line 1115
    :pswitch_3
    goto :goto_1

    .line 1113
    :pswitch_4
    goto :goto_1

    .line 1111
    :pswitch_5
    goto :goto_1

    .line 1108
    :pswitch_6
    goto :goto_1

    .line 1103
    :pswitch_7
    const-string/jumbo v1, "sys.ota.toinstall"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    .line 1105
    goto :goto_1

    .line 1100
    :pswitch_8
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    .line 1101
    goto :goto_1

    .line 1094
    :pswitch_9
    const-string v1, "UM-IS-NOT-EQUAL-TO-UM-START"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1095
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    goto :goto_1

    .line 1091
    :pswitch_a
    invoke-direct {p0, p2, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->notifyReason(Ljava/lang/String;Z)V

    .line 1092
    goto :goto_1

    .line 1088
    :pswitch_b
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    .line 1089
    nop

    .line 1125
    :cond_3
    :goto_1
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74da966f -> :sswitch_11
        -0x7360d1a8 -> :sswitch_10
        -0x6ee468da -> :sswitch_f
        -0x6c3deede -> :sswitch_e
        -0x4cdc3f7d -> :sswitch_d
        -0x4bd09fe4 -> :sswitch_c
        -0x45071664 -> :sswitch_b
        -0x41f3b15b -> :sswitch_a
        -0x21f2bc96 -> :sswitch_9
        -0x1dae55cb -> :sswitch_8
        -0x1bfe739a -> :sswitch_7
        -0x1a11df9a -> :sswitch_6
        0x9df1730 -> :sswitch_5
        0xcd19612 -> :sswitch_4
        0x132f7618 -> :sswitch_3
        0x1a977792 -> :sswitch_2
        0x2b90ff1c -> :sswitch_1
        0x4a1864e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyReason(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "isFailed"    # Z

    .line 1137
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1138
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyReason reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 1141
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7c92feb9

    if-eq v4, v5, :cond_3

    const v0, -0x1b09fa9f

    if-eq v4, v0, :cond_2

    const v0, 0x27d788e5

    if-eq v4, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "CONFIGURATION-MISMATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "FAILED_CRITICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_3
    const-string v1, "DATA-FILE-VALIDATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1153
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    goto :goto_2

    .line 1149
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    .line 1150
    goto :goto_2

    .line 1144
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOTAIconOnStatusbar(I)V

    .line 1145
    nop

    .line 1154
    :goto_2
    goto/16 :goto_5

    .line 1157
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v0, "ASSIGN-BOOT-DENIED-NOT-FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    goto/16 :goto_4

    :sswitch_1
    const-string v0, "ASSIGN-BOOT-DENIED-SERVICE-NA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x14

    goto/16 :goto_4

    :sswitch_2
    const-string v0, "ENERGY-LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto/16 :goto_4

    :sswitch_3
    const-string v0, "REQUST-NOT-ALLOWED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x19

    goto/16 :goto_4

    :sswitch_4
    const-string v0, "HV-SYSTEM-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xe

    goto/16 :goto_4

    :sswitch_5
    const-string v0, "HV-SYSTEM-ENERGY-LEVEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xd

    goto/16 :goto_4

    :sswitch_6
    const-string v0, "CONNECTIVITY-NOK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x11

    goto/16 :goto_4

    :sswitch_7
    const-string v0, "SWDL-ENERGY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto/16 :goto_4

    :sswitch_8
    const-string v0, "SPEED-NOK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x12

    goto/16 :goto_4

    :sswitch_9
    const-string v1, "LOCKING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_4

    :sswitch_a
    const-string v0, "ASSIGN-BOOT-LOCAL-STORAGE-NOT-ACCESSIBLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x9

    goto/16 :goto_4

    :sswitch_b
    const-string v0, "CONFIGURATION-MISMATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x18

    goto/16 :goto_4

    :sswitch_c
    const-string v0, "GEARS-NOK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x10

    goto/16 :goto_4

    :sswitch_d
    const-string v0, "SCENE-MODE-NOK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x13

    goto/16 :goto_4

    :sswitch_e
    const-string v0, "OTHER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1b

    goto/16 :goto_4

    :sswitch_f
    const-string v0, "PROPULSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xc

    goto/16 :goto_4

    :sswitch_10
    const-string v0, "CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto/16 :goto_4

    :sswitch_11
    const-string v0, "TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto/16 :goto_4

    :sswitch_12
    const-string v0, "ASSIGN-BOOT-NOT-FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    goto/16 :goto_4

    :sswitch_13
    const-string v0, "THEFT-PROTECTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_4

    :sswitch_14
    const-string v0, "ASSIGN-BOOT-DENIED-LOCAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x15

    goto :goto_4

    :sswitch_15
    const-string v0, "USAGE-MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    goto :goto_4

    :sswitch_16
    const-string v0, "USAGEMODE-NOT-ALLOWED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    goto :goto_4

    :sswitch_17
    const-string v0, "REGRET-WINDOW-TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xf

    goto :goto_4

    :sswitch_18
    const-string v0, "LOCAL-STORAGE-ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    goto :goto_4

    :sswitch_19
    const-string v0, "ASSIGN-BOOT-SERVICE-UNAVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x16

    goto :goto_4

    :sswitch_1a
    const-string v0, "DATA-FILE-VALIDATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x17

    goto :goto_4

    :sswitch_1b
    const-string v0, "OTHER-FAILURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1a

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v2

    :goto_4
    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 1192
    :pswitch_2
    goto :goto_5

    .line 1190
    :pswitch_3
    goto :goto_5

    .line 1188
    :pswitch_4
    goto :goto_5

    .line 1186
    :pswitch_5
    goto :goto_5

    .line 1184
    :pswitch_6
    goto :goto_5

    .line 1182
    :pswitch_7
    goto :goto_5

    .line 1180
    :pswitch_8
    goto :goto_5

    .line 1178
    :pswitch_9
    goto :goto_5

    .line 1176
    :pswitch_a
    goto :goto_5

    .line 1173
    :pswitch_b
    goto :goto_5

    .line 1170
    :pswitch_c
    goto :goto_5

    .line 1167
    :pswitch_d
    goto :goto_5

    .line 1164
    :pswitch_e
    goto :goto_5

    .line 1162
    :pswitch_f
    goto :goto_5

    .line 1159
    :pswitch_10
    nop

    .line 1206
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7ca0c873 -> :sswitch_1b
        -0x7c92feb9 -> :sswitch_1a
        -0x7bcf4345 -> :sswitch_19
        -0x704a7b0c -> :sswitch_18
        -0x6a981d5c -> :sswitch_17
        -0x6957793b -> :sswitch_16
        -0x4d09e991 -> :sswitch_15
        -0x45aad4ae -> :sswitch_14
        -0x32d77b79 -> :sswitch_13
        -0x29abc4b5 -> :sswitch_12
        -0x238526bf -> :sswitch_11
        -0x33dae49 -> :sswitch_10
        0xb002ef -> :sswitch_f
        0x48086f0 -> :sswitch_e
        0x94867c1 -> :sswitch_d
        0x1db59201 -> :sswitch_c
        0x27d788e5 -> :sswitch_b
        0x34a31121 -> :sswitch_a
        0x3efbcab7 -> :sswitch_9
        0x442e4004 -> :sswitch_8
        0x4ac4c589 -> :sswitch_7
        0x4b5a4194 -> :sswitch_6
        0x5816ff7e -> :sswitch_5
        0x5f6f0e6b -> :sswitch_4
        0x5f808e59 -> :sswitch_3
        0x74393e6f -> :sswitch_2
        0x796ad1e0 -> :sswitch_1
        0x7a5bc733 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private onVolumeStateChanged(II)V
    .locals 5
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .line 6157
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarVolumeDialogController onStateChanged stream = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6158
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 6159
    const-string v0, "CarBodyStateManager"

    const-string v1, "onStateChanged Car audio manager is not initialized yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6160
    return-void

    .line 6165
    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_6

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    goto/16 :goto_2

    .line 6183
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 6184
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setMediaVolume2Hmi(I)V

    .line 6186
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    if-eqz v0, :cond_9

    .line 6187
    const v0, 0x50002

    const/high16 v1, -0x80000000

    if-nez p2, :cond_2

    .line 6188
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    goto :goto_0

    .line 6190
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    .line 6192
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    const v2, 0x50001

    invoke-virtual {v0, v2, v1, p2}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 6194
    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_9

    .line 6196
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6197
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "domain"

    const-string v2, "Navi"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6198
    const-string v1, "id"

    const-string v2, "NAVI_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6199
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6200
    .local v1, "payload":Lorg/json/JSONObject;
    const-string v2, "VolumeLevel"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6201
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6202
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    if-eqz v2, :cond_5

    .line 6203
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6204
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAVI_UPDATE_VOLUME_LEVEL_NOTIFY set json success jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6206
    :cond_4
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAVI_UPDATE_VOLUME_LEVEL_NOTIFY set json failed jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6211
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "payload":Lorg/json/JSONObject;
    :cond_5
    :goto_1
    goto/16 :goto_4

    .line 6209
    :catch_0
    move-exception v0

    .line 6210
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAVI_UPDATE_VOLUME_LEVEL_NOTIFY json error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "e":Lorg/json/JSONException;
    goto/16 :goto_4

    .line 6167
    :cond_6
    :goto_2
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6168
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "domain"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6169
    const-string v1, "id"

    const-string v2, "PHONE_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6170
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6171
    .restart local v1    # "payload":Lorg/json/JSONObject;
    const-string v2, "VolumeLevel"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6172
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6173
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    if-eqz v2, :cond_8

    .line 6174
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6175
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_UPDATE_VOLUME_LEVEL_NOTIFY set json success jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6177
    :cond_7
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_UPDATE_VOLUME_LEVEL_NOTIFY set json failed jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "payload":Lorg/json/JSONObject;
    goto :goto_3

    .line 6215
    :catch_1
    move-exception v0

    goto :goto_5

    .line 6180
    :catch_2
    move-exception v0

    .line 6181
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_UPDATE_VOLUME_LEVEL_NOTIFY json error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 6182
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_8
    :goto_3
    nop

    .line 6217
    :cond_9
    :goto_4
    goto :goto_6

    .line 6215
    :goto_5
    nop

    .line 6216
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarBodyStateManager"

    const-string v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private processEventInner(II[B)V
    .locals 7
    .param p1, "opId"    # I
    .param p2, "opType"    # I
    .param p3, "payload"    # [B

    .line 1056
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    const/16 v0, 0xb24

    if-ne p1, v0, :cond_1

    .line 1057
    new-instance v0, Lcom/yfvet/javaIpcp/bean/ota/OpOTATCAMAssignmentNotification_Notification;

    invoke-direct {v0, p3}, Lcom/yfvet/javaIpcp/bean/ota/OpOTATCAMAssignmentNotification_Notification;-><init>([B)V

    .line 1058
    .local v0, "notification":Lcom/yfvet/javaIpcp/bean/ota/OpOTATCAMAssignmentNotification_Notification;
    invoke-virtual {v0}, Lcom/yfvet/javaIpcp/bean/ota/OpOTATCAMAssignmentNotification_Notification;->getInstallationorder()Ljava/lang/String;

    move-result-object v1

    .line 1059
    .local v1, "installationorder":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/yfvet/javaIpcp/bean/ota/OpOTATCAMAssignmentNotification_Notification;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/yfvet/javaIpcp/bean/ota/OpOTATCAMAssignmentNotification_Notification;->getNewstatus()Ljava/lang/String;

    move-result-object v3

    .line 1061
    .local v3, "newstatus":Ljava/lang/String;
    sget-boolean v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1062
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processEventInner--0B24--reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", newstatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->notifyOTAStatusonChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    .end local v0    # "notification":Lcom/yfvet/javaIpcp/bean/ota/OpOTATCAMAssignmentNotification_Notification;
    .end local v1    # "installationorder":Ljava/lang/String;
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "newstatus":Ljava/lang/String;
    goto :goto_0

    .line 1066
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1067
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processEventInner--opType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",opId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_2
    :goto_0
    return-void
.end method

.method private queryCarConfig(I)I
    .locals 5
    .param p1, "carConfigId"    # I

    .line 3651
    const/4 v0, -0x1

    .line 3652
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->localConfigManager:Lcom/yfvet/localconfigjni/LocalConfigManager;

    if-nez v1, :cond_0

    .line 3653
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " query car config but localconfigmanager is null carConfigId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    return v0

    .line 3656
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->localConfigManager:Lcom/yfvet/localconfigjni/LocalConfigManager;

    invoke-virtual {v1}, Lcom/yfvet/localconfigjni/LocalConfigManager;->isCarConfigReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3657
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->localConfigManager:Lcom/yfvet/localconfigjni/LocalConfigManager;

    invoke-virtual {v1, p1}, Lcom/yfvet/localconfigjni/LocalConfigManager;->queryCarConfigItem(I)[B

    move-result-object v1

    .line 3658
    .local v1, "bytesCarConfig":[B
    if-eqz v1, :cond_1

    .line 3659
    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->binary([BI)Ljava/lang/String;

    move-result-object v2

    .line 3660
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3661
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3662
    :cond_1
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " query car config but query result is null carConfigId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    .end local v1    # "bytesCarConfig":[B
    :goto_0
    goto :goto_1

    .line 3665
    :cond_2
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " query car config but localconfigmanager is not ready carConfigId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    :goto_1
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCarConfig carConfigId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    return v0
.end method

.method private removeStrModeMessage()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->removeMessages(I)V

    .line 577
    :cond_0
    return-void
.end method

.method private setCarDoorStatus(II)V
    .locals 4
    .param p1, "doorArea"    # I
    .param p2, "value"    # I

    .line 2652
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SET_CAR_DOOR_STATUS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2653
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2654
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2656
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qKjkjklFPJikSDumvVk2TXe70_Q;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qKjkjklFPJikSDumvVk2TXe70_Q;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2662
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bMjYKgGCrBosJQUVzfqIB83_xxI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bMjYKgGCrBosJQUVzfqIB83_xxI;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$nkDEfDMzWBOYd6ezlUlWQDgtTXI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$nkDEfDMzWBOYd6ezlUlWQDgtTXI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2666
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SET_CAR_DOOR_STATUS"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    return-void
.end method

.method private setDriverHeatShift(I)V
    .locals 4
    .param p1, "shift"    # I

    .line 1812
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DRIVER_HEAT_SHIFT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1813
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 1814
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1816
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverVentilationShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {v1, v2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 1817
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$C8YRHKYHuylR_7sRcaxN8tsp1IE;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$C8YRHKYHuylR_7sRcaxN8tsp1IE;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$NL77qi-3S3ncjEWD5VbTn0OiCwM;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$NL77qi-3S3ncjEWD5VbTn0OiCwM;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1822
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DRIVER_HEAT_SHIFT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    return-void
.end method

.method private setDriverHeatShiftInternal(I)Lio/reactivex/Observable;
    .locals 1
    .param p1, "shift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1854
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YPZmU9U2WD64FCwfC-qr699Iiss;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YPZmU9U2WD64FCwfC-qr699Iiss;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private setDriverVentilationShift(I)V
    .locals 4
    .param p1, "shift"    # I

    .line 1826
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DRIVER_VENTILATION_SHIFT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1827
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 1828
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1830
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverVentilationShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {v1, v2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 1831
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$eVt2AwAaWxCyO3a2Y0G5t-La6lU;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$eVt2AwAaWxCyO3a2Y0G5t-La6lU;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bAYaMELpxfrRgNmBe5N9YG9zcqo;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bAYaMELpxfrRgNmBe5N9YG9zcqo;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1836
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DRIVER_VENTILATION_SHIFT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    return-void
.end method

.method private setDriverVentilationShiftInternal(I)Lio/reactivex/Observable;
    .locals 1
    .param p1, "shift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1865
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$9AFhh73N_6Zk5DIoxbvdX3n7BSY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$9AFhh73N_6Zk5DIoxbvdX3n7BSY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private setMediaVolume2Hmi(I)V
    .locals 5
    .param p1, "level"    # I

    .line 6222
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6223
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "domain"

    const-string v2, "Media"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6224
    const-string v1, "id"

    const-string v2, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6225
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6226
    .local v1, "payload":Lorg/json/JSONObject;
    const-string v2, "VolumeLevel"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6227
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6228
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    if-eqz v2, :cond_1

    .line 6229
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6230
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY set json success jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6232
    :cond_0
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY set json failed jsonObject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6237
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "payload":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    goto :goto_1

    .line 6235
    :catch_0
    move-exception v0

    .line 6236
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY json error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6238
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private setPassengerHeatShift(I)V
    .locals 4
    .param p1, "shift"    # I

    .line 1930
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PASSENGER_HEAT_SHIFT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1931
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 1932
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1934
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerVentilationShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {v1, v2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 1935
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$LxmyjMMEAsRNaRMezX3ok3fgyd0;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$LxmyjMMEAsRNaRMezX3ok3fgyd0;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$veh5rxizRZFoU3sdK28IiSfPFUY;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$veh5rxizRZFoU3sdK28IiSfPFUY;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1939
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PASSENGER_HEAT_SHIFT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    return-void
.end method

.method private setPassengerHeatShiftInternal(I)Lio/reactivex/Observable;
    .locals 1
    .param p1, "shift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1972
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$c9UjYzzHrXKcyGKlIAYDDRNjwz8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$c9UjYzzHrXKcyGKlIAYDDRNjwz8;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private setPassengerVentilationShift(I)V
    .locals 4
    .param p1, "shift"    # I

    .line 1943
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PASSENGER_VENTILATION_SHIFT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1944
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 1945
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1947
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerVentilationShiftInternal(I)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {v1, v2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    .line 1948
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$2jIYC2m2UxZGYSFlkUR0VomflUQ;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$2jIYC2m2UxZGYSFlkUR0VomflUQ;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7cKJ58NJ05YGhaTyJaEbWpG25VU;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7cKJ58NJ05YGhaTyJaEbWpG25VU;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1954
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PASSENGER_VENTILATION_SHIFT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    return-void
.end method

.method private setPassengerVentilationShiftInternal(I)Lio/reactivex/Observable;
    .locals 1
    .param p1, "shift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1983
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$iZXBcOFKaZXz2Fsxy6yh4sSN_rI;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$iZXBcOFKaZXz2Fsxy6yh4sSN_rI;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private setUsbStorageStatus()V
    .locals 7

    .line 1564
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_3

    .line 1565
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    .line 1566
    .local v0, "paths":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1567
    .local v4, "path":Ljava/lang/String;
    const-string/jumbo v5, "storage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const-string v5, "/storage/emulated/0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1568
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isUSBIconShow:Z

    .line 1569
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 1570
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1571
    const-string v1, "CarBodyStateManager"

    const-string/jumbo v2, "setUsbStorageStatus...isUSBIconShow=true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_0
    return-void

    .line 1566
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1576
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isUSBIconShow:Z

    .line 1578
    .end local v0    # "paths":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private syncDeviceLanguage()V
    .locals 7

    .line 5733
    const-string v0, "persist.sys.locale"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5734
    .local v0, "language":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5735
    const-string/jumbo v1, "ro.product.locale"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5737
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 5738
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syncDeviceLanguage set language = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5740
    :cond_1
    const/4 v1, 0x0

    .line 5741
    .local v1, "local_lang":I
    const-string/jumbo v2, "zh-CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5742
    const/4 v1, 0x0

    goto :goto_0

    .line 5744
    :cond_2
    const/4 v1, 0x1

    .line 5746
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateLanguage(I)V

    .line 5748
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5749
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "domain"

    const-string v4, "Global"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5750
    const-string v3, "id"

    const-string v4, "locale"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5751
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5752
    .local v3, "payload":Lorg/json/JSONObject;
    const-string v4, "current_language"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5753
    const-string v4, "payload"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5754
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    if-eqz v4, :cond_4

    .line 5755
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5756
    sget-boolean v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 5757
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "syncDeviceLanguage set json success jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5760
    :cond_3
    sget-boolean v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 5761
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "syncDeviceLanguage set json failed jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5769
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "payload":Lorg/json/JSONObject;
    :cond_4
    :goto_1
    goto :goto_2

    .line 5765
    :catch_0
    move-exception v2

    .line 5766
    .local v2, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 5767
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMediaSourceTypeList json error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    if-eqz v2, :cond_6

    .line 5773
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarRSEMYfveManager:Landroid/car/hardware/rsem/CarRSEMYfveManager;

    const v3, 0x50083

    const/high16 v4, -0x80000000

    invoke-virtual {v2, v3, v4, v1}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V
    :try_end_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5777
    :cond_6
    goto :goto_3

    .line 5775
    :catch_1
    move-exception v2

    .line 5776
    .local v2, "e":Landroid/car/CarNotConnectedException;
    const-string v3, "CarBodyStateManager"

    const-string v4, "Car is not connected"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5778
    .end local v2    # "e":Landroid/car/CarNotConnectedException;
    :goto_3
    return-void
.end method

.method private updateCarBodyState(I)V
    .locals 6
    .param p1, "which"    # I

    .line 4231
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    .line 4236
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4237
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4238
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 4239
    monitor-exit v0

    return-void

    .line 4241
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4243
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    goto/16 :goto_48

    .line 4260
    :pswitch_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4261
    .local v2, "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mMicReverb:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onMicReverb(I)V

    .line 4262
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_0

    .line 4263
    :cond_1
    goto/16 :goto_48

    .line 4255
    :pswitch_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4256
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mMicVolume:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onMicModeVolume(I)V

    .line 4257
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_1

    .line 4258
    :cond_2
    goto/16 :goto_48

    .line 4250
    :pswitch_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4251
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mMicMode:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onMicModeChange(I)V

    .line 4252
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_2

    .line 4253
    :cond_3
    goto/16 :goto_48

    .line 4245
    :pswitch_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4246
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSongMode:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onSongModeChange(I)V

    .line 4247
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_3

    .line 4248
    :cond_4
    goto/16 :goto_48

    .line 4524
    :pswitch_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4525
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    invoke-interface {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onStrModeChange()V

    .line 4526
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_4

    .line 4527
    :cond_5
    goto/16 :goto_48

    .line 4627
    :pswitch_5
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_BATTERY_PREHEATING_STATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryPreheating:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4629
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryPreheating:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onBatteryPreheatingChange(I)V

    .line 4630
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_5

    .line 4631
    :cond_6
    goto/16 :goto_48

    .line 4621
    :pswitch_6
    const-string v0, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_BATTERY_TEMP_CHANGE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v4, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4623
    .local v3, "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v4, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryTemp:I

    invoke-interface {v3, v4, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onBatteryTempChange(IZ)V

    .line 4624
    .end local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_6

    .line 4625
    :cond_7
    goto/16 :goto_48

    .line 4615
    :pswitch_7
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_AQI_CO2_HIGH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAqiHighConfig:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4617
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAqiHighConfig:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onAqiCO2HighChange(Z)V

    .line 4618
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_7

    .line 4619
    :cond_8
    goto/16 :goto_48

    .line 4609
    :pswitch_8
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_AQI_CO2 mCarBodyStateData.mAQICO2Level == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2Level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2AutoState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4610
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4611
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2Level:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v4, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2AutoState:I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onAqiCO2Change(II)V

    .line 4612
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_8

    .line 4613
    :cond_9
    goto/16 :goto_48

    .line 4539
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isSupportElectricDoor:Z

    if-eqz v0, :cond_a

    .line 4540
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerDoorPosInit()I

    .line 4542
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4543
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isSupportElectricDoor:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onSuppertElectricDoorChange(Z)V

    .line 4544
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_9

    .line 4545
    :cond_b
    goto/16 :goto_48

    .line 4534
    :pswitch_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4535
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isDvrIconShow:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onDvrCFGChange(Z)V

    .line 4536
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_a

    .line 4537
    :cond_c
    goto/16 :goto_48

    .line 4602
    :pswitch_b
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_CAR_SPEED_CHANGE mCarBodyStateData.mSensorCarSpeed == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSensorCarSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4604
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSensorCarSpeed:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onCarSpeedChange(I)V

    .line 4605
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_b

    .line 4606
    :cond_d
    goto/16 :goto_48

    .line 4596
    :pswitch_c
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_STATUSBAR_MODE_CHANGE mCarBodyStateData.mStatusBarMode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mStatusBarMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4598
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mStatusBarMode:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onStatusBarModeChange(I)V

    .line 4599
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_c

    .line 4600
    :cond_e
    goto/16 :goto_48

    .line 4590
    :pswitch_d
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_LOCATION_MODE_CHANGE mCarBodyStateData.mLocationMode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLocationMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4592
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLocationMode:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onLocationModeChange(I)V

    .line 4593
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_d

    .line 4594
    :cond_f
    goto/16 :goto_48

    .line 4584
    :pswitch_e
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SENTRY_MODE_CHANGE mCarBodyStateData.mSentryMode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSentryMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4586
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSentryMode:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onSentryModeChange(I)V

    .line 4587
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_e

    .line 4588
    :cond_10
    goto/16 :goto_48

    .line 4578
    :pswitch_f
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_CAR_GEAR_CHANGE mCarBodyStateData.mCarGear == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCarGear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4580
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCarGear:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onCarGearChange(I)V

    .line 4581
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_f

    .line 4582
    :cond_11
    goto/16 :goto_48

    .line 4572
    :pswitch_10
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SCENE_MODE_CHANGE mCarBodyStateData.mSceneMode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSceneMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4574
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSceneMode:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onSceneModeChange(I)V

    .line 4575
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_10

    .line 4576
    :cond_12
    goto/16 :goto_48

    .line 4433
    :pswitch_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4434
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mParkComfortModeLeftTime:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onParkComfortModeLeftTimeChange(I)V

    .line 4435
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_11

    .line 4436
    :cond_13
    goto/16 :goto_48

    .line 4383
    :pswitch_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4384
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onTopBarBatteryColorChange(I)V

    .line 4385
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_12

    .line 4386
    :cond_14
    goto/16 :goto_48

    .line 4567
    :pswitch_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4568
    .restart local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onHideOrShowRemoteLogcatIconChange(Z)V

    .line 4569
    .end local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_13

    .line 4570
    :cond_15
    goto/16 :goto_48

    .line 4562
    :pswitch_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4563
    .restart local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onHideOrShowRemoteLogcatIconChange(Z)V

    .line 4564
    .end local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_14

    .line 4565
    :cond_16
    goto/16 :goto_48

    .line 4557
    :pswitch_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4558
    .restart local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v4, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBtPhoneType:I

    invoke-interface {v3, v0, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onHideOrShowBtDialerIconChange(ZI)V

    .line 4559
    .end local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_15

    .line 4560
    :cond_17
    goto/16 :goto_48

    .line 4552
    :pswitch_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4553
    .restart local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v4, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBtPhoneType:I

    invoke-interface {v3, v2, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onHideOrShowBtDialerIconChange(ZI)V

    .line 4554
    .end local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_16

    .line 4555
    :cond_18
    goto/16 :goto_48

    .line 4547
    :pswitch_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4548
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerDoorPos:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onPassengerDoorPosChange(I)V

    .line 4549
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_17

    .line 4550
    :cond_19
    goto/16 :goto_48

    .line 4529
    :pswitch_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4530
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mCarSpeed:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onCarSpeedCheck(I)V

    .line 4531
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_18

    .line 4532
    :cond_1a
    goto/16 :goto_48

    .line 4519
    :pswitch_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4520
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSTRAppIndex:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onLauncherApp(I)V

    .line 4521
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_19

    .line 4522
    :cond_1b
    goto/16 :goto_48

    .line 4504
    :pswitch_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4505
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCapAvail:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onChargeDCCapAvailChange(I)V

    .line 4506
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_1a

    .line 4507
    :cond_1c
    goto/16 :goto_48

    .line 4509
    :pswitch_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4510
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCapAvail:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onChargeACCapAvailChange(I)V

    .line 4511
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_1b

    .line 4512
    :cond_1d
    goto/16 :goto_48

    .line 4499
    :pswitch_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4500
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCap:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onChargeDCCapStateChange(I)V

    .line 4501
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_1c

    .line 4502
    :cond_1e
    goto/16 :goto_48

    .line 4514
    :pswitch_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4515
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLanguage:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onLanguageChange(I)V

    .line 4516
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_1d

    .line 4517
    :cond_1f
    goto/16 :goto_48

    .line 4490
    :pswitch_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4491
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mUnitDis:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onUnitDrvDistanceChange(I)V

    .line 4492
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_1e

    .line 4494
    :cond_20
    :pswitch_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4495
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCap:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onChargeACCapStateChange(I)V

    .line 4496
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_1f

    .line 4497
    :cond_21
    goto/16 :goto_48

    .line 4485
    :pswitch_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4486
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2LState:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onV2LStateChange(I)V

    .line 4487
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_20

    .line 4488
    :cond_22
    goto/16 :goto_48

    .line 4480
    :pswitch_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4481
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mV2VState:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onV2VStateChange(I)V

    .line 4482
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_21

    .line 4483
    :cond_23
    goto/16 :goto_48

    .line 4475
    :pswitch_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4476
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDischargeSOCLevel:F

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onDischargeSOCLevelChange(F)V

    .line 4477
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_22

    .line 4478
    :cond_24
    goto/16 :goto_48

    .line 4470
    :pswitch_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4471
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeSOCLevel:F

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onChargeSOCLevelChange(F)V

    .line 4472
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_23

    .line 4473
    :cond_25
    goto/16 :goto_48

    .line 4448
    :pswitch_24
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isInUImodeloading:Z

    if-eqz v3, :cond_26

    .line 4449
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4450
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4451
    return-void

    .line 4453
    .end local v0    # "msg":Landroid/os/Message;
    :cond_26
    sput-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isInUImodeloading:Z

    .line 4454
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4455
    .restart local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v4, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onDayNightModeChange(I)V

    .line 4456
    .end local v3    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_24

    .line 4457
    :cond_27
    sput-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isInUImodeloading:Z

    .line 4458
    goto/16 :goto_48

    .line 4438
    :pswitch_25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4439
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mEstimatedTime:F

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onEstimatedTimeChange(F)V

    .line 4440
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_25

    .line 4441
    :cond_28
    goto/16 :goto_48

    .line 4428
    :pswitch_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4429
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mParkComfortModeValue:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onParkComfortModeChange(I)V

    .line 4430
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_26

    .line 4431
    :cond_29
    goto/16 :goto_48

    .line 4423
    :pswitch_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4424
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeMode:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onWPCChargeModeChange(I)V

    .line 4425
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_27

    .line 4426
    :cond_2a
    goto/16 :goto_48

    .line 4418
    :pswitch_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4419
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeStatus:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onWPCChargeStatusChange(I)V

    .line 4420
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_28

    .line 4421
    :cond_2b
    goto/16 :goto_48

    .line 4465
    :pswitch_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4466
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isUSBIconShow:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onUSBModeChange(Z)V

    .line 4467
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_29

    .line 4468
    :cond_2c
    goto/16 :goto_48

    .line 4460
    :pswitch_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4461
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mOTAMessageId:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onOTAMessageChange(I)V

    .line 4462
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_2a

    .line 4463
    :cond_2d
    goto/16 :goto_48

    .line 4443
    :pswitch_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4444
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mEnduranceMileage:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onEnduranceMileageChange(I)V

    .line 4445
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_2b

    .line 4446
    :cond_2e
    goto/16 :goto_48

    .line 4413
    :pswitch_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4414
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryColor:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onBatteryColorChange(I)V

    .line 4415
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_2c

    .line 4416
    :cond_2f
    goto/16 :goto_48

    .line 4408
    :pswitch_2d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4409
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryFail:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onBatteryFailureChange(I)V

    .line 4410
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_2d

    .line 4411
    :cond_30
    goto/16 :goto_48

    .line 4403
    :pswitch_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4404
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateDC:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onBatteryDCStateChange(I)V

    .line 4405
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_2e

    .line 4406
    :cond_31
    goto/16 :goto_48

    .line 4398
    :pswitch_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4399
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateAC:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onBatteryACStateChange(I)V

    .line 4400
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_2f

    .line 4401
    :cond_32
    goto/16 :goto_48

    .line 4388
    :pswitch_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4389
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugDCState:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onPlugDCStateChange(I)V

    .line 4390
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_30

    .line 4391
    :cond_33
    goto/16 :goto_48

    .line 4393
    :pswitch_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4394
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugACState:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onPlugACStateChange(I)V

    .line 4395
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_31

    .line 4396
    :cond_34
    goto/16 :goto_48

    .line 4378
    :pswitch_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4379
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryLevel:F

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onBatteryLevelChange(F)V

    .line 4380
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_32

    .line 4381
    :cond_35
    goto/16 :goto_48

    .line 4290
    :pswitch_33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4291
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDvrState:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onDvrStateChange(I)V

    .line 4292
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_33

    .line 4293
    :cond_36
    goto/16 :goto_48

    .line 4285
    :pswitch_34
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4286
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTimeFormat:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onTimeFormatChange(I)V

    .line 4287
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_34

    .line 4288
    :cond_37
    goto/16 :goto_48

    .line 4280
    :pswitch_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4281
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDateFormat:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onDateFormatChange(I)V

    .line 4282
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_35

    .line 4283
    :cond_38
    goto/16 :goto_48

    .line 4373
    :pswitch_36
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4374
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOStatus:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onECOStatusChange(Z)V

    .line 4375
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_36

    .line 4376
    :cond_39
    goto/16 :goto_48

    .line 4368
    :pswitch_37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4369
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQILevel:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onAQIStatusChange(I)V

    .line 4370
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_37

    .line 4371
    :cond_3a
    goto/16 :goto_48

    .line 4363
    :pswitch_38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4364
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPDCStatus:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onPDCStatusChange(Z)V

    .line 4365
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_38

    .line 4366
    :cond_3b
    goto/16 :goto_48

    .line 4358
    :pswitch_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4359
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->inPm25State:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onInsideAirStateChange(I)V

    .line 4360
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_39

    .line 4361
    :cond_3c
    goto/16 :goto_48

    .line 4340
    :pswitch_3a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4341
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v3, :cond_3d

    .line 4342
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCarBodyStateData.isAcPowerState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    :cond_3d
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onAcPowerStateChange(Z)V

    .line 4345
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_3a

    .line 4346
    :cond_3e
    goto/16 :goto_48

    .line 4335
    :pswitch_3b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4336
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAdjustableTemp:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onAdjustableTempChange(Ljava/util/List;)V

    .line 4337
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_3b

    .line 4338
    :cond_3f
    goto/16 :goto_48

    .line 4325
    :pswitch_3c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4326
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isTempSync:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onTempSyncStateChange(Z)V

    .line 4327
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_3c

    .line 4328
    :cond_40
    goto/16 :goto_48

    .line 4330
    :pswitch_3d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4331
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onClimateChange(I)V

    .line 4332
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_3d

    .line 4333
    :cond_41
    goto/16 :goto_48

    .line 4318
    :pswitch_3e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4319
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerShift:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onPassengerHeatOrVentilationChange(I)V

    .line 4321
    invoke-interface {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onPassengerHeatVentilationVailChange()V

    .line 4322
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_3e

    .line 4323
    :cond_42
    goto/16 :goto_48

    .line 4305
    :pswitch_3f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4306
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onPassengerTempChange(F)V

    .line 4307
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_3f

    .line 4308
    :cond_43
    goto/16 :goto_48

    .line 4310
    :pswitch_40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4312
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverShift:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onDriverHeatOrVentilationChange(I)V

    .line 4314
    invoke-interface {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onDriverHeatOrVentilationVailChange()V

    .line 4315
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_40

    .line 4316
    :cond_44
    goto/16 :goto_48

    .line 4300
    :pswitch_41
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4301
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onDriverTempChange(F)V

    .line 4302
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_41

    .line 4303
    :cond_45
    goto/16 :goto_48

    .line 4295
    :pswitch_42
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4296
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isRoadSlip:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onRoadSlipStateChange(I)V

    .line 4297
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_42

    .line 4298
    :cond_46
    goto/16 :goto_48

    .line 4265
    :pswitch_43
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4266
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreInsidePm:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onInsideAirQualityChange(I)V

    .line 4267
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_43

    .line 4268
    :cond_47
    goto :goto_48

    .line 4270
    :pswitch_44
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4271
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreOutsidePm:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onOutsideAirQualityChange(I)V

    .line 4272
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_44

    .line 4273
    :cond_48
    goto :goto_48

    .line 4275
    :pswitch_45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4276
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreOutsideTemp:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isCelsius:Z

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onOutsideTempChange(FZ)V

    .line 4277
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_45

    .line 4278
    :cond_49
    goto :goto_48

    .line 4353
    :pswitch_46
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4354
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    invoke-interface {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onDisconnected()V

    .line 4355
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_46

    .line 4356
    :cond_4a
    goto :goto_48

    .line 4348
    :pswitch_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 4349
    .restart local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    invoke-interface {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;->onConnected()V

    .line 4350
    .end local v2    # "iOnCarStateChange":Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;
    goto :goto_47

    .line 4351
    :cond_4b
    nop

    .line 4635
    :goto_48
    return-void

    .line 4241
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x74
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateEnduranceMileage(I)V
    .locals 4
    .param p1, "enduranceMileage"    # I

    .line 3333
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "ENDURANCE_MILEAGE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3334
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3335
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3337
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qWFsBLJ52cahchEvGDLcPrEzun4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qWFsBLJ52cahchEvGDLcPrEzun4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3340
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$VY9NUuH5sej1X7p5c0vlBgcWRSk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$VY9NUuH5sej1X7p5c0vlBgcWRSk;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$DkFyR0GjQzlMmWDr6eFtX7CRq7o;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$DkFyR0GjQzlMmWDr6eFtX7CRq7o;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3345
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "ENDURANCE_MILEAGE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3346
    return-void
.end method

.method private updateGear(I)V
    .locals 4
    .param p1, "gear"    # I

    .line 3349
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CAR_GEAR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3350
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3351
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3353
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D-BKKjjgitabH9tD1iSzbvE6Nl4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D-BKKjjgitabH9tD1iSzbvE6Nl4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3356
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$49MDrARgCMGQAPN_atGFUvBMI9g;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$49MDrARgCMGQAPN_atGFUvBMI9g;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$u-NhTXSnLEKqsfLsWVE3EiGOTWI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$u-NhTXSnLEKqsfLsWVE3EiGOTWI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3361
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CAR_GEAR"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3362
    return-void
.end method

.method private updateInPm25StateInternal(I)V
    .locals 4
    .param p1, "inPm25State"    # I

    .line 3156
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "INSIDE_PM25_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3157
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3158
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3160
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$26DMgDFRSjIK1mAd2gKS0TCznpA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$26DMgDFRSjIK1mAd2gKS0TCznpA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3163
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$vSYk6HHuQZkg7DFFUHVYIn8HaZo;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$vSYk6HHuQZkg7DFFUHVYIn8HaZo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$DvX9C1dlg1iVUOcRWf-Mb29EZv4;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$DvX9C1dlg1iVUOcRWf-Mb29EZv4;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3171
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "INSIDE_PM25_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    return-void
.end method

.method private updateLanguage(I)V
    .locals 4
    .param p1, "language"    # I

    .line 3027
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_LANGUAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3028
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3029
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3031
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$gl7vQ3xTK0M49Sx9rdTKReJggEY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$gl7vQ3xTK0M49Sx9rdTKReJggEY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3034
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ixMc-gwJ1md2BFzjUq09rn3DOvA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ixMc-gwJ1md2BFzjUq09rn3DOvA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$44n7czvvB5aOz0V-p3NL3NpJ47A;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$44n7czvvB5aOz0V-p3NL3NpJ47A;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3040
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_LANGUAGE_CHANGED"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3041
    return-void
.end method

.method private static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 5812
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5813
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5815
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateLocales(Landroid/os/LocaleList;)V

    .line 5816
    return-void
.end method

.method private static updateLocales(Landroid/os/LocaleList;)V
    .locals 3
    .param p0, "locales"    # Landroid/os/LocaleList;

    .line 5825
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5826
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 5828
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 5829
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5831
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 5833
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5836
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    goto :goto_0

    .line 5834
    :catch_0
    move-exception v0

    .line 5837
    :goto_0
    return-void
.end method

.method private updateMaxAdjustableTempInternal()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2970
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$XNj7gY2ND4u2r9i4FNEcPKMG6DE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$XNj7gY2ND4u2r9i4FNEcPKMG6DE;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private updateMicMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 3123
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MIC_MODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3124
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3125
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3127
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$j1F--RDsQndOblCfBDTpIgy105o;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$j1F--RDsQndOblCfBDTpIgy105o;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3130
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5oXgq4NkawvfeE3SGii_4_IF3g0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5oXgq4NkawvfeE3SGii_4_IF3g0;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$srh75Msgx2Ta1cqZgcfnyQP-bAI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$srh75Msgx2Ta1cqZgcfnyQP-bAI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3135
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MIC_MODE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3136
    return-void
.end method

.method private updateMicReverb(I)V
    .locals 4
    .param p1, "reverb"    # I

    .line 3108
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MIC_REVERB"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3109
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3110
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3112
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JI7s2SfVsa7VIfiL2aMubL0zZKw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JI7s2SfVsa7VIfiL2aMubL0zZKw;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3115
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MXbybT_0imj3-boofgQOZjNaeAk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MXbybT_0imj3-boofgQOZjNaeAk;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SXMQtSLM73NIrZ2R7R9KqDzKMbo;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SXMQtSLM73NIrZ2R7R9KqDzKMbo;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3120
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MIC_REVERB"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    return-void
.end method

.method private updateMicVolume(I)V
    .locals 4
    .param p1, "volume"    # I

    .line 3092
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MIC_VOLUME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3093
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3094
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3096
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8G6gVPWAePUb_o95KxiBx-zE-QU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8G6gVPWAePUb_o95KxiBx-zE-QU;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3099
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$pGndrA4B8FMcyInD6100zLVzuM4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$pGndrA4B8FMcyInD6100zLVzuM4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$apxXVvz-gaTwrBMAjolWa22bu74;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$apxXVvz-gaTwrBMAjolWa22bu74;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3104
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MIC_VOLUME"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    return-void
.end method

.method private updateMinAdjustableTempInternal()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2980
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$PjZb4-JeCqNr1bGFPSzSw0igJ5o;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$PjZb4-JeCqNr1bGFPSzSw0igJ5o;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private updateOTAIconOnStatusbar(I)V
    .locals 3
    .param p1, "messageId"    # I

    .line 1209
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1210
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOTAIconOnStatusbar messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mOTAMessageId:I

    .line 1213
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 1214
    return-void
.end method

.method private updateOutsideAQIInternal(I)V
    .locals 4
    .param p1, "aqi"    # I

    .line 3044
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "OUTSIDE_AQI"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3045
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3046
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3048
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bIIWkOTpvTlJ_VnTDBrNwaiTMXU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bIIWkOTpvTlJ_VnTDBrNwaiTMXU;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3051
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$UD25p6j1JsZIEO_FZKoPwesuo3g;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$UD25p6j1JsZIEO_FZKoPwesuo3g;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KsC7YB0i3KX2b6QdDiVc9lIU2kM;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KsC7YB0i3KX2b6QdDiVc9lIU2kM;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3056
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "OUTSIDE_AQI"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3057
    return-void
.end method

.method private updateOutsideTempInternal(F)V
    .locals 4
    .param p1, "temp"    # F

    .line 3011
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "OUTSIDE_TEMP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3012
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3013
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3015
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$X4akr_3eAjWR9IUkw4300l4pxrU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$X4akr_3eAjWR9IUkw4300l4pxrU;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;F)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3018
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$l8Hch35BAcX6e0oVfLRGuV_l3Vs;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$l8Hch35BAcX6e0oVfLRGuV_l3Vs;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bc0UpCxTCq5BIjJfmzxDKKFwP1I;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bc0UpCxTCq5BIjJfmzxDKKFwP1I;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3023
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "OUTSIDE_TEMP"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3024
    return-void
.end method

.method private updateOutsideTempUnitInternal(ZI)Lio/reactivex/Observable;
    .locals 1
    .param p1, "hasValue"    # Z
    .param p2, "isCelsius"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2380
    new-instance v0, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ok8nuI0BJtns1tqdXhdN_yWwECk;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ok8nuI0BJtns1tqdXhdN_yWwECk;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private updatePm25ValueInternal(I)V
    .locals 4
    .param p1, "pm25Value"    # I

    .line 3060
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "INSIDE_AQI"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3061
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3062
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3064
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$25Mk3L7qVZUzat1dmQMufC9dbYY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$25Mk3L7qVZUzat1dmQMufC9dbYY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3067
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7yYnPj2_5NmqlbUqTx5o0VlryBE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7yYnPj2_5NmqlbUqTx5o0VlryBE;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qnOAeooD21M-3vtp7AXM4uaBJAw;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qnOAeooD21M-3vtp7AXM4uaBJAw;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3072
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "INSIDE_AQI"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3073
    return-void
.end method

.method private updateRoadSlipStateInternal(I)V
    .locals 4
    .param p1, "state"    # I

    .line 3139
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "ROAD_SLIP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3140
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3141
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3143
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$k8ybgQMGcWb7NRT5Kjh6d5Me4L8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$k8ybgQMGcWb7NRT5Kjh6d5Me4L8;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3146
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$wmiLODnEI3_UlN5PcsPH7TZFr4k;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$wmiLODnEI3_UlN5PcsPH7TZFr4k;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Wzss6rIKkMYSXOVWJA9vGh3CPzc;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Wzss6rIKkMYSXOVWJA9vGh3CPzc;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3151
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "ROAD_SLIP"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3152
    return-void
.end method

.method private updateSongMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 3076
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SONG_MODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3077
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3078
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3080
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$belVuskIyhcdj0Vm5AvFoH68rig;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$belVuskIyhcdj0Vm5AvFoH68rig;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3083
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bA-iX97MK2n-RF6xRvmeSfk1dww;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bA-iX97MK2n-RF6xRvmeSfk1dww;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$753fzIeIoU44HqGLeOa9O_Lazik;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$753fzIeIoU44HqGLeOa9O_Lazik;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3088
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SONG_MODE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3089
    return-void
.end method

.method private updateSpeed(I)V
    .locals 4
    .param p1, "speed"    # I

    .line 3365
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CAR_SPEED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3366
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3367
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3369
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$pWrImRaXGbKSR6cCKlkwIZfaAo0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$pWrImRaXGbKSR6cCKlkwIZfaAo0;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3372
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yZUnEW4dQM_jieGC4BjJZ_d8Lrs;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yZUnEW4dQM_jieGC4BjJZ_d8Lrs;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JBEaESmStOo-DzCfG1FmbX9OyhU;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JBEaESmStOo-DzCfG1FmbX9OyhU;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3377
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CAR_SPEED"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3378
    return-void
.end method

.method private updateWPCChargeMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 3397
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_WPC_CHARGE_MODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3398
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3399
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3401
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$h0-1Wq0tvx0HBJW6WQ0RZ7UdkY0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$h0-1Wq0tvx0HBJW6WQ0RZ7UdkY0;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3404
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$jXEE-YrkAiGhh2AfLmQlyGVQWPM;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$jXEE-YrkAiGhh2AfLmQlyGVQWPM;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$H0aOquhJ87iEGMXH07XaKnpyURE;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$H0aOquhJ87iEGMXH07XaKnpyURE;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3409
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_WPC_CHARGE_MODE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3410
    return-void
.end method

.method private updateWPCChargeStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .line 3381
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "WPC_CHARGE_STATES"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3382
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3383
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3385
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ZcioUuAdMPmOXB-bWljpvtvLN4I;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ZcioUuAdMPmOXB-bWljpvtvLN4I;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3388
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SJZKTr1dzej_hVODjto7Mj0PLrg;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SJZKTr1dzej_hVODjto7Mj0PLrg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_7d3s137fsxVvTFUS9yOXSsnM78;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_7d3s137fsxVvTFUS9yOXSsnM78;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3393
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "WPC_CHARGE_STATES"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    return-void
.end method

.method private watchForUIMode(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 971
    if-nez p1, :cond_1

    .line 972
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 973
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "watchForUIMode,context == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    return-void

    .line 977
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$2;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUIModeObserver:Landroid/database/ContentObserver;

    .line 989
    new-instance v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$3;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Handler;)V

    .line 1000
    .local v0, "mOneWorldObserver":Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ui_night_mode"

    .line 1001
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUIModeObserver:Landroid/database/ContentObserver;

    .line 1000
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1003
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "Entertainment_open"

    .line 1004
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1003
    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1006
    return-void
.end method


# virtual methods
.method public TellQnxAndroidBootComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 5782
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5783
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TellQnxAndroidBootComplete reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    if-nez v0, :cond_1

    .line 5786
    const-string v0, "CarBodyStateManager"

    const-string v1, "TellQnxAndroidBootComplete mSystemHMIManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5787
    return-void

    .line 5790
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5791
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "domain"

    const-string v2, "Global"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5792
    const-string v1, "id"

    const-string v2, "ANDROID_START_ANIMATION_FINISHED_NOTIFY"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5793
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5795
    .local v1, "jsonPayload":Lorg/json/JSONObject;
    const-string/jumbo v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5796
    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5797
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 5798
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TellQnxAndroidBootComplete set json = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5800
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSystemHMIManager:Landroid/app/systemHMI/SystemHMIManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5800
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonPayload":Lorg/json/JSONObject;
    goto :goto_0

    .line 5802
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonPayload":Lorg/json/JSONObject;
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 5803
    const-string v2, "CarBodyStateManager"

    const-string v3, "TellQnxAndroidBootComplete failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5808
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonPayload":Lorg/json/JSONObject;
    :cond_4
    :goto_0
    goto :goto_1

    .line 5806
    :catch_0
    move-exception v0

    .line 5807
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TellQnxAndroidBootComplete reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5809
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public addCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V
    .locals 2
    .param p1, "onCarStateChange"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    monitor-exit v0

    return-void

    .line 1327
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    monitor-exit v0

    .line 1329
    return-void

    .line 1328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public binary([BI)Ljava/lang/String;
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "radix"    # I

    .line 3647
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public connect()V
    .locals 4

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarService:Landroid/support/car/Car;

    invoke-virtual {v0}, Landroid/support/car/Car;->connect()V

    .line 950
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->checkIpcpService()V

    .line 951
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 952
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 953
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUsbEventListener:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$UsbEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 956
    :cond_0
    return-void
.end method

.method public driverHeatOrVentilationChange()I
    .locals 2

    .line 1343
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1344
    const-string v0, "CarBodyStateManager"

    const-string v1, "driverHeatOrVentilationChange: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    if-ne v0, v1, :cond_1

    .line 1347
    const/4 v0, 0x3

    return v0

    .line 1348
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1351
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 1349
    :cond_3
    :goto_0
    return v1
.end method

.method public getAQSState()I
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQILevel:I

    return v0
.end method

.method public getAcPowerState()Z
    .locals 1

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    return v0
.end method

.method public getAdjustableTemp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAdjustableTemp:Ljava/util/List;

    return-object v0
.end method

.method public getBatteryColor()I
    .locals 1

    .line 1464
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mTopBarBatteryColor:I

    return v0
.end method

.method public getBatteryFail()I
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryFail:I

    return v0
.end method

.method public getBatteryIconColor()I
    .locals 4

    .line 6699
    const/4 v0, -0x1

    .line 6701
    .local v0, "batteryColor":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    if-eqz v1, :cond_0

    .line 6703
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x7030

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 6706
    :goto_0
    goto :goto_1

    .line 6704
    :catch_0
    move-exception v1

    .line 6705
    .local v1, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .end local v1    # "e":Landroid/car/CarNotConnectedException;
    goto :goto_0

    .line 6708
    :cond_0
    const-string v1, "CarBodyStateManager"

    const-string v2, "getBatteryIconColor mCarSettingYfveManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6710
    :goto_1
    return v0
.end method

.method public getBatteryLevel()F
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryLevel:F

    return v0
.end method

.method public getBatteryStateAC()I
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateAC:I

    return v0
.end method

.method public getBatteryStateDC()I
    .locals 1

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryStateDC:I

    return v0
.end method

.method public getCarSettingTimeFormat()I
    .locals 4

    .line 6732
    const/4 v0, 0x0

    .line 6733
    .local v0, "timeFormat":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    if-eqz v1, :cond_0

    .line 6735
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x600d

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1

    move v0, v1

    .line 6736
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarSettingTimeFormat timeFormat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6737
    :catch_0
    move-exception v1

    .line 6738
    .local v1, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 6739
    .end local v1    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    nop

    .line 6744
    return v0

    .line 6741
    :cond_0
    const-string v1, "CarBodyStateManager"

    const-string v2, "getCarSettingTimeFormat mCarSettingYfveManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6742
    const/4 v1, -0x1

    return v1
.end method

.method public getChargeACCap()I
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCap:I

    return v0
.end method

.method public getChargeACCapAvail()I
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeACCapAvail:I

    return v0
.end method

.method public getChargeDCCap()I
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCap:I

    return v0
.end method

.method public getChargeDCCapAvail()I
    .locals 1

    .line 1500
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mChargeDCCapAvail:I

    return v0
.end method

.method public getClimateShift()I
    .locals 1

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    return v0
.end method

.method public getCurrentCarGear()I
    .locals 6

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "carGear":I
    const/4 v2, 0x0

    .line 911
    .local v2, "event":Landroid/support/car/hardware/CarSensorEvent;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/support/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v3
    :try_end_0
    .catch Landroid/support/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 914
    goto :goto_0

    .line 912
    :catch_0
    move-exception v3

    .line 913
    .local v3, "e":Landroid/support/car/CarNotConnectedException;
    invoke-virtual {v3}, Landroid/support/car/CarNotConnectedException;->printStackTrace()V

    .line 915
    .end local v3    # "e":Landroid/support/car/CarNotConnectedException;
    :goto_0
    if-eqz v2, :cond_1

    .line 917
    :try_start_1
    iget-object v3, v2, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aget v3, v3, v1

    move v0, v3

    .line 918
    sget-boolean v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 919
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentCarGear carGear "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 921
    :cond_0
    return v0

    .line 922
    :catch_1
    move-exception v3

    .line 923
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 926
    .end local v0    # "carGear":I
    .end local v2    # "event":Landroid/support/car/hardware/CarSensorEvent;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    goto :goto_1

    .line 927
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 928
    const-string v0, "CarBodyStateManager"

    const-string v2, "getCurrentCarGear mCarSensorManager == null "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_3
    :goto_1
    return v1
.end method

.method public getCurrentCarSpeed()I
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 886
    const/4 v0, 0x0

    .line 887
    .local v0, "carSpeed":I
    const/4 v2, 0x0

    .line 889
    .local v2, "event":Landroid/support/car/hardware/CarSensorEvent;
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v3
    :try_end_0
    .catch Landroid/support/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 892
    goto :goto_0

    .line 890
    :catch_0
    move-exception v3

    .line 891
    .local v3, "e":Landroid/support/car/CarNotConnectedException;
    invoke-virtual {v3}, Landroid/support/car/CarNotConnectedException;->printStackTrace()V

    .line 893
    .end local v3    # "e":Landroid/support/car/CarNotConnectedException;
    :goto_0
    if-eqz v2, :cond_0

    .line 895
    :try_start_1
    iget-object v3, v2, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aget v3, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    .line 896
    return v0

    .line 897
    :catch_1
    move-exception v3

    .line 898
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 902
    .end local v0    # "carSpeed":I
    .end local v2    # "event":Landroid/support/car/hardware/CarSensorEvent;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    return v1
.end method

.method public getCurrentSentryMode()I
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSentryMode:I

    return v0
.end method

.method public getDayNightMode()I
    .locals 1

    .line 1488
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    return v0
.end method

.method public getDriverHeatVentilationAvai()I
    .locals 5

    .line 1784
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1785
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    const-string v1, "getDriverHeatVentilationAvai()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_0
    const/16 v0, 0x12

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getHeatOrVentilationAvai(II)I

    move-result v0

    .line 1788
    .local v0, "driverHeatAvai":I
    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getHeatOrVentilationAvai(II)I

    move-result v1

    .line 1789
    .local v1, "driverVentilationAvai":I
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1790
    const-string v2, "CarBodyStateManager.HEAT_VENT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "driver_Heat_Avai: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const-string v2, "CarBodyStateManager.HEAT_VENT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "driver_Ventilation_Avai: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-ne v1, v2, :cond_2

    .line 1795
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_HEAT_VENTILATION_SHOW:I

    return v2

    .line 1796
    :cond_2
    const/4 v3, 0x2

    if-ne v0, v2, :cond_3

    if-ne v1, v3, :cond_3

    .line 1797
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_ONLY_HEAT_SHOW:I

    return v2

    .line 1799
    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v2, :cond_4

    .line 1800
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_ONLY_VENTILATION_SHOW:I

    return v2

    .line 1801
    :cond_4
    const/4 v3, 0x4

    if-ne v0, v2, :cond_5

    if-ne v1, v3, :cond_5

    .line 1802
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_ONLY_HEAT_SHOW:I

    return v2

    .line 1804
    :cond_5
    if-ne v0, v3, :cond_6

    if-ne v1, v2, :cond_6

    .line 1805
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DRIVER_ONLY_VENTILATION_SHOW:I

    return v2

    .line 1807
    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->NONE:I

    return v2
.end method

.method public getDriverHeatVentilationShift()I
    .locals 1

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverShift:I

    return v0
.end method

.method public getDriverTemp()F
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverTemp:F

    return v0
.end method

.method public getDriverTempAVAI()I
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDriverTempAVAI:I

    return v0
.end method

.method public getDvrCfg()Z
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isDvrIconShow:Z

    return v0
.end method

.method public getDvrState()I
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDvrState:I

    return v0
.end method

.method public getECOStatu()Z
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOStatus:Z

    return v0
.end method

.method public getEnduranceMileage()I
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mEnduranceMileage:I

    return v0
.end method

.method public getHeatOrVentilationAvai(II)I
    .locals 1
    .param p1, "driveOrPassenger"    # I
    .param p2, "heatOrVentilation"    # I

    .line 1368
    const/16 v0, 0x12

    packed-switch p1, :pswitch_data_0

    .line 1382
    const/4 v0, 0x0

    return v0

    .line 1370
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    return v0

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    return v0

    .line 1376
    :pswitch_1
    if-ne p2, v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    return v0

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInsidePm()I
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreInsidePm:I

    return v0
.end method

.method public getIsAcPower()Z
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAcPowerState:Z

    return v0
.end method

.method public getIsCelsius()Z
    .locals 1

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isCelsius:Z

    return v0
.end method

.method public getLastClimateShift()I
    .locals 1

    .line 2881
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    return v0
.end method

.method public getLocation()V
    .locals 3

    .line 649
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getLocationMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getMicLocation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateMicMode(I)V

    .line 651
    return-void
.end method

.method public getLocationMode()I
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLocationMode:I

    return v0
.end method

.method public getMic()V
    .locals 3

    .line 640
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMicVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getMicVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getMicVolume()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateMicVolume(I)V

    .line 642
    return-void
.end method

.method public getMicLocation()I
    .locals 4

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 690
    return v1

    .line 693
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v0}, Landroid/car/hardware/NoMicKTVManager;->getMicLocation()I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v2, "CarBodyStateManager"

    const-string/jumbo v3, "setMicLocation failed "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    return v1
.end method

.method public getMicReverb()I
    .locals 4

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 734
    return v1

    .line 737
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v0}, Landroid/car/hardware/NoMicKTVManager;->getMicReverb()I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v2, "CarBodyStateManager"

    const-string/jumbo v3, "setMicLocation failed "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    return v1
.end method

.method public getMicVolume()I
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 712
    return v1

    .line 715
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v0}, Landroid/car/hardware/NoMicKTVManager;->getMicVolume()I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v2, "CarBodyStateManager"

    const-string/jumbo v3, "setMicLocation failed "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    return v1
.end method

.method public getMsgMode()I
    .locals 4

    .line 1244
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1245
    return v1

    .line 1247
    :cond_0
    move v0, v1

    .line 1249
    .local v0, "usgMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x60ff

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1253
    goto :goto_0

    .line 1250
    :catch_0
    move-exception v1

    .line 1251
    .local v1, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 1252
    const/4 v0, 0x0

    .line 1254
    .end local v1    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    return v0
.end method

.method public getOutsidePm()I
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreOutsidePm:I

    return v0
.end method

.method public getOutsideTemp()F
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreOutsideTemp:F

    return v0
.end method

.method public getPDCStatus()Z
    .locals 1

    .line 1476
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPDCStatus:Z

    return v0
.end method

.method public getPM25HighConfig()Z
    .locals 1

    .line 5382
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAqiHighConfig:Z

    return v0
.end method

.method public getParkComfortModeValue()I
    .locals 4

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1230
    return v1

    .line 1232
    :cond_0
    move v0, v1

    .line 1234
    .local v0, "parkComfortValue":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v2, 0x7026

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/setting/CarSettingYfveManager;->getIntProperty(II)I

    move-result v1
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1238
    goto :goto_0

    .line 1235
    :catch_0
    move-exception v1

    .line 1236
    .local v1, "e":Landroid/car/CarNotConnectedException;
    const/4 v0, 0x0

    .line 1237
    invoke-virtual {v1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 1239
    .end local v1    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    return v0
.end method

.method public getPassengerDoorPos()I
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerDoorPos:I

    return v0
.end method

.method public getPassengerDoorPosInit()I
    .locals 2

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDoorPos(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerDoorPos:I

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerDoorPos:I

    return v0
.end method

.method public getPassengerHeatVentilationAvai()I
    .locals 5

    .line 1905
    const/4 v0, -0x2

    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getHeatOrVentilationAvai(II)I

    move-result v1

    .line 1906
    .local v1, "passenegrHeatAvai":I
    const/16 v2, 0x13

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getHeatOrVentilationAvai(II)I

    move-result v0

    .line 1907
    .local v0, "passengerVentilationAvai":I
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1908
    const-string v2, "CarBodyStateManager.HEAT_VENT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPassengerHeatVentilationAvai--passenegrHeatAvai: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " passengerVentilationAvai: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 1911
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_HEAT_VENTILATION_SHOW:I

    return v2

    .line 1913
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v2, :cond_2

    if-ne v0, v3, :cond_2

    .line 1914
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_ONLY_HEAT_SHOW:I

    return v2

    .line 1916
    :cond_2
    if-ne v1, v3, :cond_3

    if-ne v0, v2, :cond_3

    .line 1917
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_ONLY_VENTILATION_SHOW:I

    return v2

    .line 1919
    :cond_3
    const/4 v3, 0x4

    if-ne v1, v2, :cond_4

    if-ne v0, v3, :cond_4

    .line 1920
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_ONLY_HEAT_SHOW:I

    return v2

    .line 1922
    :cond_4
    if-ne v1, v3, :cond_5

    if-ne v0, v2, :cond_5

    .line 1923
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->PASSENGER_ONLY_VENTILATION_SHOW:I

    return v2

    .line 1925
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->NONE:I

    return v2
.end method

.method public getPassengerHeatVentilationShift()I
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerShift:I

    return v0
.end method

.method public getPassengerTemp()F
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerTemp:F

    return v0
.end method

.method public getPassengerTempAVAI()I
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerTempAVAI:I

    return v0
.end method

.method public getPlugACState()I
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugACState:I

    return v0
.end method

.method public getPlugDCState()I
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPlugDCState:I

    return v0
.end method

.method public getPm25State()I
    .locals 5

    .line 1599
    const/4 v0, 0x2

    .line 1601
    .local v0, "pm25State":I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    if-nez v1, :cond_0

    .line 1602
    const/4 v1, 0x0

    return v1

    .line 1604
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const v2, 0x60000012

    invoke-virtual {v1, v2}, Landroid/support/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v1

    .line 1605
    .local v1, "event":Landroid/support/car/hardware/CarSensorEvent;
    if-eqz v1, :cond_1

    .line 1606
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/car/hardware/CarSensorEvent;->getCarInPM25State(Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;)Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;

    move-result-object v2

    iget v2, v2, Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;->state:I

    move v0, v2

    .line 1607
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1608
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPm25State: pm25State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/support/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    .end local v1    # "event":Landroid/support/car/hardware/CarSensorEvent;
    :cond_1
    goto :goto_0

    .line 1611
    :catch_0
    move-exception v1

    .line 1612
    .local v1, "e":Landroid/support/car/CarNotConnectedException;
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1613
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLatestSensorEvent CarNotConnectedException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/car/CarNotConnectedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    .end local v1    # "e":Landroid/support/car/CarNotConnectedException;
    :cond_2
    :goto_0
    return v0
.end method

.method public getPm25Value()I
    .locals 5

    .line 1581
    const/4 v0, 0x0

    move v1, v0

    .line 1583
    .local v1, "insidePM25":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    if-nez v2, :cond_0

    .line 1584
    return v0

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const v2, 0x60000002

    invoke-virtual {v0, v2}, Landroid/support/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v0

    .line 1587
    .local v0, "event":Landroid/support/car/hardware/CarSensorEvent;
    if-eqz v0, :cond_1

    .line 1588
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/car/hardware/CarSensorEvent;->getCarInPM25Data(Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;)Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;

    move-result-object v2

    iget v2, v2, Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;->pm25:I
    :try_end_0
    .catch Landroid/support/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1594
    .end local v1    # "insidePM25":I
    .local v0, "insidePM25":I
    move v1, v0

    .end local v0    # "insidePM25":I
    .restart local v1    # "insidePM25":I
    :cond_1
    goto :goto_0

    .line 1590
    :catch_0
    move-exception v0

    .line 1591
    .local v0, "e":Landroid/support/car/CarNotConnectedException;
    sget-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1592
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLatestSensorEvent CarNotConnectedException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/car/CarNotConnectedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    .end local v0    # "e":Landroid/support/car/CarNotConnectedException;
    :cond_2
    :goto_0
    return v1
.end method

.method public getReverb()V
    .locals 3

    .line 644
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMicReverb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getMicReverb()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getMicReverb()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateMicReverb(I)V

    .line 646
    return-void
.end method

.method public getRoadSlipState()I
    .locals 1

    .line 1452
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isRoadSlip:I

    return v0
.end method

.method public getStatusBarMode()I
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mStatusBarMode:I

    return v0
.end method

.method public getSupportElectricDoor()Z
    .locals 1

    .line 1548
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isSupportElectricDoor:Z

    return v0
.end method

.method public getTopBarBatteryLevel()F
    .locals 5

    .line 6714
    const/4 v0, 0x0

    .line 6715
    .local v0, "batteryLevel":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    if-eqz v1, :cond_1

    .line 6717
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSensorManager:Landroid/support/car/hardware/CarSensorManager;

    const v2, 0x6000002c

    invoke-virtual {v1, v2}, Landroid/support/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v1

    .line 6718
    .local v1, "event":Landroid/support/car/hardware/CarSensorEvent;
    if-eqz v1, :cond_0

    .line 6719
    iget-object v2, v1, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move v0, v2

    .line 6721
    :cond_0
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatteryLevel batteryLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "event":Landroid/support/car/hardware/CarSensorEvent;
    goto :goto_0

    .line 6722
    :catch_0
    move-exception v1

    .line 6723
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6724
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 6726
    :cond_1
    const-string v1, "CarBodyStateManager"

    const-string v2, "getBatteryLevel mCarSensorManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6728
    :goto_1
    return v0
.end method

.method public getUnitDis()I
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mUnitDis:I

    return v0
.end method

.method public getUsbStorageStatus()Z
    .locals 1

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isUSBIconShow:Z

    return v0
.end method

.method public getWPCChargeMode()I
    .locals 1

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeMode:I

    return v0
.end method

.method public getWPCChargeStatus()I
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mWPCChargeStatus:I

    return v0
.end method

.method public handleHideOrShowBtDialerIcon(ZI)V
    .locals 3
    .param p1, "isShowIcon"    # Z
    .param p2, "type"    # I

    .line 6588
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHideOrShowBtDialerIcon mHandler\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isShowIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6589
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    if-eqz v0, :cond_1

    .line 6590
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBtPhoneType:I

    .line 6591
    if-eqz p1, :cond_0

    .line 6592
    const-string v0, "CarBodyStateManager"

    const-string v1, "handleHideOrShowBtDialerIcon show icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6593
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6594
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6595
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 6596
    :cond_0
    const-string v0, "CarBodyStateManager"

    const-string v1, "handleHideOrShowBtDialerIcon hide icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6597
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6598
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6601
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method public hideBtDialerIcon()V
    .locals 4

    .line 6619
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_HIDE_BT_DIALER_ICON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 6620
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 6621
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6623
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$k9guSPMpkKgJw4JHAQqVDSbQ10M;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$k9guSPMpkKgJw4JHAQqVDSbQ10M;

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 6625
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$eqbWpbaqwSg01zT1EOqNk19lyko;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$eqbWpbaqwSg01zT1EOqNk19lyko;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$1m5RuuYEVMy_-RqcgjUV9jmgtz8;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$1m5RuuYEVMy_-RqcgjUV9jmgtz8;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 6635
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_HIDE_BT_DIALER_ICON"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6636
    return-void
.end method

.method public hideOrShowRemoteLogcatIcon(Z)V
    .locals 3
    .param p1, "isShowIcon"    # Z

    .line 6604
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideOrShowRemoteLogcatIcon isShowIcon\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6605
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    if-eqz v0, :cond_1

    .line 6606
    if-eqz p1, :cond_0

    .line 6607
    const-string v0, "CarBodyStateManager"

    const-string v1, "hideOrShowRemoteLogcatIcon show icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6608
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6609
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6610
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 6611
    :cond_0
    const-string v0, "CarBodyStateManager"

    const-string v1, "hideOrShowRemoteLogcatIcon hide icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6612
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6613
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHandler:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6616
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method public hideRemoteLogcatIcon()V
    .locals 4

    .line 6659
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_HIDE_REMOTE_LOGCAT_ICON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 6660
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 6661
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6663
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$adnznzLbJmbugX4XXhy6K26IDmE;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$adnznzLbJmbugX4XXhy6K26IDmE;

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 6665
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$quvTErOu7IFrsVynnoAPM8guZ9s;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$quvTErOu7IFrsVynnoAPM8guZ9s;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$O1nyzi8on6FOj-TAoJvbkV9P384;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$O1nyzi8on6FOj-TAoJvbkV9P384;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 6675
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_HIDE_REMOTE_LOGCAT_ICON"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6676
    return-void
.end method

.method public isEnabled()Z
    .locals 4

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    if-nez v0, :cond_0

    .line 655
    const-string v0, "CarBodyStateManager"

    const-string v1, "isEnabled null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x0

    return v0

    .line 659
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v0}, Landroid/car/hardware/NoMicKTVManager;->isEnabled()Z

    move-result v0

    .line 660
    .local v0, "result":Z
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    return v0

    .line 662
    .end local v0    # "result":Z
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTempSyncState()Z
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isTempSync:Z

    return v0
.end method

.method public passengerHeatOrVentilationChange()I
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    if-ne v0, v1, :cond_0

    .line 1358
    const/4 v0, 0x3

    return v0

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1362
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 1360
    :cond_2
    :goto_0
    return v1
.end method

.method public registerCallback(Landroid/car/hardware/NoMicKTVManager$NoMicKTVCB;)V
    .locals 2
    .param p1, "callback"    # Landroid/car/hardware/NoMicKTVManager$NoMicKTVCB;

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    if-nez v0, :cond_0

    .line 608
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "registerCallback null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void

    .line 612
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/NoMicKTVManager;->registerCB(Landroid/car/hardware/NoMicKTVManager$NoMicKTVCB;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    nop

    .line 616
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;)V
    .locals 2
    .param p1, "onCarStateChange"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager$IOnCarStateChange;

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1334
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1335
    monitor-exit v0

    return-void

    .line 1337
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1338
    monitor-exit v0

    .line 1339
    return-void

    .line 1338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAcPowerState(Z)V
    .locals 4
    .param p1, "isPowerState"    # Z

    .line 1736
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "AC_POWER_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1737
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 1738
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1740
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$P2NwXFEcK0tYgkvQ6ZQPsOhCrZ0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$P2NwXFEcK0tYgkvQ6ZQPsOhCrZ0;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 1743
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ytJAW7IXalqZ5T3ydDMHUACmquc;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ytJAW7IXalqZ5T3ydDMHUACmquc;

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_MQY065iIqLBSrzkKbdpcGIq6Is;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_MQY065iIqLBSrzkKbdpcGIq6Is;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1749
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "AC_POWER_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    return-void
.end method

.method public setBatteryPreheatingButton(I)V
    .locals 3
    .param p1, "state"    # I

    .line 3278
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBatteryPreheatingButton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    if-eqz v0, :cond_0

    .line 3281
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const v1, 0xee45

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/setting/CarSettingYfveManager;->setIntProperty(III)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3282
    :catch_0
    move-exception v0

    .line 3283
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 3284
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    goto :goto_1

    .line 3286
    :cond_0
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "setBatteryPreheatingButton mCarSettingYfveManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    :goto_1
    return-void
.end method

.method public setCarSettingTimeFormat(I)V
    .locals 3
    .param p1, "timeFormat"    # I

    .line 6748
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCarSettingTimeFormat timeFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6749
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    if-eqz v0, :cond_0

    .line 6751
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarSettingYfveManager:Landroid/car/hardware/setting/CarSettingYfveManager;

    const/16 v1, 0x600d

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2, p1}, Landroid/car/hardware/setting/CarSettingYfveManager;->setIntProperty(III)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6752
    :catch_0
    move-exception v0

    .line 6753
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 6754
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    goto :goto_1

    .line 6756
    :cond_0
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "setCarSettingTimeFormat mCarSettingYfveManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6758
    :goto_1
    return-void
.end method

.method public setChargeACCapOn(Z)V
    .locals 4
    .param p1, "isOn"    # Z

    .line 2623
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SET_CHARGE_AC_CAP_ON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2624
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2625
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2627
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$gX8BvNZDSpLcl8FhIjW_eFUWbUo;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$gX8BvNZDSpLcl8FhIjW_eFUWbUo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2634
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$vpRdfGL4Bv94w0kvhH7KyJ1DwBE;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$vpRdfGL4Bv94w0kvhH7KyJ1DwBE;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ntDRzdjdBy1K5qmFN4IJu_wi6_8;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ntDRzdjdBy1K5qmFN4IJu_wi6_8;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2638
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SET_CHARGE_AC_CAP_ON"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
    return-void
.end method

.method public setChargeDCCapOn(Z)V
    .locals 4
    .param p1, "isOn"    # Z

    .line 2604
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SET_CHARGE_DC_CAP_ON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2605
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2606
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2608
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$EaoK5CO4sSF-rj_-VsRGlDjy3Kg;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$EaoK5CO4sSF-rj_-VsRGlDjy3Kg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2615
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5IsS6ecHXOs9veYDeGPONUXVBYk;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5IsS6ecHXOs9veYDeGPONUXVBYk;

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$a-6iqY4OY7IQKs1R32TlFQuc4rU;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$a-6iqY4OY7IQKs1R32TlFQuc4rU;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2619
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SET_CHARGE_DC_CAP_ON"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2620
    return-void
.end method

.method public setClimateAuto(Z)V
    .locals 1
    .param p1, "auto"    # Z

    .line 2885
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAutoClimate:Z

    .line 2886
    return-void
.end method

.method public setClimateShift(I)V
    .locals 4
    .param p1, "shift"    # I

    .line 2466
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SET_CLIMATE_SHIFT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2467
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2468
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2470
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$xgOLXrQ9VtYdzp0iOK7CrJqjQ20;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$xgOLXrQ9VtYdzp0iOK7CrJqjQ20;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2476
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JZllZ80UxbbHrA683aIMgTW5CII;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JZllZ80UxbbHrA683aIMgTW5CII;

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$mVU08QHn3I8IRfJdR__cAq6fOY8;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$mVU08QHn3I8IRfJdR__cAq6fOY8;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2480
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SET_CLIMATE_SHIFT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2481
    return-void
.end method

.method public setDriverHeatVentilationShift(I)V
    .locals 3
    .param p1, "shift"    # I

    .line 1762
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1763
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDriverHeatVentilationShift: shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCarBodyStateData.mPreDriverShift "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverShift:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    if-lez p1, :cond_1

    .line 1767
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isDriveVentilationHeatChange:Z

    goto :goto_0

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreDriverShift:I

    if-lez v0, :cond_2

    if-gez p1, :cond_2

    .line 1769
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isDriveVentilationHeatChange:Z

    goto :goto_0

    .line 1771
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isDriveVentilationHeatChange:Z

    .line 1774
    :goto_0
    if-nez p1, :cond_3

    .line 1775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->closeDriverVentilationAndHeat()V

    goto :goto_1

    .line 1776
    :cond_3
    if-lez p1, :cond_4

    .line 1777
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverHeatShift(I)V

    goto :goto_1

    .line 1779
    :cond_4
    sub-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setDriverVentilationShift(I)V

    .line 1781
    :goto_1
    return-void
.end method

.method public setDriverTemp(F)V
    .locals 4
    .param p1, "temp"    # F

    .line 1625
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDriverTempAVAI:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1626
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1627
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDriverTemp mCarBodyStateData.mDriverTempAVAI =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDriverTempAVAI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is Not Active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1629
    :cond_0
    return-void

    .line 1631
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DRIVER_TEMP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1632
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_2

    .line 1633
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1635
    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_P8crfoPGWRWYU4n8hLJO7ooNWA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_P8crfoPGWRWYU4n8hLJO7ooNWA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;F)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 1647
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$RmA9V1neb6-R2MoMOo_ke5OgwpU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$RmA9V1neb6-R2MoMOo_ke5OgwpU;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$quBrvzyJdxaFmF2V6l0uENUnQYo;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$quBrvzyJdxaFmF2V6l0uENUnQYo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1657
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DRIVER_TEMP"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    return-void
.end method

.method public setHMIMusicVolumeLister(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;)V
    .locals 0
    .param p1, "lisener"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;

    .line 5597
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHMIMusicVolumeLister:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;

    .line 5598
    return-void
.end method

.method public setHMIOccVolumeLister(Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;)V
    .locals 0
    .param p1, "lisener"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;

    .line 5601
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mHMIOccVolumeLister:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;

    .line 5602
    return-void
.end method

.method public setLastClimateShift(I)V
    .locals 1
    .param p1, "shift"    # I

    .line 2877
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    .line 2878
    return-void
.end method

.method public setMicLocation(I)V
    .locals 3
    .param p1, "location"    # I

    .line 679
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    if-eqz v0, :cond_0

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/NoMicKTVManager;->setMicLocation(I)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "CarBodyStateManager"

    const-string/jumbo v2, "setMicLocation failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMicReverb(I)V
    .locals 3
    .param p1, "reverb"    # I

    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    if-eqz v0, :cond_0

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/NoMicKTVManager;->setMicReverb(I)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "CarBodyStateManager"

    const-string/jumbo v2, "setMicLocation failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setMicVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    if-eqz v0, :cond_0

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/NoMicKTVManager;->setMicVolume(I)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "CarBodyStateManager"

    const-string/jumbo v2, "setMicVolume failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setNoMicEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    if-eqz v0, :cond_0

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mNoMicKTVManager:Landroid/car/hardware/NoMicKTVManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/NoMicKTVManager;->setEnabled(Z)Z
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "CarBodyStateManager"

    const-string v2, "Failed to set KTV manager enabled state: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPassengerDoorClose()V
    .locals 2

    .line 2643
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setCarDoorStatus(II)V

    .line 2644
    return-void
.end method

.method public setPassengerHeatVentilationShift(I)V
    .locals 3
    .param p1, "shift"    # I

    .line 1879
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1880
    const-string v0, "CarBodyStateManager.HEAT_VENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPassengerHeatVentilationShift: shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCarBodyStateData.mPrePassengerShift "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerShift:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    if-lez p1, :cond_1

    .line 1884
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isPassengerVentilationHeatChange:Z

    goto :goto_0

    .line 1885
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPrePassengerShift:I

    if-lez v0, :cond_2

    if-gez p1, :cond_2

    .line 1886
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isPassengerVentilationHeatChange:Z

    goto :goto_0

    .line 1888
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isPassengerVentilationHeatChange:Z

    .line 1890
    :goto_0
    if-nez p1, :cond_3

    .line 1891
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->closePassengerVentilationAndHeat()V

    goto :goto_1

    .line 1892
    :cond_3
    if-lez p1, :cond_4

    .line 1893
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerHeatShift(I)V

    goto :goto_1

    .line 1895
    :cond_4
    sub-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->setPassengerVentilationShift(I)V

    .line 1897
    :goto_1
    return-void
.end method

.method public setPassengerTemp(F)V
    .locals 4
    .param p1, "temp"    # F

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerTempAVAI:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1667
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1668
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPassengerTemp mCarBodyStateData.mPassengerTempAVAI =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerTempAVAI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is Not Active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1670
    :cond_0
    return-void

    .line 1672
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PASSENGER_TEMP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1673
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_2

    .line 1674
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 1676
    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$EfzVwfUZdlngltkhpGEKH0FXCrw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$EfzVwfUZdlngltkhpGEKH0FXCrw;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;F)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 1685
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ikDCRK560Th9l8W1OtIZwWTSqU4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ikDCRK560Th9l8W1OtIZwWTSqU4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qjIa6Z9sT6tU2AtVkHDHSCqWYCo;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qjIa6Z9sT6tU2AtVkHDHSCqWYCo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 1695
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PASSENGER_TEMP"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    return-void
.end method

.method public setStartCharging(I)V
    .locals 4
    .param p1, "isOn"    # I

    .line 2550
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SET_START_CHARGING"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2551
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2552
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2554
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$GZ-BLIdMqQnKFVYVkbtc_NHVGTg;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$GZ-BLIdMqQnKFVYVkbtc_NHVGTg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2560
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$QTmKno8TkpEiUk0IIWVqWtuORuc;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$QTmKno8TkpEiUk0IIWVqWtuORuc;

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$OOfQR0-hXq97MbdMWDjyD9CIUWU;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$OOfQR0-hXq97MbdMWDjyD9CIUWU;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2564
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SET_START_CHARGING"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2565
    return-void
.end method

.method public setStatusBarMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1309
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatusBarMode mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCarBodyStateData.mStatusBarMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mStatusBarMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mStatusBarMode:I

    if-eq p1, v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iput p1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mStatusBarMode:I

    .line 1312
    const/16 v0, 0x3f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateCarBodyState(I)V

    .line 1314
    :cond_0
    return-void
.end method

.method public setTempSyncState()V
    .locals 5

    .line 2449
    const-string v0, "CarBodyStateManager"

    const-string/jumbo v1, "setTempSyncState "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2450
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mCarBodyStateData:Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isTempSync:Z

    xor-int/lit8 v0, v0, 0x1

    .line 2451
    .local v0, "targetSync":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SET_TEMP_SYNC_STATE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    .line 2452
    .local v1, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v1, :cond_0

    .line 2453
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2455
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$IBzd-GgVJ8vosJFpnAgXVvkPomE;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$IBzd-GgVJ8vosJFpnAgXVvkPomE;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)V

    invoke-static {v2}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v2

    .line 2458
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$GOaKzg_gppmexsk439CVTTN5zJQ;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$GOaKzg_gppmexsk439CVTTN5zJQ;

    new-instance v4, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$dvMbQ7V11zb8snI01_mWygvBT0M;

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$dvMbQ7V11zb8snI01_mWygvBT0M;-><init>(Z)V

    invoke-virtual {v2, v3, v4}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 2462
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v3, "SET_TEMP_SYNC_STATE"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    return-void
.end method

.method public setV2LOn(I)V
    .locals 4
    .param p1, "isOn"    # I

    .line 2532
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SET_V2L_ON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2533
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2534
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2536
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$31tohNj2MXYDbjrEAP3LBRnIGaA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$31tohNj2MXYDbjrEAP3LBRnIGaA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2542
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$NSTBx3IrUFG8oVqmAtnnS7pmYMg;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$NSTBx3IrUFG8oVqmAtnnS7pmYMg;

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$R3WHdAkAf4asGNvn0qnwcQeEUF0;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$R3WHdAkAf4asGNvn0qnwcQeEUF0;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2546
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SET_V2L_ON"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2547
    return-void
.end method

.method public setV2VOn(I)V
    .locals 4
    .param p1, "isOn"    # I

    .line 2514
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SET_V2V_ON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2515
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2516
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2518
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$mRKVR8sib-YDgJGrgpv8Czkvw6s;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$mRKVR8sib-YDgJGrgpv8Czkvw6s;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2524
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$rC_z3-HzaiHuN-A_C6jHdO3Fj1E;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$rC_z3-HzaiHuN-A_C6jHdO3Fj1E;

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$iiItX60D0ZQP5zw1x_aRU87QiLg;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$iiItX60D0ZQP5zw1x_aRU87QiLg;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2528
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mSetCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SET_V2V_ON"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2529
    return-void
.end method

.method public showBtDialerIcon()V
    .locals 4

    .line 6639
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_SHOW_BT_DIALER_ICON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 6640
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 6641
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6643
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$zpi_t6Q49UvrZg-qksu3qu1msiA;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$zpi_t6Q49UvrZg-qksu3qu1msiA;

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 6645
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$k5iOVlgH2KmXqJhQ80nWvrPAosk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$k5iOVlgH2KmXqJhQ80nWvrPAosk;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$EZjRiHAf72Le_UmAiKrjlz8JPSE;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$EZjRiHAf72Le_UmAiKrjlz8JPSE;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 6655
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_SHOW_BT_DIALER_ICON"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6656
    return-void
.end method

.method public showRemoteLogcatIcon()V
    .locals 4

    .line 6679
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_SHOW_REMOTE_LOGCAT_ICON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 6680
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 6681
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 6683
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SLiQWkvH4XNuZHda4MQK0NfLKPw;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SLiQWkvH4XNuZHda4MQK0NfLKPw;

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 6685
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$0I0lkXxGOq8qiyejSPCviSO86uY;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$0I0lkXxGOq8qiyejSPCviSO86uY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$htsWtcwZp9IoTQfTK_Xh3dag08E;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$htsWtcwZp9IoTQfTK_Xh3dag08E;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 6695
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_SHOW_REMOTE_LOGCAT_ICON"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6696
    return-void
.end method

.method public updateAQICO2AutoStateInternal(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "value"    # I

    .line 3221
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "AQI_CO2_AUTO_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3222
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3223
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3225
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5TN_Im-_HMLK9tIvgv96SEkNO9A;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5TN_Im-_HMLK9tIvgv96SEkNO9A;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3231
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$dQy35_LW6IVU7kSfQQ9j4xfY7is;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$dQy35_LW6IVU7kSfQQ9j4xfY7is;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$THciktciEeOeM42f_GoCDkOhXCw;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$THciktciEeOeM42f_GoCDkOhXCw;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3236
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "AQI_CO2_AUTO_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3237
    return-void
.end method

.method public updateAQICO2LevelInternal(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "value"    # I

    .line 3197
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "AQI_CO2_LEVEL_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3198
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3199
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3201
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SdbFc4z7rE4hDdYNqLlhXAKNP-4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$SdbFc4z7rE4hDdYNqLlhXAKNP-4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3212
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_9JwE4jasQqAkwQjNg5fLmP_0nQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_9JwE4jasQqAkwQjNg5fLmP_0nQ;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bvSEqhx1xSSgnnnAP2Exm7VNVtI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$bvSEqhx1xSSgnnnAP2Exm7VNVtI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3217
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "AQI_CO2_LEVEL_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3218
    return-void
.end method

.method public updateAQILevelInternal(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "AQILevel"    # I

    .line 3175
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "AQI_LEVEL_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3176
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3177
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3179
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$se4-fjXeAK6dDvSE_XfVjCCGuMI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$se4-fjXeAK6dDvSE_XfVjCCGuMI;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3188
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ihtr4ahnyPyfIdIaf5Ev9AXTI5o;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ihtr4ahnyPyfIdIaf5Ev9AXTI5o;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$kcrWHGVSjAC1PptwGPYJ-oajZvg;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$kcrWHGVSjAC1PptwGPYJ-oajZvg;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3193
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "AQI_LEVEL_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3194
    return-void
.end method

.method public updateAcPowerChange(ZZ)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "isOn"    # Z

    .line 2424
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "AC_POWER_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2425
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2426
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2428
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fMgZ6XWzkUhM5xoWR_Kbn2_eoR4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fMgZ6XWzkUhM5xoWR_Kbn2_eoR4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZZ)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2435
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$lQMRbYImJmjLAmIl1HjFoSwNHD8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$lQMRbYImJmjLAmIl1HjFoSwNHD8;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$9MKg6TrgcqwPnprxC932LYrukc8;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$9MKg6TrgcqwPnprxC932LYrukc8;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2444
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "AC_POWER_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    return-void
.end method

.method public updateAdjustableTemp(ZI)V
    .locals 5
    .param p1, "hasValue"    # Z
    .param p2, "isCelsius"    # I

    .line 2955
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DRIVER_ADJUSTABLE_TEMPERATURE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2956
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2957
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2959
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOutsideTempUnitInternal(ZI)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateMaxAdjustableTempInternal()Lio/reactivex/Observable;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateMinAdjustableTempInternal()Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$R7UPCmKtTO-tpmy739eBRPJszm8;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$R7UPCmKtTO-tpmy739eBRPJszm8;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-static {v1, v2, v3, v4}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function3;)Lio/reactivex/Observable;

    move-result-object v1

    .line 2960
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yZrbOTsOcd8MuJ2xCArqcxp6UjY;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yZrbOTsOcd8MuJ2xCArqcxp6UjY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$et0k9ysO5r_8-AnaZTirQvXkufI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$et0k9ysO5r_8-AnaZTirQvXkufI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2966
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DRIVER_ADJUSTABLE_TEMPERATURE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    return-void
.end method

.method public updateAqiHigh()V
    .locals 4

    .line 3709
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_AQI_CO2_HIGH"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3710
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3711
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3713
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yKQ_bJIoLf-mS0dq8YUKFUv2hxI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yKQ_bJIoLf-mS0dq8YUKFUv2hxI;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3724
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7hP5NFjTO07W42NK34Gvoqky6JM;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7hP5NFjTO07W42NK34Gvoqky6JM;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$eizBF5uQp-fyw-LtRx2pJWIP9l8;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$eizBF5uQp-fyw-LtRx2pJWIP9l8;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3729
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_AQI_CO2_HIGH"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3730
    return-void
.end method

.method public updateBatteryColor(I)V
    .locals 4
    .param p1, "batteryColor"    # I

    .line 3317
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "BATTERY_COLOR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3318
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3319
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3321
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KkFtO5V9bVda-PWHw1A2RVumqk0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KkFtO5V9bVda-PWHw1A2RVumqk0;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3324
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sUTT-XMMibylrwOTFmTRzY36xJE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sUTT-XMMibylrwOTFmTRzY36xJE;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$jyIE7Izzd-WoTQzXDSHkLn_5tnI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$jyIE7Izzd-WoTQzXDSHkLn_5tnI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3329
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "BATTERY_COLOR"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    return-void
.end method

.method public updateBatteryFailure(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mBatteryFailure"    # I

    .line 2220
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_BATTERY_FAILURE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2221
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2222
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2224
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$to_UOxp0HwgrnRwCcYZ_5EPt4KY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$to_UOxp0HwgrnRwCcYZ_5EPt4KY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2232
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5hC8a7Z6i0bbsaz4I_lozk2dCEM;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5hC8a7Z6i0bbsaz4I_lozk2dCEM;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$UDyBwsq8PhYsuME-U177I41ITIQ;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$UDyBwsq8PhYsuME-U177I41ITIQ;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2242
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_BATTERY_FAILURE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    return-void
.end method

.method public updateBatteryIconColor(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mBatteryIconColor"    # I

    .line 2196
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_BATTERY_COLOR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2197
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2198
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2200
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yxGlsfR5YHj3rSoDY3mLvyEhaMY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yxGlsfR5YHj3rSoDY3mLvyEhaMY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2208
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_p4dGpjb2gm60Ra0qpFkc-6atzI;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_p4dGpjb2gm60Ra0qpFkc-6atzI;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Qkt0kb2rLTVDO3rctCRtcTXSn6w;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Qkt0kb2rLTVDO3rctCRtcTXSn6w;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2216
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_BATTERY_COLOR"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    return-void
.end method

.method public updateBatteryLevel(ZF)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "batteryLevel"    # F

    .line 3291
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "BATTERY_LEVEL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3292
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3293
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3295
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fS89zI5uV7bgExA32zqb-k-On60;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fS89zI5uV7bgExA32zqb-k-On60;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZF)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3308
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MAvliEv15icDf0U1bqDGEn4onZU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MAvliEv15icDf0U1bqDGEn4onZU;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ek0O538dAzt5lFsXYlnCesmXZqQ;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ek0O538dAzt5lFsXYlnCesmXZqQ;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3313
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "BATTERY_LEVEL"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3314
    return-void
.end method

.method public updateBatteryPreheatingButton(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "state"    # I

    .line 3259
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "BATTERY_PREHEATING_BUTTON"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3260
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3261
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3263
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$lfe4VClcSuWpN4dw4wbPyuVKqUo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$lfe4VClcSuWpN4dw4wbPyuVKqUo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3269
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$3UscK42ZYdJMU2Jv7_1F_eYsEz4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$3UscK42ZYdJMU2Jv7_1F_eYsEz4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$3SljanNaKtLLg_0H8XEETaxJX3I;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$3SljanNaKtLLg_0H8XEETaxJX3I;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3274
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "BATTERY_PREHEATING_BUTTON"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3275
    return-void
.end method

.method public updateBatteryStateAC(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mACState"    # I

    .line 2144
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "BATTERY_AC_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2145
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2146
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2148
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KfSNjl6JtO5-tse5y8KrJY__QxE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KfSNjl6JtO5-tse5y8KrJY__QxE;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2156
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$TkozaGfg5WGuUROqf0uXLsXkahM;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$TkozaGfg5WGuUROqf0uXLsXkahM;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$GDqJKX0JSqbJA19sF41kaoPQq84;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$GDqJKX0JSqbJA19sF41kaoPQq84;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2166
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "BATTERY_AC_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    return-void
.end method

.method public updateBatteryStateDC(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mDCState"    # I

    .line 2170
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "BATTERY_DC_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2171
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2172
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2174
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$q2vRko0o6E3hyY7NxOW1VPPcrqg;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$q2vRko0o6E3hyY7NxOW1VPPcrqg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2182
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$1VFwajjEBBkuTbFGH9WKn31aqtg;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$1VFwajjEBBkuTbFGH9WKn31aqtg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Og5zAlGZ4m6XLCaO0LC72LzL370;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Og5zAlGZ4m6XLCaO0LC72LzL370;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2192
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "BATTERY_DC_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2193
    return-void
.end method

.method public updateBatteryTemp(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "temp"    # I

    .line 3240
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "BATTERY_TEMP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3241
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3242
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3244
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$9tAQO54P5OHlSQVA2SqkE0ZSt4k;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$9tAQO54P5OHlSQVA2SqkE0ZSt4k;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3250
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$S2LYs5ogdcLcomPDnB48x62kZKA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$S2LYs5ogdcLcomPDnB48x62kZKA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$2IXVnHhgGUcgWzyhIHqKEppHHiE;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$2IXVnHhgGUcgWzyhIHqKEppHHiE;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3255
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "BATTERY_TEMP"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3256
    return-void
.end method

.method public updateChargeACCap(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeCap"    # I

    .line 3520
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CHARGE_AC_CAP_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3521
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3522
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3524
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$HPBcZI4CFVTd-c1mBFDaRAlNPoM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$HPBcZI4CFVTd-c1mBFDaRAlNPoM;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3530
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$LGbk8GVEy-hSC4kFxjc4Vwt9aXc;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$LGbk8GVEy-hSC4kFxjc4Vwt9aXc;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MOHcQV6_KaFs1Zd-Jl7MBwy6v_w;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MOHcQV6_KaFs1Zd-Jl7MBwy6v_w;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3538
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CHARGE_AC_CAP_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3539
    return-void
.end method

.method public updateChargeACCapAvail(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeCapAvail"    # I

    .line 3542
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CHARGE_AC_CAP_STATE_AVAIL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3543
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3544
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3546
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$756aN0lY1kcpt1be55kcptO8jOQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$756aN0lY1kcpt1be55kcptO8jOQ;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3552
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$EHQF3Utb-asZeFxVrrMMz1_SJMY;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$EHQF3Utb-asZeFxVrrMMz1_SJMY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sZBMRq3LB65uij4pULjyQ4v6UUY;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sZBMRq3LB65uij4pULjyQ4v6UUY;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3560
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CHARGE_AC_CAP_STATE_AVAIL"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    return-void
.end method

.method public updateChargeDCCap(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeCap"    # I

    .line 3586
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CHARGE_DC_CAP_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3587
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3588
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3590
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$DEV7mXbVPZ0SEWcAkA54SZfro98;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$DEV7mXbVPZ0SEWcAkA54SZfro98;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3596
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$WTIN4-a_HbOlbT3IHmB6uIrY3FI;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$WTIN4-a_HbOlbT3IHmB6uIrY3FI;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$w4V_esUWvUlyUTSEsmKABR7Rbvw;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$w4V_esUWvUlyUTSEsmKABR7Rbvw;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3604
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CHARGE_DC_CAP_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3605
    return-void
.end method

.method public updateChargeDCCapAvail(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeCapAvail"    # I

    .line 3564
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CHARGE_DC_CAP_STATE_AVAIL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3565
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3566
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3568
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Pa27MQ00rb2ZYqR49Q-Nmv6E_cg;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Pa27MQ00rb2ZYqR49Q-Nmv6E_cg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3574
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$tuA474KHh-UggVlzpsJ0h6N7EH4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$tuA474KHh-UggVlzpsJ0h6N7EH4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JOlBugLK_9TJd4QNW1rNSBggTSM;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JOlBugLK_9TJd4QNW1rNSBggTSM;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3582
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CHARGE_DC_CAP_STATE_AVAIL"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    return-void
.end method

.method public updateChargeSOCLevel(ZF)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "chargeSocLevel"    # F

    .line 3435
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CHARGE_SOC"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3436
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3437
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3439
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$lyODzpviM6YfM0KD8KkYaMKowzo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$lyODzpviM6YfM0KD8KkYaMKowzo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZF)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3445
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$CfD9YN1Wg3VSJy62JVHQvRM5SxE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$CfD9YN1Wg3VSJy62JVHQvRM5SxE;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$g9pOoMxqseBMlr0OVm__8J4uQck;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$g9pOoMxqseBMlr0OVm__8J4uQck;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3453
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CHARGE_SOC"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3454
    return-void
.end method

.method public updateClimateECOStatu(ZZ)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "statu"    # Z

    .line 2935
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CLIMATE_ECO"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2936
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2937
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2939
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$i33iX5A9MMjPmEAs0MgIYlvD9Eg;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$i33iX5A9MMjPmEAs0MgIYlvD9Eg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZZ)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2945
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$IeUB1_Kx-5qT-MRGGiit4D-2ZMU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$IeUB1_Kx-5qT-MRGGiit4D-2ZMU;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$h7FtwGnOh1IQpXO4x2AuFzRvhAM;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$h7FtwGnOh1IQpXO4x2AuFzRvhAM;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2950
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CLIMATE_ECO"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2951
    return-void
.end method

.method public updateClimateShift(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "shift"    # I

    .line 2896
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "CLIMATE_SHIFT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2897
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2898
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2900
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$vDku30lTHuNrtYFtIPIVtYhcZuA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$vDku30lTHuNrtYFtIPIVtYhcZuA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2925
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_VHiSphPk2XuxJm1_t8zzSNOgFU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_VHiSphPk2XuxJm1_t8zzSNOgFU;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KuY_EyFGx67bQDNTlsj39Kuc5FI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KuY_EyFGx67bQDNTlsj39Kuc5FI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2930
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "CLIMATE_SHIFT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    return-void
.end method

.method public updateDateFormatUnit(I)V
    .locals 4
    .param p1, "mDate"    # I

    .line 2016
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DATE_FORMAT_UNIT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2017
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2018
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2020
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$P26vXrxOdGwvpwLrV30U5Nbq4TY;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$P26vXrxOdGwvpwLrV30U5Nbq4TY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2023
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$rUbqnuTUVqlqaPbfpgmsyPPXQzA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$rUbqnuTUVqlqaPbfpgmsyPPXQzA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$IirlHuZglUwRQCb-FRa-QJyqziQ;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$IirlHuZglUwRQCb-FRa-QJyqziQ;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2030
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DATE_FORMAT_UNIT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    return-void
.end method

.method public updateDayNightMode()V
    .locals 4

    .line 2674
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2675
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2676
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2678
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$xIvTJpzv1wbsrHYaYrjzZLab47E;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$xIvTJpzv1wbsrHYaYrjzZLab47E;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2681
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$lYaMrCJZCLumiQy3qvwCzfEXLt4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$lYaMrCJZCLumiQy3qvwCzfEXLt4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KuvAUNEUfvOFtVYU-75AJHTjjws;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KuvAUNEUfvOFtVYU-75AJHTjjws;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2707
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DAY_NIGHT_MODE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    return-void
.end method

.method public updateDisChargeSOCLevel(F)V
    .locals 4
    .param p1, "disChargeSocLevel"    # F

    .line 3457
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DISCHARGE_SOC"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3458
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3459
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3461
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qulpD8n9SA8ugy6jCAq0vo3rNho;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$qulpD8n9SA8ugy6jCAq0vo3rNho;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;F)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3464
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YSpOmjOKBSw-sSTrKSq0S-Ut3Qo;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YSpOmjOKBSw-sSTrKSq0S-Ut3Qo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$wuRxG6PuWkzvaCkgrbetbOZq1kg;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$wuRxG6PuWkzvaCkgrbetbOZq1kg;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3472
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DISCHARGE_SOC"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3473
    return-void
.end method

.method public updateDriverHeatOrVentilationShift(ZII)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "heatShift"    # I
    .param p3, "ventilationShift"    # I

    .line 2813
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DRIVER_HEAT_VENTILATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2814
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2815
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2817
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverVentilationShift(ZI)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatShift(ZI)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5-W4jZtA1OjaNlJiK0c1DkB8Y2Y;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$5-W4jZtA1OjaNlJiK0c1DkB8Y2Y;

    invoke-static {v1, v2, v3}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v1

    .line 2822
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 2823
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$BEjja-ZLOEv3oGleKT6Sw_xJluU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$BEjja-ZLOEv3oGleKT6Sw_xJluU;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Q_Azmx8FuoMkOpJT2VyoqnGVcFw;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Q_Azmx8FuoMkOpJT2VyoqnGVcFw;

    .line 2824
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2831
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DRIVER_HEAT_VENTILATION"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2832
    return-void
.end method

.method public updateDriverTemp(ZF)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "temp"    # F

    .line 2489
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DRIVER_TEMP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2490
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2491
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2493
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$dcawrgYqy7iq8Fk7Fc5c5qnxWdg;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$dcawrgYqy7iq8Fk7Fc5c5qnxWdg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZF)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2505
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8ppoZjxanFkfgpIAOiSQZZojtLA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8ppoZjxanFkfgpIAOiSQZZojtLA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$22DC_mtHmtbpoAPzS-dGkBhUtNc;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$22DC_mtHmtbpoAPzS-dGkBhUtNc;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2510
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DRIVER_TEMP"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    return-void
.end method

.method public updateDvrState(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mDvrState"    # I

    .line 2066
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DVR_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2067
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2068
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2070
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$wxPdEedlzreiCqtpdib1PmD0LdM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$wxPdEedlzreiCqtpdib1PmD0LdM;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2077
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$CFugKV8JS9YUbxWJydaACK2SN94;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$CFugKV8JS9YUbxWJydaACK2SN94;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$AR2_vTSKj8w-e9xZ_imV8liBupc;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$AR2_vTSKj8w-e9xZ_imV8liBupc;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2087
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DVR_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    return-void
.end method

.method public updateDvrView()V
    .locals 4

    .line 3733
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_UPDATE_DVR_ICON_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3734
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3735
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3737
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$b22XtT1vEHStnqtHWrpdpmbXCyQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$b22XtT1vEHStnqtHWrpdpmbXCyQ;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3748
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$0oVlUeFxqHPLBtLVIAKnlMhCoHo;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$0oVlUeFxqHPLBtLVIAKnlMhCoHo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$vHmOqIDY022bggzPq5kLNMb-Phk;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$vHmOqIDY022bggzPq5kLNMb-Phk;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3753
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_UPDATE_DVR_ICON_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3754
    return-void
.end method

.method public updateEstimatedTime(ZF)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "estimatedTime"    # F

    .line 3413
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "ESTIMATED_TIME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3414
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3415
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3417
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$d6NUPZ_SGsho4vm5GXNtJtxWKHk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$d6NUPZ_SGsho4vm5GXNtJtxWKHk;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZF)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3423
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sJj4_0s_4Bs3M3QCQUVvCFZrBG8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sJj4_0s_4Bs3M3QCQUVvCFZrBG8;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fzlXICN_0cRje2RaZszqoZMssAQ;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$fzlXICN_0cRje2RaZszqoZMssAQ;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3431
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "ESTIMATED_TIME"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3432
    return-void
.end method

.method public updateLocationMode(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mode"    # I

    .line 2352
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2353
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocationMode: hasValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "LOCATION_MODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2356
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_1

    .line 2357
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2359
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YR_d9zpfxaeAOO9EhEhHrPA6UuA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$YR_d9zpfxaeAOO9EhEhHrPA6UuA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2366
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$B2clFMSgV0iZwFW8YyvEaQv-seo;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$B2clFMSgV0iZwFW8YyvEaQv-seo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$OXiQjZZvSzFuafwkjgxy5mi4TpM;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$OXiQjZZvSzFuafwkjgxy5mi4TpM;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2376
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "LOCATION_MODE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    return-void
.end method

.method public updateOutsideTempUnit(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "isCelsius"    # I

    .line 1997
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "OUTSIDE_TEMP_UNIT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 1998
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 1999
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2001
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOutsideTempUnitInternal(ZI)Lio/reactivex/Observable;

    move-result-object v1

    .line 2002
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ghRriQmG16YYjPjgwQJg0YJz1XE;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ghRriQmG16YYjPjgwQJg0YJz1XE;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    new-instance v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$npM8PmuuU_1R_OGBz2YM0vX0JLY;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$npM8PmuuU_1R_OGBz2YM0vX0JLY;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2012
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "OUTSIDE_TEMP_UNIT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    return-void
.end method

.method public updatePDCStatusInternal(ZZ)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "status"    # Z

    .line 2247
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PDC_SWITCH"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2248
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2249
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2251
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$AjwgOy6tmkvoMpXRrO4_y2_qFwM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$AjwgOy6tmkvoMpXRrO4_y2_qFwM;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZZ)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2258
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yMXyE-kOg2S0yaMc4KRVh_pJnL4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yMXyE-kOg2S0yaMc4KRVh_pJnL4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sotuVcjBvA52xaNEe7JE16VebHM;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$sotuVcjBvA52xaNEe7JE16VebHM;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2267
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PDC_SWITCH"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    return-void
.end method

.method public updateParkComfortModeLeftTime()V
    .locals 4

    .line 3628
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_PARK_COMFORT_MODE_LEFT_TIME"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3629
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3630
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3632
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8PNII9XBXKb3lccurE_NbHuul-Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8PNII9XBXKb3lccurE_NbHuul-Q;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3635
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$xH1XBC5UALp08qBYYtFr2_Fnoko;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$xH1XBC5UALp08qBYYtFr2_Fnoko;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$hEZ8rPm1zewobutQKNKWHdfiX3I;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$hEZ8rPm1zewobutQKNKWHdfiX3I;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3643
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_PARK_COMFORT_MODE_LEFT_TIME"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3644
    return-void
.end method

.method public updateParkComfortModeView()V
    .locals 4

    .line 3608
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "MSG_PARK_COMFORT_MODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3609
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3610
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3612
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$tg5A0mUDxaJNwqYJG78HPEQzla8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$tg5A0mUDxaJNwqYJG78HPEQzla8;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3615
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$pxEvCW0uuDk88zuxDZ6tjjf8ieA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$pxEvCW0uuDk88zuxDZ6tjjf8ieA;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$gv-WLwdYkPY6YXS2GBV83VH654c;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$gv-WLwdYkPY6YXS2GBV83VH654c;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3624
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "MSG_PARK_COMFORT_MODE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3625
    return-void
.end method

.method public updatePassengerDoorPos(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "passengerDoorPos"    # I

    .line 2271
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PASSENGER_DOOR_POS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2272
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2273
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2275
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Im9a_PWGC5OVbl800gju3pjdKBE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Im9a_PWGC5OVbl800gju3pjdKBE;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2282
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$wBP3pSWCGJ1kK3zHOA9xEWyWB2Y;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$wBP3pSWCGJ1kK3zHOA9xEWyWB2Y;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Z3HgYAdfC2Tsor7KQAT8qOM7u3M;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Z3HgYAdfC2Tsor7KQAT8qOM7u3M;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2292
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PASSENGER_DOOR_POS"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    return-void
.end method

.method public updatePassengerHeatOrVentilationShift(ZII)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "heatShift"    # I
    .param p3, "ventilationShift"    # I

    .line 2753
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PASSENGER_HEAT_VENTILATION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2754
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2755
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2757
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerVentilationShift(ZI)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatShift(ZI)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D0mJNu2SxZyL20zFnStm0DEk4yw;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$D0mJNu2SxZyL20zFnStm0DEk4yw;

    invoke-static {v1, v2, v3}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v1

    .line 2761
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MIqmMt6R6k7-_3EmbDL09j5Neyg;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$MIqmMt6R6k7-_3EmbDL09j5Neyg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$kHh_x3IwDoTUxLVHQVS0f28GGqU;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$kHh_x3IwDoTUxLVHQVS0f28GGqU;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2770
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PASSENGER_HEAT_VENTILATION"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2771
    return-void
.end method

.method public updatePassengerTemp(ZF)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "temp"    # F

    .line 2725
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PASSENGER_TEMP"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2726
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2727
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2729
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$OV1Mcesv7H8PsmyYVlXyVUrNIS8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$OV1Mcesv7H8PsmyYVlXyVUrNIS8;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZF)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2741
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ZAw5UULQJhXtYPW6mbhdUjX5qsU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$ZAw5UULQJhXtYPW6mbhdUjX5qsU;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$l2NaOQqVtEptklhJeGs9r1gHX74;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$l2NaOQqVtEptklhJeGs9r1gHX74;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2746
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PASSENGER_TEMP"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2747
    return-void
.end method

.method public updatePlugStateAC(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mACState"    # I

    .line 2091
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PLUG_AC_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2092
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2093
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2095
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$-9yDZpVapyw51WEg4tk3wUqG7UQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$-9yDZpVapyw51WEg4tk3wUqG7UQ;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2103
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$4k_LbfyrDlnMb9fa7Vi5Ub8ORrk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$4k_LbfyrDlnMb9fa7Vi5Ub8ORrk;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$izBc-sgYSrmPL6a6W4kkEoUKkHA;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$izBc-sgYSrmPL6a6W4kkEoUKkHA;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2113
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PLUG_AC_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    return-void
.end method

.method public updatePlugStateDC(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mDCState"    # I

    .line 2118
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "PLUG_DC_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2119
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2120
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2122
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$FIvwyH36bArPqsMr1OoWHfdckws;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$FIvwyH36bArPqsMr1OoWHfdckws;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2130
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8eosJ63PtrqRJh7Qf5N0evF2_Rk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$8eosJ63PtrqRJh7Qf5N0evF2_Rk;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KQdim0FBIZ9Pkjd3m8mQUMPMlUE;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$KQdim0FBIZ9Pkjd3m8mQUMPMlUE;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2140
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "PLUG_DC_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    return-void
.end method

.method public updateSceneMode(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mode"    # I

    .line 2296
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2297
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSceneMode: hasValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SCENE_MODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2300
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_1

    .line 2301
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2303
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7tPRI24fR8xXPVslnWCRq0OJ7Fo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7tPRI24fR8xXPVslnWCRq0OJ7Fo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2310
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$scEpjCj-VWHnktbZFnWKSDrgrKc;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$scEpjCj-VWHnktbZFnWKSDrgrKc;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$jwGaZBFTmzOLtFr3tCFpz6eqhBI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$jwGaZBFTmzOLtFr3tCFpz6eqhBI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2320
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SCENE_MODE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    return-void
.end method

.method public updateSentryMode(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "mode"    # I

    .line 2324
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2325
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSentryMode: hasValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "SCENTRY_MODE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2328
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_1

    .line 2329
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2331
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$QjyOv9SD7HWVCApN_kKnNXSm2JE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$QjyOv9SD7HWVCApN_kKnNXSm2JE;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2338
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_z5QceZvJI88eNJo7WRhoGSQBEk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$_z5QceZvJI88eNJo7WRhoGSQBEk;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$1yNkQ17QnI_dbCYY-P0k9CyX8aI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$1yNkQ17QnI_dbCYY-P0k9CyX8aI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2348
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "SCENTRY_MODE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    return-void
.end method

.method public updateTempSyncState(ZZ)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "syncState"    # Z

    .line 2396
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "TEMP_SYNC_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2397
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2398
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2400
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$IvaF2f-h7TdgtC1xUCw5chP7Ve4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$IvaF2f-h7TdgtC1xUCw5chP7Ve4;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZZ)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2407
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7hypwzdJzqWBCbJ9xTTbwIPBots;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$7hypwzdJzqWBCbJ9xTTbwIPBots;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yFM3Y-MW7xqJ7Mk0yoyX5BOjF8I;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$yFM3Y-MW7xqJ7Mk0yoyX5BOjF8I;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2417
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "TEMP_SYNC_STATE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    return-void
.end method

.method public updateV2LStatus(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "V2Lstatus"    # I

    .line 3498
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "V2L_STATUS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3499
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3500
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3502
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$viGjxDb1b5AMlNUI3qrnZ5Fvhno;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$viGjxDb1b5AMlNUI3qrnZ5Fvhno;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3508
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Q8kMN15-07-7U6iUBGnW658MSpQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Q8kMN15-07-7U6iUBGnW658MSpQ;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$W97xcxAdtbRGfxLikZSBWilIr7E;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$W97xcxAdtbRGfxLikZSBWilIr7E;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3516
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "V2L_STATUS"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3517
    return-void
.end method

.method public updateV2VStatus(ZI)V
    .locals 4
    .param p1, "hasValue"    # Z
    .param p2, "V2Vstatus"    # I

    .line 3476
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "V2V_STATUS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 3477
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 3478
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3480
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$zQ2Tk9bH1matljOSS6u5-hWkNDo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$zQ2Tk9bH1matljOSS6u5-hWkNDo;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;ZI)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3486
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$W3M5jmUcM7obSX_4xUpLKV0MJ_M;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$W3M5jmUcM7obSX_4xUpLKV0MJ_M;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JVMhbFcGBsJ03CeK2GTdjVLuvb8;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$JVMhbFcGBsJ03CeK2GTdjVLuvb8;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 3494
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "V2V_STATUS"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3495
    return-void
.end method

.method public updatemTimeFormatUnit(I)V
    .locals 4
    .param p1, "mTime"    # I

    .line 2034
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "TIME_FORMAT_UNIT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2035
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2036
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2038
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Yp-JNvl0RA83D539TznKaNewV4k;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$Yp-JNvl0RA83D539TznKaNewV4k;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2041
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$AO_mJleTU2fE_EX4IoDpQy5pWfs;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$AO_mJleTU2fE_EX4IoDpQy5pWfs;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$rYZjlIL9HjWv08jpmvzw6aDLJKI;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$rYZjlIL9HjWv08jpmvzw6aDLJKI;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2046
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "TIME_FORMAT_UNIT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    return-void
.end method

.method public updatemUnitDriverDis(I)V
    .locals 4
    .param p1, "unitDis"    # I

    .line 2050
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v1, "DRIVER_DISTANCE_FORMAT_UNIT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 2051
    .local v0, "disposable":Lio/reactivex/disposables/Disposable;
    if-eqz v0, :cond_0

    .line 2052
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 2054
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$zPiyco4nv-qtuNxcAzxQhYFy67E;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$zPiyco4nv-qtuNxcAzxQhYFy67E;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 2057
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$586bnDvIw-ii6O-RWFryCkINbeg;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$586bnDvIw-ii6O-RWFryCkINbeg;-><init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    sget-object v3, Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$HK2_RtJvSU9gszKfDjh049OHmLs;->INSTANCE:Lcom/android/systemui/statusbar/pma/-$$Lambda$CarBodyStateManager$HK2_RtJvSU9gszKfDjh049OHmLs;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 2062
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->mUpdateCarStateDisposable:Ljava/util/HashMap;

    const-string v2, "DRIVER_DISTANCE_FORMAT_UNIT"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    return-void
.end method
