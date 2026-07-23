.class public Landroid/support/car/Car;
.super Ljava/lang/Object;
.source "Car.java"


# static fields
.field private static final CLASS_TO_SERVICE_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONNECTION_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCarConnectionCallback:Landroid/support/car/CarConnectionCallback;

.field private final mCarConnectionCallbackProxy:Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

.field private final mCarManagerLock:Ljava/lang/Object;

.field private final mCarServiceLoader:Landroid/support/car/CarServiceLoader;

.field private mConnectionState:I

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/car/CarManagerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/String;>;"
    const-class v1, Landroid/support/car/hardware/CarSensorManager;

    const-string/jumbo v2, "sensor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-class v1, Landroid/support/car/CarInfoManager;

    const-string v2, "info"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-class v1, Landroid/support/car/CarAppFocusManager;

    const-string v2, "app_focus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-class v1, Landroid/support/car/content/pm/CarPackageManager;

    const-string v2, "package"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-class v1, Landroid/support/car/media/CarAudioManager;

    const-string v2, "audio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-class v1, Landroid/support/car/navigation/CarNavigationStatusManager;

    const-string v2, "car_navigation_service"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/support/car/Car;->CLASS_TO_SERVICE_NAME:Ljava/util/Map;

    .line 149
    .end local v0    # "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/support/car/Car;->CONNECTION_TYPES:Ljava/util/Set;

    .line 151
    sget-object v0, Landroid/support/car/Car;->CONNECTION_TYPES:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Landroid/support/car/Car;->CONNECTION_TYPES:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Landroid/support/car/Car;->CONNECTION_TYPES:Ljava/util/Set;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Landroid/support/car/Car;->CONNECTION_TYPES:Ljava/util/Set;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Landroid/support/car/Car;->CONNECTION_TYPES:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Landroid/support/car/Car;->CONNECTION_TYPES:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/support/car/CarConnectionCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carConnectionCallback"    # Landroid/support/car/CarConnectionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Landroid/support/car/Car$1;

    invoke-direct {v0, p0}, Landroid/support/car/Car$1;-><init>(Landroid/support/car/Car;)V

    iput-object v0, p0, Landroid/support/car/Car;->mCarConnectionCallbackProxy:Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/car/Car;->mCarManagerLock:Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/car/Car;->mServiceMap:Ljava/util/HashMap;

    .line 290
    iput-object p1, p0, Landroid/support/car/Car;->mContext:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Landroid/support/car/Car;->mCarConnectionCallback:Landroid/support/car/CarConnectionCallback;

    .line 292
    if-nez p3, :cond_0

    .line 293
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 294
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p3, v1

    .line 296
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    iput-object p3, p0, Landroid/support/car/Car;->mEventHandler:Landroid/os/Handler;

    .line 298
    iget-object v0, p0, Landroid/support/car/Car;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    new-instance v0, Landroid/support/car/CarServiceLoaderEmbedded;

    iget-object v1, p0, Landroid/support/car/Car;->mCarConnectionCallbackProxy:Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

    iget-object v2, p0, Landroid/support/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, v2}, Landroid/support/car/CarServiceLoaderEmbedded;-><init>(Landroid/content/Context;Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/car/Car;->mCarServiceLoader:Landroid/support/car/CarServiceLoader;

    goto :goto_0

    .line 303
    :cond_1
    const-string v0, "com.google.android.apps.auto.sdk.service.CarServiceLoaderGms"

    iget-object v1, p0, Landroid/support/car/Car;->mCarConnectionCallbackProxy:Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

    iget-object v2, p0, Landroid/support/car/Car;->mEventHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/support/car/Car;->loadCarServiceLoader(Ljava/lang/String;Landroid/content/Context;Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;Landroid/os/Handler;)Landroid/support/car/CarServiceLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/support/car/Car;->mCarServiceLoader:Landroid/support/car/CarServiceLoader;

    .line 306
    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/support/car/Car;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/car/Car;

    .line 59
    iget v0, p0, Landroid/support/car/Car;->mConnectionState:I

    return v0
.end method

.method static synthetic access$002(Landroid/support/car/Car;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/car/Car;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Landroid/support/car/Car;->mConnectionState:I

    return p1
.end method

.method static synthetic access$100(Landroid/support/car/Car;)Landroid/support/car/CarConnectionCallback;
    .locals 1
    .param p0, "x0"    # Landroid/support/car/Car;

    .line 59
    iget-object v0, p0, Landroid/support/car/Car;->mCarConnectionCallback:Landroid/support/car/CarConnectionCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/car/Car;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/car/Car;

    .line 59
    invoke-direct {p0}, Landroid/support/car/Car;->tearDownCarManagers()V

    return-void
.end method

.method public static createCar(Landroid/content/Context;Landroid/support/car/CarConnectionCallback;)Landroid/support/car/Car;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "carConnectionCallback"    # Landroid/support/car/CarConnectionCallback;

    .line 285
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/car/Car;->createCar(Landroid/content/Context;Landroid/support/car/CarConnectionCallback;Landroid/os/Handler;)Landroid/support/car/Car;

    move-result-object v0

    return-object v0
.end method

.method public static createCar(Landroid/content/Context;Landroid/support/car/CarConnectionCallback;Landroid/os/Handler;)Landroid/support/car/Car;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "carConnectionCallback"    # Landroid/support/car/CarConnectionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 270
    :try_start_0
    new-instance v0, Landroid/support/car/Car;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/car/Car;-><init>(Landroid/content/Context;Landroid/support/car/CarConnectionCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CAR.SUPPORT.LIB.CAR"

    const-string v2, "Car failed to be created"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadCarServiceLoader(Ljava/lang/String;Landroid/content/Context;Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;Landroid/os/Handler;)Landroid/support/car/CarServiceLoader;
    .locals 7
    .param p1, "carServiceLoaderClassName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "carConnectionCallbackProxy"    # Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "carServiceLoaderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/car/CarServiceLoader;>;"
    nop

    .line 314
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/support/car/CarServiceLoader;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    .line 318
    nop

    .line 321
    const/4 v1, 0x3

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/os/Handler;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/car/CarServiceLoader;>;"
    nop

    .line 324
    nop

    .line 328
    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    aput-object p3, v1, v5

    aput-object p4, v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/car/CarServiceLoader;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    .line 329
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot construct CarServiceLoader, constructor failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 323
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/support/car/CarServiceLoader;>;"
    :catch_1
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot construct CarServiceLoader, no constructor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 315
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find CarServiceLoader implementation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private tearDownCarManagers()V
    .locals 3

    .line 468
    iget-object v0, p0, Landroid/support/car/Car;->mCarManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Landroid/support/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/car/CarManagerBase;

    .line 470
    .local v2, "manager":Landroid/support/car/CarManagerBase;
    invoke-interface {v2}, Landroid/support/car/CarManagerBase;->onCarDisconnected()V

    .line 471
    .end local v2    # "manager":Landroid/support/car/CarManagerBase;
    goto :goto_0

    .line 472
    :cond_0
    iget-object v1, p0, Landroid/support/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 473
    monitor-exit v0

    .line 474
    return-void

    .line 473
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget v0, p0, Landroid/support/car/Car;->mConnectionState:I

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/car/Car;->mConnectionState:I

    .line 368
    iget-object v0, p0, Landroid/support/car/Car;->mCarServiceLoader:Landroid/support/car/CarServiceLoader;

    invoke-virtual {v0}, Landroid/support/car/CarServiceLoader;->connect()V

    .line 369
    monitor-exit p0

    .line 370
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected or connecting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCarManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/car/CarNotConnectedException;
        }
    .end annotation

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "manager":Ljava/lang/Object;
    iget-object v1, p0, Landroid/support/car/Car;->mCarManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-object v2, p0, Landroid/support/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 419
    if-nez v0, :cond_0

    .line 420
    iget-object v2, p0, Landroid/support/car/Car;->mCarServiceLoader:Landroid/support/car/CarServiceLoader;

    invoke-virtual {v2, p1}, Landroid/support/car/CarServiceLoader;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 424
    :cond_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/support/car/CarManagerBase;

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, p0, Landroid/support/car/Car;->mServiceMap:Ljava/util/HashMap;

    move-object v3, v0

    check-cast v3, Landroid/support/car/CarManagerBase;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_1
    monitor-exit v1

    .line 428
    return-object v0

    .line 427
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
