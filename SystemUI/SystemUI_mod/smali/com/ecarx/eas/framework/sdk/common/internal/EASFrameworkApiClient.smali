.class public final Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;,
        Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;,
        Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;
    }
.end annotation


# static fields
.field private static gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecarx/eas/framework/sdk/Singleton<",
            "Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static mConnectionCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mContext:Landroid/content/Context;

.field private final mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<",
            "*>;"
        }
    .end annotation
.end field

.field private mEASFrameworkIntent:Landroid/content/Intent;

.field private final mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

.field private mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

.field private mOpenAPIIntent:Landroid/content/Intent;

.field private mPackageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

.field private volatile mType:I

.field private mUserUnLockedReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    .line 89
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$1;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$1;-><init>()V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ecarx.intent.action.OpenAPIService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.ecarx.sdk.openapi"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mOpenAPIIntent:Landroid/content/Intent;

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ecarx.easframework.intent.action.EASFRAMEWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.ecarx.sdk.openapi"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASFrameworkIntent:Landroid/content/Intent;

    .line 106
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$2;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$2;-><init>(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mUserUnLockedReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$3;-><init>(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    .line 187
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EASFrameworkClientBg"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 189
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;-><init>(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    .line 190
    const-string v0, "EASFramework"

    const-string v1, "EASFrameworkApiClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$1;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;-><init>()V

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    return-void
.end method

.method static synthetic access$100(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    iget-object p0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .end local p1    # "x1":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->onServiceDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    iget-object p0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    iget-object p0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    iget-object p0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)Z
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->connectService()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->onServiceConnected()V

    return-void
.end method

.method static synthetic access$700(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->onServiceDisconnected()V

    return-void
.end method

.method static synthetic access$800(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->onBindingDied()V

    return-void
.end method

.method static synthetic access$900(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .end local p1    # "x1":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->onServiceConnected(Ljava/lang/String;)V

    return-void
.end method

.method private connectService()Z
    .locals 10

    .line 522
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mPackageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 523
    return v1

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    return v2

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mPackageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASFrameworkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;->findService(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->onDestory()V

    .line 534
    :cond_2
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mPackageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    invoke-direct {v0, v1, v2, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;-><init>(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    .line 535
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 536
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->connect()Z

    move-result v0

    return v0

    .line 541
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-wide/16 v4, 0x3e8

    const/16 v6, 0x1e

    const/4 v7, 0x2

    if-ge v0, v3, :cond_7

    .line 542
    const-string v0, "EASFramework"

    const-string v3, ">> package=%s, action=%s service not found!!!<<"

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASFrameworkIntent:Landroid/content/Intent;

    .line 543
    invoke-virtual {v9}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    iget-object v9, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASFrameworkIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    .line 542
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mPackageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mOpenAPIIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;->findService(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 547
    if-nez v0, :cond_5

    .line 548
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 549
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le v0, v6, :cond_4

    .line 550
    const-string v0, "EASFramework"

    const-string v3, ">> package=%s, action=%s service not found!!!<<"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mOpenAPIIntent:Landroid/content/Intent;

    .line 551
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mOpenAPIIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 550
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return v1

    .line 554
    :cond_4
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v0, v1, v4, v5}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendEmptyMessageDelayed(IJ)Z

    .line 555
    return v1

    .line 557
    :cond_5
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    if-eqz v0, :cond_6

    .line 558
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->onDestory()V

    .line 559
    :cond_6
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;

    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mPackageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    invoke-direct {v0, v1, v2, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;-><init>(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    .line 560
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 561
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->connect()Z

    move-result v0

    return v0

    .line 566
    :cond_7
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 567
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_8

    .line 568
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 569
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 570
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mUserUnLockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 571
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mUserUnLockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 572
    return v2

    .line 577
    :cond_8
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mPackageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mOpenAPIIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;->findService(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 578
    if-nez v0, :cond_a

    .line 579
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 580
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le v0, v6, :cond_9

    .line 581
    const-string v0, "EASFramework"

    const-string v3, ">> package=%s, action=%s service not found!!!<<"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mOpenAPIIntent:Landroid/content/Intent;

    .line 582
    invoke-virtual {v5}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mOpenAPIIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 581
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return v1

    .line 585
    :cond_9
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v0, v1, v4, v5}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendEmptyMessageDelayed(IJ)Z

    .line 586
    return v1

    .line 588
    :cond_a
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    if-eqz v0, :cond_b

    .line 589
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->onDestory()V

    .line 590
    :cond_b
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;

    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mPackageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    invoke-direct {v0, v1, v2, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;-><init>(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    .line 591
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCurrentServiceTwice:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 592
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->connect()Z

    move-result v0

    return v0
.end method

.method private create(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/IllegalArgumentEASException;
        }
    .end annotation

    .line 437
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 439
    monitor-exit v0

    return-void

    .line 441
    :cond_0
    if-eqz p1, :cond_2

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 445
    if-nez v1, :cond_1

    .line 446
    nop

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 448
    :cond_1
    iput-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    .line 451
    :goto_0
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mPackageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    .line 452
    monitor-exit v0

    return-void

    .line 442
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/exception/IllegalArgumentEASException;

    const-string v2, "parameter Context must not NULL"

    invoke-direct {v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/IllegalArgumentEASException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public static getInstance()Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .locals 2

    .line 101
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initConnectEASFrameworkSpecifyService(Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;)Z
    .locals 16
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .param p2, "serviceName"    # Ljava/lang/String;
        .annotation build Lcom/ecarx/eas/sdk/IServiceManager$ServiceName;
        .end annotation
    .end param
    .param p3, "connectionCallback"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 274
    move-object/from16 v3, p3

    iget-object v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    .line 277
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 286
    nop

    .line 292
    const/4 v6, 0x1

    :try_start_1
    new-array v0, v6, [Ljava/lang/String;

    aput-object v2, v0, v4

    invoke-interface {v5, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->init([Ljava/lang/String;)V

    .line 293
    invoke-interface {v5}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->getAvailableEASServices()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 297
    nop

    .line 300
    if-nez v0, :cond_0

    .line 301
    const-string v0, "EASFramework"

    const-string v5, "getAvailableEASServices() is NULL!!!"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v4

    .line 306
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 307
    const-string v0, "EASFramework"

    const-string v8, "getAvailableEASServices() not Contain  %s!!!"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v2, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    nop

    .line 311
    :try_start_2
    invoke-interface {v5}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->getAvailableServices()Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    move-object v8, v0

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 315
    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    return v4

    .line 322
    :cond_1
    nop

    .line 323
    iget v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mType:I

    const/4 v8, 0x2

    if-ne v0, v6, :cond_2

    iget v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mVersion:I

    if-gtz v0, :cond_3

    :cond_2
    iget v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mType:I

    if-nez v0, :cond_5

    iget v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mVersion:I

    if-le v0, v8, :cond_5

    .line 324
    :cond_3
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;-><init>()V

    .line 325
    iput-object v2, v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;->param:Ljava/lang/String;

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 327
    invoke-virtual {v0, v9, v4}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;->writeToParcel(Landroid/os/Parcel;I)V

    .line 328
    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v14

    .line 330
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v11, "eascore"

    const-string v12, "master"

    const-string v13, "getEasServiceInfo"

    new-array v15, v4, [B

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 332
    :try_start_3
    invoke-interface {v5, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    move-result-object v0

    .line 333
    iget v5, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    const/16 v10, 0xc8

    if-ne v5, v10, :cond_4

    iget-object v5, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget v5, v5, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    if-ne v5, v10, :cond_4

    iget-object v5, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget-object v5, v5, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    if-eqz v5, :cond_4

    .line 335
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 337
    :try_start_4
    iget-object v9, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget-object v9, v9, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {v5, v9, v4, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 338
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 339
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 344
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 341
    :catch_1
    move-exception v0

    move-object v9, v5

    goto :goto_3

    .line 344
    :cond_4
    move-object v5, v9

    :goto_1
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 345
    :goto_2
    goto :goto_5

    .line 344
    :catchall_1
    move-exception v0

    move-object v5, v9

    goto :goto_4

    .line 341
    :catch_2
    move-exception v0

    .line 342
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 344
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .local v0, "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    :goto_4
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 345
    throw v0

    .line 349
    .end local v0    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .restart local p1    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    :cond_5
    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 350
    if-eqz v3, :cond_8

    .line 351
    if-eqz v7, :cond_7

    iget-object v5, v7, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->versionInfos:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-object v5, v7, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->versionInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    .line 354
    :cond_6
    iget-object v1, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v1

    invoke-interface {v3, v2, v1, v7, v6}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;Z)Z

    move-result v1

    .end local p3    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_7

    .line 352
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .restart local p3    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    :cond_7
    :goto_6
    iget-object v5, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v5}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v5

    invoke-interface {v3, v2, v5, v6}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 360
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .end local p3    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    :cond_8
    :goto_7
    :try_start_6
    const-string v1, "EASFramework"

    const-string v3, ">> onAPIReady(%s, %s) <<"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v4

    .end local p2    # "serviceName":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    move-object/from16 v5, p1

    invoke-interface {v5, v0}, Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;->onAPIReady(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 366
    .end local p1    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    goto :goto_8

    .line 363
    :catch_3
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    const-string v1, "EASFramework"

    const-string v2, "1Notify Module API [%s] is Fail,  because Module API interanl error!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    :goto_8
    return v6

    .line 294
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .restart local p1    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .restart local p2    # "serviceName":Ljava/lang/String;
    .restart local p3    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    :catch_4
    move-exception v0

    move-object/from16 v5, p1

    .line 295
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 296
    return v4

    .line 282
    :catch_5
    move-exception v0

    move-object/from16 v5, p1

    .line 283
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 284
    iget-object v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v0, v4}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendEmptyMessage(I)Z

    .line 285
    return v4

    .line 278
    :catch_6
    move-exception v0

    move-object/from16 v5, p1

    .line 279
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 280
    iget-object v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v0, v4}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendEmptyMessage(I)Z

    .line 281
    return v4
.end method

.method private initConnectOpenAPISpecifyService(Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .param p2, "serviceName"    # Ljava/lang/String;
        .annotation build Lcom/ecarx/eas/sdk/IServiceManager$ServiceName;
        .end annotation
    .end param
    .param p3, "connectionCallback"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;

    .line 375
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;

    .line 378
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 387
    nop

    .line 393
    :try_start_1
    invoke-interface {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;->getAvailableServices()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    nop

    .line 400
    if-nez v0, :cond_0

    .line 401
    const-string v0, "EASFramework"

    const-string v1, "getAvailableServices() is NULL!!!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return v2

    .line 406
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    const-string v0, "EASFramework"

    const-string v3, "getAvailableServices() not Contain  %s!!!"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 412
    if-eqz p3, :cond_2

    .line 413
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .end local p3    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v3}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v3

    invoke-interface {p3, p2, v3, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Z)Z

    move-result p3

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 418
    :cond_2
    :try_start_2
    const-string p3, "EASFramework"

    const-string v3, ">> onAPIReady(%s, %s) <<"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .end local p2    # "serviceName":Ljava/lang/String;
    aput-object p2, v4, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    nop

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;->onAPIReady(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 423
    goto :goto_0

    .line 420
    :catch_0
    move-exception p1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    const-string p2, "EASFramework"

    const-string p3, "2Notify Module API [%s] is Fail,  because Module API interanl error!!!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    :goto_0
    return v1

    .line 394
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .restart local p1    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .restart local p2    # "serviceName":Ljava/lang/String;
    .restart local p3    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    :catch_1
    move-exception v0

    .line 395
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 396
    return v2

    .line 383
    :catch_2
    move-exception v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 385
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendEmptyMessage(I)Z

    .line 386
    return v1

    .line 379
    :catch_3
    move-exception v0

    .line 380
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 381
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendEmptyMessage(I)Z

    .line 382
    return v1
.end method

.method private onBindingDied()V
    .locals 0

    .line 691
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->onServiceDisconnected()V

    .line 692
    return-void
.end method

.method private onEASFrameworkServiceConnected(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;)V
    .locals 18
    .param p1, "easFrameworkClient"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    move-object/from16 v1, p0

    .line 853
    nop

    .line 853
    .end local p1    # "easFrameworkClient":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_6

    .line 858
    nop

    .line 861
    const/4 v3, 0x0

    :try_start_1
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->init([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 864
    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 866
    :goto_0
    nop

    .line 869
    const/4 v4, 0x0

    :try_start_2
    invoke-interface {v2}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->getAvailableEASServices()Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 872
    goto :goto_1

    .line 870
    :catch_1
    move-exception v0

    .line 871
    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 875
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_3

    .line 879
    :cond_0
    :goto_2
    move-object v5, v0

    goto :goto_4

    .line 876
    :cond_1
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 879
    :goto_4
    nop

    .line 882
    :try_start_3
    invoke-interface {v2}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->getAvailableServices()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 885
    goto :goto_5

    .line 883
    :catch_2
    move-exception v0

    .line 884
    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 887
    move-object v0, v4

    :goto_5
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 888
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 889
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 890
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    :cond_2
    goto :goto_6

    .line 895
    :cond_3
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 896
    const-string v0, "EASFramework"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ServiceName="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 898
    const-string v0, "EASFramework"

    const-string/jumbo v7, "\u8be5\u670d\u52a1\u8fd8\u672a\u542f\u52a8"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    goto :goto_7

    .line 902
    :cond_5
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;

    .line 903
    if-eqz v8, :cond_4

    .line 906
    nop

    .line 907
    iget v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mType:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v0, v10, :cond_6

    iget v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mVersion:I

    if-gtz v0, :cond_7

    :cond_6
    iget v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mType:I

    if-nez v0, :cond_9

    iget v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mVersion:I

    if-le v0, v9, :cond_9

    .line 908
    :cond_7
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;-><init>()V

    .line 909
    iput-object v7, v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;->param:Ljava/lang/String;

    .line 910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 911
    invoke-virtual {v0, v11, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;->writeToParcel(Landroid/os/Parcel;I)V

    .line 912
    invoke-virtual {v11}, Landroid/os/Parcel;->marshall()[B

    move-result-object v16

    .line 914
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v13, "eascore"

    const-string v14, "master"

    const-string v15, "getEasServiceInfo"

    new-array v12, v3, [B

    move-object/from16 v17, v12

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 916
    :try_start_4
    invoke-interface {v2, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    move-result-object v0

    .line 917
    iget v12, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    const/16 v13, 0xc8

    if-ne v12, v13, :cond_8

    iget-object v12, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget v12, v12, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    if-ne v12, v13, :cond_8

    iget-object v12, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget-object v12, v12, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    if-eqz v12, :cond_8

    .line 919
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 921
    :try_start_5
    iget-object v11, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget-object v11, v11, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {v12, v11, v3, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 922
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 923
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    .line 929
    :catchall_0
    move-exception v0

    goto :goto_a

    .line 926
    :catch_3
    move-exception v0

    move-object v11, v12

    goto :goto_9

    .line 929
    :cond_8
    move-object v0, v4

    move-object v12, v11

    :goto_8
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 930
    goto :goto_c

    .line 929
    :catchall_1
    move-exception v0

    move-object v12, v11

    goto :goto_a

    .line 926
    :catch_4
    move-exception v0

    .line 927
    :goto_9
    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 929
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 930
    goto :goto_b

    .line 929
    :goto_a
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 930
    throw v0

    .line 933
    :cond_9
    :goto_b
    move-object v0, v4

    :goto_c
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v11, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 934
    if-eqz v8, :cond_c

    .line 935
    if-eqz v0, :cond_b

    iget-object v12, v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->versionInfos:Ljava/util/List;

    if-eqz v12, :cond_b

    iget-object v12, v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->versionInfos:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_d

    .line 939
    :cond_a
    iget-object v12, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v12}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v12

    invoke-interface {v8, v7, v12, v0, v10}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;Z)Z

    move-result v0

    invoke-virtual {v11, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_e

    .line 936
    :cond_b
    :goto_d
    const-string v0, "EASFramework"

    const-string v12, "VersionInfo is NULL"

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    invoke-interface {v8, v7, v0, v10}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Z)Z

    move-result v0

    invoke-virtual {v11, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 943
    :cond_c
    :goto_e
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    .line 944
    if-nez v0, :cond_d

    .line 945
    const-string v0, "EASFramework"

    const-string v2, ">> Moudle [%s] \'s ECarXApiClient.Callback is NULL!!! <<"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v7, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    return-void

    .line 950
    :cond_d
    :try_start_7
    const-string v8, "EASFramework"

    const-string v12, ">> onAPIReady(%s, %s) <<"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v3

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-interface {v0, v7}, Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;->onAPIReady(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 955
    goto/16 :goto_7

    .line 952
    :catch_5
    move-exception v0

    .line 953
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 954
    const-string v7, "EASFramework"

    const-string v8, "4Notify Module API [%s] is Fail,  because Module API interanl error!!!"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    goto/16 :goto_7

    .line 957
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    :cond_e
    return-void

    .line 854
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    :catch_6
    move-exception v0

    .line 855
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 857
    return-void
.end method

.method private onOpenAPIServiceConnected(Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;)V
    .locals 9
    .param p1, "openAPIClient"    # Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;

    .line 805
    nop

    .end local p1    # "openAPIClient":Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;
    :try_start_0
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2

    .line 809
    nop

    .line 811
    const/4 v0, 0x0

    .line 813
    :try_start_1
    invoke-interface {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;->getAvailableServices()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 816
    goto :goto_0

    .line 814
    :catch_0
    move-exception p1

    .line 815
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 817
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 820
    :cond_0
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 821
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;

    .line 825
    if-eqz v2, :cond_1

    .line 828
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 829
    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 830
    iget-object v6, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v6}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v6

    invoke-interface {v2, v1, v6, v5}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Z)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 834
    :cond_2
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    .line 835
    if-nez v2, :cond_3

    .line 836
    const-string p1, "EASFramework"

    const-string v0, ">> Moudle [%s] \'s ECarXApiClient.Callback is NULL!!! <<"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void

    .line 841
    :cond_3
    :try_start_2
    const-string v6, "EASFramework"

    const-string v7, ">> onAPIReady(%s, %s) <<"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v2, v1}, Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;->onAPIReady(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 846
    goto :goto_1

    .line 843
    :catch_1
    move-exception v1

    .line 844
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 845
    const-string v2, "EASFramework"

    const-string v3, "3Notify Module API [%s] is Fail,  because Module API interanl error!!!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    goto :goto_1

    .line 848
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    :cond_4
    return-void

    .line 818
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    :cond_5
    :goto_2
    return-void

    .line 806
    :catch_2
    move-exception p1

    .line 807
    invoke-virtual {p1}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 808
    return-void
.end method

.method private onServiceConnected()V
    .locals 6

    .line 596
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    if-nez v0, :cond_0

    .line 597
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    .line 604
    if-nez v0, :cond_2

    .line 605
    return-void

    .line 610
    :cond_2
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 611
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 612
    nop

    .line 614
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "com.ecarx.sdk.openapi"

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    goto :goto_0

    .line 615
    :catch_0
    move-exception v1

    .line 616
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 619
    move-object v1, v3

    .line 620
    :goto_0
    if-eqz v1, :cond_3

    .line 621
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 624
    :cond_3
    if-eqz v3, :cond_4

    const-string v1, "com.ecarx.sdk.openapi.version"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 625
    const-string v1, "com.ecarx.sdk.openapi.version"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mVersion:I

    .line 628
    :cond_4
    if-eqz v3, :cond_5

    const-string v1, "com.ecarx.sdk.openapi.type"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 629
    const-string v1, "com.ecarx.sdk.openapi.type"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mType:I

    .line 635
    :cond_5
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->addRemoteCallback()V

    .line 637
    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    if-ne v1, v0, :cond_6

    .line 638
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;

    .line 639
    invoke-direct {p0, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->onOpenAPIServiceConnected(Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;)V

    .line 640
    return-void

    .line 643
    :cond_6
    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    if-ne v1, v0, :cond_7

    .line 644
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    .line 645
    invoke-direct {p0, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->onEASFrameworkServiceConnected(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;)V

    .line 646
    return-void

    .line 649
    :cond_7
    const-string v1, "EASFramework"

    const-string v3, ">> \u5f02\u5e38\u7684ClientType = %s <<"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method

.method private onServiceConnected(Ljava/lang/String;)V
    .locals 17
    .param p1, "serviceName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 695
    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    if-nez v0, :cond_0

    .line 696
    return-void

    .line 699
    :cond_0
    iget-object v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_d

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    .line 704
    :cond_1
    sget-object v3, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 705
    return-void

    .line 709
    :cond_2
    sget-object v3, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;

    .line 710
    if-nez v3, :cond_3

    .line 711
    return-void

    .line 715
    :cond_3
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 716
    nop

    .line 717
    nop

    .line 718
    sget-object v6, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    const/4 v7, 0x0

    if-ne v0, v6, :cond_4

    .line 720
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getEASServiceManager()Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 723
    return-void

    .line 727
    :cond_4
    move-object v0, v7

    :goto_0
    iget v6, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mType:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v6, v9, :cond_5

    iget v6, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mVersion:I

    if-gez v6, :cond_6

    :cond_5
    iget v6, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mType:I

    if-nez v6, :cond_8

    iget v6, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mVersion:I

    if-le v6, v8, :cond_8

    .line 728
    :cond_6
    new-instance v6, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;

    invoke-direct {v6}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;-><init>()V

    .line 729
    iput-object v2, v6, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;->param:Ljava/lang/String;

    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 731
    invoke-virtual {v6, v10, v5}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;->writeToParcel(Landroid/os/Parcel;I)V

    .line 732
    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v15

    .line 734
    new-instance v6, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v12, "eascore"

    const-string v13, "master"

    const-string v14, "getEasServiceInfo"

    new-array v11, v5, [B

    move-object/from16 v16, v11

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 736
    :try_start_1
    invoke-interface {v0, v6}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;

    move-result-object v0

    .line 737
    iget v6, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    const/16 v11, 0xc8

    if-ne v6, v11, :cond_7

    iget-object v6, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget v6, v6, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    if-ne v6, v11, :cond_7

    iget-object v6, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget-object v6, v6, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    if-eqz v6, :cond_7

    .line 739
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 741
    :try_start_2
    iget-object v10, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget-object v10, v10, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {v6, v10, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 742
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 743
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 749
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v10, v6

    goto :goto_4

    .line 745
    :catch_1
    move-exception v0

    move-object v10, v6

    goto :goto_3

    .line 749
    :cond_7
    move-object v6, v10

    :goto_1
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 750
    :goto_2
    goto :goto_5

    .line 749
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 745
    :catch_2
    move-exception v0

    .line 746
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 747
    const-string v6, "EASFramework"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 749
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .end local p1    # "serviceName":Ljava/lang/String;
    .local v0, "serviceName":Ljava/lang/String;
    :goto_4
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 750
    throw v0

    .line 754
    .end local v0    # "serviceName":Ljava/lang/String;
    .restart local p1    # "serviceName":Ljava/lang/String;
    :cond_8
    :goto_5
    if-eqz v3, :cond_b

    .line 755
    if-eqz v7, :cond_a

    iget-object v0, v7, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->versionInfos:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->versionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 759
    :cond_9
    iget-object v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    invoke-interface {v3, v2, v0, v7, v9}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_7

    .line 756
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    :cond_a
    :goto_6
    const-string v0, "EASFramework"

    const-string v6, "VersionInfo is NULL"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    invoke-interface {v3, v2, v0, v9}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 765
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    :cond_b
    :goto_7
    :try_start_4
    const-string v0, "EASFramework"

    const-string v1, ">> onServiceConnected(String serviceName) onAPIReady(%s, %s) <<"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local p1    # "serviceName":Ljava/lang/String;
    check-cast v0, Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    .line 767
    if-eqz v0, :cond_c

    .line 768
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;->onAPIReady(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 773
    :cond_c
    return-void

    .line 771
    :catch_3
    move-exception v0

    .line 772
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 774
    return-void

    .line 702
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .restart local p1    # "serviceName":Ljava/lang/String;
    :cond_d
    :goto_8
    return-void
.end method

.method private onServiceDisconnected()V
    .locals 6

    .line 653
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    if-nez v0, :cond_0

    .line 654
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    .line 659
    if-nez v0, :cond_1

    .line 660
    return-void

    .line 662
    :cond_1
    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 663
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 664
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;

    .line 665
    if-eqz v2, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 669
    :try_start_0
    invoke-interface {v2, v4, v0, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    goto :goto_0

    .line 670
    :catch_0
    move-exception v2

    .line 671
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    goto :goto_0

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v0, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    const-string v0, "EASFramework"

    const-string v1, "hasMessages(H.SERVICE_CONNECT_TODO)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void

    .line 680
    :cond_4
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 681
    return-void

    .line 684
    :cond_5
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v0, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {v1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendMessage(Landroid/os/Message;)Z

    .line 688
    return-void
.end method

.method private onServiceDisconnected(Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 777
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    if-nez v0, :cond_0

    .line 778
    return-void

    .line 781
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 786
    :cond_1
    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 787
    return-void

    .line 791
    :cond_2
    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;

    .line 792
    if-nez v1, :cond_3

    .line 793
    return-void

    .line 796
    :cond_3
    nop

    .end local p1    # "serviceName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1, v0, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;->onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    return-void

    .line 797
    :catch_0
    move-exception p1

    .line 798
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 800
    return-void

    .line 784
    .restart local p1    # "serviceName":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final getEASServiceManager()Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 463
    return-object v1

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isDisConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    return-object v1

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    return-object v1

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    if-eq v0, v2, :cond_3

    .line 473
    return-object v1

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    .line 476
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    return-object v0
.end method

.method public final getServiceManager()Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 496
    return-object v1

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isDisConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    return-object v1

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    return-object v1

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    if-eq v0, v2, :cond_3

    .line 506
    return-object v1

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;

    .line 509
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;

    return-object v0
.end method

.method public final init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .param p3, "serviceName"    # Ljava/lang/String;
        .annotation build Lcom/ecarx/eas/sdk/IServiceManager$ServiceName;
        .end annotation
    .end param
    .param p4, "connectionCallback"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 197
    nop

    .end local p1    # "context":Landroid/content/Context;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->create(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/ecarx/eas/framework/sdk/common/exception/IllegalArgumentEASException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    nop

    .line 204
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isDisConnect()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    sget-object p1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object p1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void

    .line 222
    :cond_1
    sget-object p1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object p1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    nop

    .line 227
    sget-object p1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$4;->$SwitchMap$com$ecarx$eas$framework$sdk$common$internal$ClientType:[I

    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    .line 236
    .end local p2    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .end local p3    # "serviceName":Ljava/lang/String;
    .end local p4    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    move p1, v0

    goto :goto_0

    .line 232
    .restart local p2    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .restart local p3    # "serviceName":Ljava/lang/String;
    .restart local p4    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    :pswitch_0
    nop

    .end local p2    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .end local p3    # "serviceName":Ljava/lang/String;
    .end local p4    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    invoke-direct {p0, p2, p3, p4}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->initConnectEASFrameworkSpecifyService(Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;)Z

    move-result p1

    goto :goto_0

    .line 229
    .restart local p2    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .restart local p3    # "serviceName":Ljava/lang/String;
    .restart local p4    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    :pswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->initConnectOpenAPISpecifyService(Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;)Z

    move-result p1

    .line 230
    nop

    .line 236
    .end local p2    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .end local p3    # "serviceName":Ljava/lang/String;
    .end local p4    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    :goto_0
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mEASClient:Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    invoke-virtual {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object p2

    sget-object p3, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    const/4 p4, 0x1

    if-ne p2, p3, :cond_2

    const-string p2, "initConnectOpenAPISpecifyService() = %s"

    new-array p3, p4, [Ljava/lang/Object;

    .line 237
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, "initConnectEASFrameworkSpecifyService() = %s"

    new-array p3, p4, [Ljava/lang/Object;

    .line 238
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 239
    :goto_1
    if-nez p1, :cond_3

    .line 240
    const-string p1, "EASFramework"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_3
    const-string p1, "EASFramework"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 205
    .restart local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;
    .restart local p2    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    .restart local p3    # "serviceName":Ljava/lang/String;
    .restart local p4    # "connectionCallback":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;
    :cond_4
    :goto_2
    sget-object p1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mCallbacks:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object p1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mConnectionCallbacks:Ljava/util/Map;

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 208
    return-void

    .line 210
    :cond_5
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->mH:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;

    invoke-virtual {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$H;->sendEmptyMessage(I)Z

    .line 211
    return-void

    .line 198
    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/common/exception/IllegalArgumentEASException;->printStackTrace()V

    .line 200
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
