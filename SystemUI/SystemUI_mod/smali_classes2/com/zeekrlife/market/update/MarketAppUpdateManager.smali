.class Lcom/zeekrlife/market/update/MarketAppUpdateManager;
.super Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub;
.source "MarketAppUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;,
        Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppUpdateManager"

.field private static volatile instance:Lcom/zeekrlife/market/update/MarketAppUpdateManager;


# instance fields
.field private appCheckUpdater:Lcom/zeekrlife/market/update/IAppCheckUpdater;

.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zeekrlife/market/update/MarketAppUpdateManager;)Lcom/zeekrlife/market/update/IAppCheckUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    .line 15
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->appCheckUpdater:Lcom/zeekrlife/market/update/IAppCheckUpdater;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zeekrlife/market/update/MarketAppUpdateManager;Lcom/zeekrlife/market/update/IAppCheckUpdater;)Lcom/zeekrlife/market/update/IAppCheckUpdater;
    .locals 0
    .param p0, "x0"    # Lcom/zeekrlife/market/update/MarketAppUpdateManager;
    .param p1, "x1"    # Lcom/zeekrlife/market/update/IAppCheckUpdater;

    .line 15
    iput-object p1, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->appCheckUpdater:Lcom/zeekrlife/market/update/IAppCheckUpdater;

    return-object p1
.end method

.method public static getInstance()Lcom/zeekrlife/market/update/MarketAppUpdateManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->instance:Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->instance:Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    invoke-direct {v1}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;-><init>()V

    sput-object v1, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->instance:Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->instance:Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    return-object v0
.end method


# virtual methods
.method public checkAppUpdate(Ljava/lang/String;Lcom/zeekrlife/market/update/ICheckUpdateCallback;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/zeekrlife/market/update/ICheckUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "AppUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCheckUpdateService checkAppUpdate : packageName -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->ensureServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "AppUpdateManager"

    const-string v1, "AppCheckUpdateService service not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->appCheckUpdater:Lcom/zeekrlife/market/update/IAppCheckUpdater;

    invoke-interface {v0, p1, p2}, Lcom/zeekrlife/market/update/IAppCheckUpdater;->checkAppUpdate(Ljava/lang/String;Lcom/zeekrlife/market/update/ICheckUpdateCallback;)Z

    move-result v0

    return v0
.end method

.method public ensureServiceAvailable()Z
    .locals 4

    .line 131
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->appCheckUpdater:Lcom/zeekrlife/market/update/IAppCheckUpdater;

    if-nez v1, :cond_0

    .line 132
    const-string v1, "AppUpdateManager"

    const-string v2, "service = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->appCheckUpdater:Lcom/zeekrlife/market/update/IAppCheckUpdater;

    invoke-interface {v1}, Lcom/zeekrlife/market/update/IAppCheckUpdater;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 136
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    .line 137
    const-string v2, "AppUpdateManager"

    const-string v3, "service.getBinder() = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v0

    .line 140
    :cond_1
    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    const-string v2, "AppUpdateManager"

    const-string v3, "service.getBinder().isBinderAlive() = false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v0

    .line 144
    :cond_2
    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    const-string v2, "AppUpdateManager"

    const-string v3, "service.getBinder().pingBinder() = false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return v0

    .line 151
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_3
    nop

    .line 152
    const/4 v0, 0x1

    return v0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    return v0
.end method

.method public hasAvailableVersion(Ljava/lang/String;Lcom/zeekrlife/market/update/IAvailableVersionCallback;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/zeekrlife/market/update/IAvailableVersionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const-string v0, "AppUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCheckUpdateService hasAvailableVersion : packageName -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->ensureServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "AppUpdateManager"

    const-string v1, "AppCheckUpdateService service not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->appCheckUpdater:Lcom/zeekrlife/market/update/IAppCheckUpdater;

    invoke-interface {v0, p1, p2}, Lcom/zeekrlife/market/update/IAppCheckUpdater;->hasAvailableVersion(Ljava/lang/String;Lcom/zeekrlife/market/update/IAvailableVersionCallback;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->ensureServiceAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {p2, v1}, Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;->onInit(Z)V

    .line 94
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->context:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;

    invoke-direct {v0, p0, p2}, Lcom/zeekrlife/market/update/MarketAppUpdateManager$Connection;-><init>(Lcom/zeekrlife/market/update/MarketAppUpdateManager;Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;)V

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 99
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->intent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->intent:Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->intent:Landroid/content/Intent;

    const-string v2, "com.zeekrlife.market"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->intent:Landroid/content/Intent;

    const-string v2, "zeekr.intent.action.APPSTORE_UPDATE_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 106
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v3, "AppUpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind AppCheckUpdateService:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_2

    .line 112
    const-string v0, "AppUpdateManager"

    const-string v1, "bind AppCheckUpdateService success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    :cond_2
    const-string v1, "AppUpdateManager"

    const-string v3, "bind AppCheckUpdateService failure!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eqz p2, :cond_3

    .line 116
    invoke-interface {p2, v0}, Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;->onInit(Z)V

    .line 119
    :cond_3
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->context:Landroid/content/Context;

    .line 126
    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 127
    return-void
.end method
