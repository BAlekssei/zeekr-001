.class public Lcom/android/systemui/statusbar/pma/CarAPIProxy;
.super Ljava/lang/Object;
.source "CarAPIProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/android/systemui/statusbar/pma/CarAPIProxy;


# instance fields
.field private mConnListenerList:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mICar:Lcom/ecarx/xui/adaptapi/car/ICar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->sInstance:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mConnListenerList:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->initCar(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/pma/CarAPIProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/pma/CarAPIProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    .line 11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->notifyConnected()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/pma/CarAPIProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    .line 11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->notifyDisconnected()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/pma/CarAPIProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->sInstance:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->sInstance:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->sInstance:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->sInstance:Lcom/android/systemui/statusbar/pma/CarAPIProxy;

    return-object v0
.end method

.method private initCar(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    :try_start_0
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/car/Car;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mICar:Lcom/ecarx/xui/adaptapi/car/ICar;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mICar:Lcom/ecarx/xui/adaptapi/car/ICar;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mICar:Lcom/ecarx/xui/adaptapi/car/ICar;

    instance-of v0, v0, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mICar:Lcom/ecarx/xui/adaptapi/car/ICar;

    check-cast v0, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    .line 58
    .local v0, "iCarConnectable":Lcom/ecarx/xui/adaptapi/binder/IConnectable;
    new-instance v1, Lcom/android/systemui/statusbar/pma/CarAPIProxy$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy$1;-><init>(Lcom/android/systemui/statusbar/pma/CarAPIProxy;)V

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->registerConnectWatcher(Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;)V

    .line 73
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->connect()V

    .line 74
    .end local v0    # "iCarConnectable":Lcom/ecarx/xui/adaptapi/binder/IConnectable;
    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->notifyConnected()V

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "CarAPIProxy"

    const-string v1, "ICar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "CarAPIProxy"

    const-string v2, "CarAPIProxy init ex"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private notifyConnected()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mConnListenerList:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;

    .line 89
    .local v1, "listener":Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;->onConnected()V

    .line 90
    .end local v1    # "listener":Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;
    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method private notifyDisconnected()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mConnListenerList:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;

    .line 95
    .local v1, "listener":Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;->onDisconnected()V

    .line 96
    .end local v1    # "listener":Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;
    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public addConnListener(Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;)V
    .locals 1
    .param p1, "connectListener"    # Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {p1}, Lcom/android/systemui/statusbar/pma/CarAPIProxy$ConnectListener;->onConnected()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mConnListenerList:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public getICar()Lcom/ecarx/xui/adaptapi/car/ICar;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarAPIProxy;->mICar:Lcom/ecarx/xui/adaptapi/car/ICar;

    return-object v0
.end method
