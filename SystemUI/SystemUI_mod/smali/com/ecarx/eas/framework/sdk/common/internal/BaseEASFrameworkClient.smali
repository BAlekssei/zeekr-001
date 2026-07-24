.class public abstract Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field protected volatile mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

.field private mPakcageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

.field private volatile mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mServiceConnect:Landroid/content/ServiceConnection;

.field private mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapper"    # Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;
    .param p3, "notifity"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    .line 88
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;, "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient$1;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient$1;-><init>(Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;)V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceConnect:Landroid/content/ServiceConnection;

    .line 89
    nop

    .line 89
    .end local p1    # "context":Landroid/content/Context;
    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    .line 90
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mLock:Ljava/lang/Object;

    .line 91
    nop

    .line 91
    .end local p2    # "wrapper":Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;
    const-string/jumbo p1, "wrapper must not be null"

    invoke-static {p2, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mPakcageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    .line 92
    nop

    .line 92
    .end local p3    # "notifity":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;
    iput-object p3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    .line 93
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "BaseEASFrameworkClient"

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 95
    nop

    .line 95
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;, "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<TT;>;"
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    .line 32
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;
    iget-object p0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;
    .param p1, "x1"    # Landroid/os/IInterface;

    .line 32
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;
    .end local p1    # "x1":Landroid/os/IInterface;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mService:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;

    .line 32
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->unBind()V

    return-void
.end method

.method private connectService(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 174
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;, "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<TT;>;"
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceConnect:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 175
    if-nez v0, :cond_1

    .line 176
    const-string v1, "EASFrameworkClient"

    const-string v3, ">> %s is permission <<"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    .end local p1    # "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getStartServicePackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;, "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<TT;>;"
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v2, v4

    .line 176
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    return v0
.end method

.method private connectSystemService(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .line 135
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;, "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<TT;>;"
    const-string v0, "EASFrameworkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect system service start context>>>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isSystemApp(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 140
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    const/16 v3, 0x18

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v1, v3, :cond_0

    .line 141
    const-string v1, "bindServiceAsUser"

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Landroid/content/Intent;

    aput-object v10, v9, v7

    const-class v10, Landroid/content/ServiceConnection;

    aput-object v10, v9, v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    const-class v10, Landroid/os/Handler;

    aput-object v10, v9, v5

    const-class v10, Landroid/os/UserHandle;

    aput-object v10, v9, v4

    invoke-virtual {v0, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_0
    const-string v1, "bindServiceAsUser"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Intent;

    aput-object v10, v9, v7

    const-class v10, Landroid/content/ServiceConnection;

    aput-object v10, v9, v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    const-class v10, Landroid/os/UserHandle;

    aput-object v10, v9, v5

    invoke-virtual {v0, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 148
    :goto_0
    if-eqz v0, :cond_2

    .line 149
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    .line 150
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v7

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceConnect:Landroid/content/ServiceConnection;

    aput-object v3, v2, v8

    .line 151
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mHandler:Landroid/os/Handler;

    aput-object v3, v2, v5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    aput-object v3, v2, v4

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v7

    iget-object v3, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceConnect:Landroid/content/ServiceConnection;

    aput-object v3, v2, v8

    .line 154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    aput-object v3, v2, v5

    .line 153
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    :goto_1
    const-string v1, "EASFrameworkClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect system service result >>>:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 159
    :cond_2
    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->connectService(Landroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "EASFrameworkClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect system service fail >>>:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->connectService(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 167
    :cond_3
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;, "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<TT;>;"
    .end local p1    # "intent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->connectService(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method private isSystemApp(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 252
    nop

    .end local p1    # "flags":I
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSystemApp(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 242
    .local p0, "this":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;, "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 243
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 244
    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isSystemApp(I)Z

    move-result v1

    if-nez v1, :cond_1

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;, "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<TT;>;"
    invoke-direct {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isUpdatedSystemApp(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 245
    :catch_0
    move-exception p1

    .line 246
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 248
    return v0
.end method

.method private isUpdatedSystemApp(I)Z
    .locals 0
    .param p1, "flags"    # I

    .line 255
    nop

    .end local p1    # "flags":I
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private unBind()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceConnect:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRemoteCallback()V
.end method

.method protected final checkConnected()V
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect()Z
    .locals 6

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getStartServicePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mPakcageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;->findService(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 122
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 123
    const-string v0, "EASFrameworkClient"

    const-string v1, ">> package=%s, action=%s service not found!!!<<"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getStartServicePackage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 123
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v5

    .line 128
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 131
    invoke-direct {p0, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->connectSystemService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected abstract createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
.end method

.method public final getService()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->checkConnected()V

    .line 205
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mService:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 202
    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected abstract getStartServiceAction()Ljava/lang/String;
.end method

.method protected getStartServicePackage()Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "com.ecarx.sdk.openapi"

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnecting()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDisConnect()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 194
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 196
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    return v0

    .line 196
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onBindingDied()V
.end method

.method public onDestory()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mServiceStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mHandler:Landroid/os/Handler;

    .line 228
    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    .line 229
    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mPakcageWrapper:Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    .line 230
    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;->mContext:Landroid/content/Context;

    .line 231
    return-void
.end method

.method protected abstract onServiceConnected()V
.end method

.method protected abstract onServiceDisconnected()V
.end method
