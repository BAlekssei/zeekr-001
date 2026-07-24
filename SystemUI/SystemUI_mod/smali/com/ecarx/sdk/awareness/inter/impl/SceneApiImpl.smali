.class public Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
.super Lcom/ecarx/sdk/awareness/inter/SceneAPI;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl; = null

.field private static final TAG:Ljava/lang/String; = "SceneApiImpl"

.field private static final svcLock:Ljava/lang/Object;


# instance fields
.field private abilityInvoker:Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;

.field private mContext:Landroid/content/Context;

.field private modeSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;

.field private sceneSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->svcLock:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->INSTANCE:Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/ecarx/sdk/awareness/inter/SceneAPI;-><init>()V

    .line 24
    new-instance v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;

    invoke-direct {v0}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->sceneSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;

    .line 25
    new-instance v0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;

    invoke-direct {v0}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->modeSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;

    .line 26
    new-instance v0, Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;

    invoke-direct {v0}, Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->abilityInvoker:Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    .param p1, "x1"    # Z

    .line 20
    nop

    .end local p0    # "x0":Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    .end local p1    # "x1":Z
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->setAlive(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    .param p1, "x1"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .line 20
    nop

    .end local p0    # "x0":Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    .end local p1    # "x1":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->initScene(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;)Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    .line 20
    nop

    .end local p0    # "x0":Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    iget-object p0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->sceneSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;)Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    .line 20
    nop

    .end local p0    # "x0":Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    iget-object p0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->modeSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;)Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    .line 20
    nop

    .end local p0    # "x0":Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    iget-object p0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->abilityInvoker:Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;

    return-object p0
.end method

.method public static get()Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    .locals 2

    .line 32
    sget-object v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->INSTANCE:Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->INSTANCE:Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    invoke-direct {v1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;-><init>()V

    sput-object v1, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->INSTANCE:Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    .line 37
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->INSTANCE:Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;

    return-object v0
.end method

.method private init(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;)V
    .locals 3
    .param p1, "ieasFrameworkService"    # Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    .line 115
    sget-object v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->svcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    if-eqz p1, :cond_0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->sceneSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;

    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->init(Landroid/os/IInterface;)V

    .line 118
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->modeSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;

    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->init(Landroid/os/IInterface;)V

    .line 119
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->abilityInvoker:Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;

    .end local p1    # "ieasFrameworkService":Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;->init(Landroid/os/IInterface;)V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 121
    :cond_0
    const-string p1, "SceneApiImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init:ieasFrameworkService==null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private initScene(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V
    .locals 2
    .param p1, "clientType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .line 92
    nop

    .end local p1    # "clientType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    if-ne p1, v0, :cond_1

    .line 93
    const/4 p1, 0x0

    .line 95
    :try_start_0
    invoke-static {}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getInstance()Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getEASServiceManager()Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .line 99
    move-object p1, v0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 99
    :goto_0
    if-nez p1, :cond_0

    .line 100
    const-string p1, "SceneApiImpl"

    const-string v0, ">> EASFrameworkService is NULL <<"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 103
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->init(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;)V

    .line 105
    :cond_1
    return-void
.end method

.method private setAlive(Z)V
    .locals 2
    .param p1, "alive"    # Z

    .line 107
    sget-object v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->svcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->sceneSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;

    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->setAlive(Z)V

    .line 109
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->modeSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;

    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->setAlive(Z)V

    .line 110
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->abilityInvoker:Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;

    .end local p1    # "alive":Z
    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;->setAlive(Z)V

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public getAbilityInvoker()Lcom/ecarx/sdk/awareness/inter/IAbilityInvoker;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->abilityInvoker:Lcom/ecarx/sdk/awareness/inter/impl/AbilityInvoker;

    return-object v0
.end method

.method public getModeSubscribe()Lcom/ecarx/sdk/awareness/inter/IModeSubscribe;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->modeSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;

    return-object v0
.end method

.method public getSceneAbility()Lcom/ecarx/sdk/awareness/inter/ISceneAbility;
    .locals 1

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSceneSubscribe()Lcom/ecarx/sdk/awareness/inter/ISceneSubscribe;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;->sceneSubscribe:Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    .line 64
    invoke-super {p0, p1, p2}, Lcom/ecarx/sdk/awareness/inter/SceneAPI;->init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V

    .line 66
    :try_start_0
    invoke-static {}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getInstance()Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    move-result-object v0

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    const-string v1, "awareness"

    new-instance v2, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl$1;

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;
    invoke-direct {v2, p0}, Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl$1;-><init>(Lcom/ecarx/sdk/awareness/inter/impl/SceneApiImpl;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;)V
    :try_end_0
    .catch Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 86
    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;->printStackTrace()V

    .line 89
    return-void
.end method
