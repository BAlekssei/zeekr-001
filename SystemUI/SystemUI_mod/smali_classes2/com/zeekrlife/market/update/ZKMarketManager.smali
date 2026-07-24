.class public Lcom/zeekrlife/market/update/ZKMarketManager;
.super Ljava/lang/Object;
.source "ZKMarketManager.java"

# interfaces
.implements Lcom/zeekrlife/market/task/IArrangeCallback;
.implements Lcom/zeekrlife/market/task/ITaskCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;,
        Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;,
        Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZKMarketManager"

.field private static volatile instance:Lcom/zeekrlife/market/update/ZKMarketManager;


# instance fields
.field private final taskInfoCaChe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zeekrlife/market/update/AppTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final taskInfoChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final taskInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zeekrlife/market/update/AppTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoCaChe:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChangeListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/zeekrlife/market/update/ZKMarketManager;
    .locals 2

    .line 43
    sget-object v0, Lcom/zeekrlife/market/update/ZKMarketManager;->instance:Lcom/zeekrlife/market/update/ZKMarketManager;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/zeekrlife/market/update/ZKMarketManager;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/zeekrlife/market/update/ZKMarketManager;->instance:Lcom/zeekrlife/market/update/ZKMarketManager;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/zeekrlife/market/update/ZKMarketManager;

    invoke-direct {v1}, Lcom/zeekrlife/market/update/ZKMarketManager;-><init>()V

    sput-object v1, Lcom/zeekrlife/market/update/ZKMarketManager;->instance:Lcom/zeekrlife/market/update/ZKMarketManager;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/zeekrlife/market/update/ZKMarketManager;->instance:Lcom/zeekrlife/market/update/ZKMarketManager;

    return-object v0
.end method

.method public static synthetic lambda$checkAppAvailableVersion$1(Lcom/zeekrlife/market/update/ZKMarketManager;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;
    .param p3, "result"    # Z

    .line 489
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppUpdateService init result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-eqz p3, :cond_0

    .line 492
    :try_start_0
    invoke-static {}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->getInstance()Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    move-result-object v0

    new-instance v1, Lcom/zeekrlife/market/update/ZKMarketManager$2;

    invoke-direct {v1, p0, p2}, Lcom/zeekrlife/market/update/ZKMarketManager$2;-><init>(Lcom/zeekrlife/market/update/ZKMarketManager;Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->hasAvailableVersion(Ljava/lang/String;Lcom/zeekrlife/market/update/IAvailableVersionCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ZKMarketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppUpdateService checkAppAvailableVersion called exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$checkAppUpdate$0(Lcom/zeekrlife/market/update/ZKMarketManager;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;
    .param p3, "result"    # Z

    .line 453
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppUpdateService init result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-eqz p3, :cond_0

    .line 456
    :try_start_0
    invoke-static {}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->getInstance()Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    move-result-object v0

    new-instance v1, Lcom/zeekrlife/market/update/ZKMarketManager$1;

    invoke-direct {v1, p0, p2}, Lcom/zeekrlife/market/update/ZKMarketManager$1;-><init>(Lcom/zeekrlife/market/update/ZKMarketManager;Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->checkAppUpdate(Ljava/lang/String;Lcom/zeekrlife/market/update/ICheckUpdateCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ZKMarketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppUpdateService checkAppUpdate called exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V
    .locals 4
    .param p1, "appTaskInfo"    # Lcom/zeekrlife/market/update/AppTaskInfo;

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;

    .line 91
    .local v1, "listener":Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;->onAppTaskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "listener":Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;
    goto :goto_0

    .line 96
    :cond_0
    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const-string v1, "ZKMarketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taskInfoChanged exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private updateAppTaskInfo(Lcom/zeekrlife/market/update/AppTaskInfo;Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/update/AppTaskInfo;
    .param p2, "task"    # Lcom/zeekrlife/market/task/ITaskInfo;

    .line 153
    invoke-virtual {p1, p2}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 154
    iget v0, p2, Lcom/zeekrlife/market/task/ITaskInfo;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 184
    :pswitch_0
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 185
    goto :goto_0

    .line 181
    :pswitch_1
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 182
    goto :goto_0

    .line 178
    :pswitch_2
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 179
    goto :goto_0

    .line 175
    :pswitch_3
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 176
    goto :goto_0

    .line 172
    :pswitch_4
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 173
    goto :goto_0

    .line 157
    :pswitch_5
    invoke-virtual {p1, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 158
    goto :goto_0

    .line 169
    :pswitch_6
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 170
    goto :goto_0

    .line 163
    :pswitch_7
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 164
    goto :goto_0

    .line 166
    :pswitch_8
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 167
    goto :goto_0

    .line 160
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 161
    nop

    .line 188
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized addTaskInfoChangedListener(Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    .end local p1    # "listener":Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/zeekrlife/market/update/ZKMarketManager;
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkAppAvailableVersion(Landroid/content/Context;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;

    .line 487
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAppAvailableVersion() called with: packageName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->getInstance()Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    move-result-object v0

    new-instance v1, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$zqXQyk80xDBJTY3iojTRabRfuYs;

    invoke-direct {v1, p0, p2, p3}, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$zqXQyk80xDBJTY3iojTRabRfuYs;-><init>(Lcom/zeekrlife/market/update/ZKMarketManager;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppAvailableVersionCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->init(Landroid/content/Context;Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;)V

    .line 516
    return-void
.end method

.method public checkAppUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;

    .line 451
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAppUpdate() called with: packageName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->getInstance()Lcom/zeekrlife/market/update/MarketAppUpdateManager;

    move-result-object v0

    new-instance v1, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$foSnU2IeRT9IkMCTb9XJM0wYTdc;

    invoke-direct {v1, p0, p2, p3}, Lcom/zeekrlife/market/update/-$$Lambda$ZKMarketManager$foSnU2IeRT9IkMCTb9XJM0wYTdc;-><init>(Lcom/zeekrlife/market/update/ZKMarketManager;Ljava/lang/String;Lcom/zeekrlife/market/update/ZKMarketManager$AppCheckUpdateCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/zeekrlife/market/update/MarketAppUpdateManager;->init(Landroid/content/Context;Lcom/zeekrlife/market/update/MarketAppUpdateManager$OnInitCallback;)V

    .line 480
    return-void
.end method

.method public ensureServiceAvailable()Z
    .locals 1

    .line 73
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->ensureServiceAvailable()Z

    move-result v0

    return v0
.end method

.method public getAppTaskInfo(Ljava/lang/String;)Lcom/zeekrlife/market/update/AppTaskInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 123
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppTaskInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoCaChe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeekrlife/market/update/AppTaskInfo;

    .line 126
    .local v0, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    if-nez v0, :cond_3

    .line 127
    :try_start_0
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->getTaskList()Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/zeekrlife/market/task/ITaskInfo;>;"
    if-nez v1, :cond_0

    .line 129
    const/4 v2, 0x0

    return-object v2

    .line 131
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zeekrlife/market/task/ITaskInfo;

    .line 132
    .local v3, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    new-instance v4, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 133
    .local v4, "taskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-direct {p0, v4, v3}, Lcom/zeekrlife/market/update/ZKMarketManager;->updateAppTaskInfo(Lcom/zeekrlife/market/update/AppTaskInfo;Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 134
    iget-object v5, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoCaChe:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/zeekrlife/market/update/AppTaskInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v4}, Lcom/zeekrlife/market/update/AppTaskInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    return-object v4

    .line 138
    .end local v3    # "task":Lcom/zeekrlife/market/task/ITaskInfo;
    .end local v4    # "taskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_1
    goto :goto_0

    .line 139
    .end local v1    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/zeekrlife/market/task/ITaskInfo;>;"
    :cond_2
    goto :goto_1

    .line 146
    :catch_0
    move-exception v1

    goto :goto_2

    .line 140
    :cond_3
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v1

    iget-object v2, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zeekrlife/market/update/MarketTaskManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v1

    .line 141
    .local v1, "iTask":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v1, :cond_4

    iget v2, v1, Lcom/zeekrlife/market/task/ITaskInfo;->status:I

    iget v3, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->status:I

    if-eq v2, v3, :cond_4

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->updateAppTaskInfo(Lcom/zeekrlife/market/update/AppTaskInfo;Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 144
    :cond_4
    const-string v2, "ZKMarketManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ITaskInfo -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "iTask":Lcom/zeekrlife/market/task/ITaskInfo;
    :goto_1
    goto :goto_3

    .line 146
    :goto_2
    nop

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0
.end method

.method public getAppTaskInfoList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zeekrlife/market/update/AppTaskInfo;",
            ">;"
        }
    .end annotation

    .line 106
    const-string v0, "ZKMarketManager"

    const-string v1, "getAppTaskInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "appTaskInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/zeekrlife/market/update/AppTaskInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->getTaskList()Ljava/util/List;

    move-result-object v1

    .line 110
    .local v1, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/zeekrlife/market/task/ITaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zeekrlife/market/task/ITaskInfo;

    .line 111
    .local v3, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    new-instance v4, Lcom/zeekrlife/market/update/AppTaskInfo;

    invoke-direct {v4}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>()V

    .line 112
    .local v4, "taskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-direct {p0, v4, v3}, Lcom/zeekrlife/market/update/ZKMarketManager;->updateAppTaskInfo(Lcom/zeekrlife/market/update/AppTaskInfo;Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 113
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v3    # "task":Lcom/zeekrlife/market/task/ITaskInfo;
    .end local v4    # "taskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    goto :goto_0

    .line 117
    .end local v1    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/zeekrlife/market/task/ITaskInfo;>;"
    :cond_0
    goto :goto_1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ZKMarketManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppTaskInfoList exception ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;

    .line 100
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zeekrlife/market/update/MarketTaskManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;

    .line 58
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zeekrlife/market/update/MarketTaskManager;->init(Landroid/content/Context;Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;)V

    .line 60
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zeekrlife/market/update/MarketTaskManager;->registerTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z

    .line 62
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zeekrlife/market/update/MarketTaskManager;->registerArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z

    .line 63
    return-void
.end method

.method public onDownloadCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadCompleted() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 292
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_0

    .line 293
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 294
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 295
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 297
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    return-void
.end method

.method public onDownloadConnected(Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "soFarBytes"    # J
    .param p4, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadConnected() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], soFarBytes = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], totalBytes = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 261
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_0

    .line 262
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 263
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 264
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 266
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    return-void
.end method

.method public onDownloadError(Ljava/lang/String;I)V
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadError() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], errorCode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 318
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_1

    .line 319
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 320
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 321
    invoke-virtual {v1, p2}, Lcom/zeekrlife/market/update/AppTaskInfo;->setErrorCode(I)V

    .line 322
    const/16 v2, -0xd2

    if-ne p2, v2, :cond_0

    .line 323
    const-string v2, "ZKMarketManager"

    const-string v3, "onDownloadError() reason net error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;->setState(I)V

    .line 326
    :cond_0
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 328
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_1
    return-void
.end method

.method public onDownloadPaused(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadPaused() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 304
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_0

    .line 305
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 306
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 307
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 309
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    return-void
.end method

.method public onDownloadPending(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadPending() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 229
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_0

    .line 230
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 231
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 232
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 234
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    return-void
.end method

.method public onDownloadProgress(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "soFarBytes"    # J
    .param p4, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeekrlife/market/update/AppTaskInfo;

    .line 272
    .local v0, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    if-nez v0, :cond_1

    .line 273
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v1

    .line 274
    .local v1, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v1, :cond_0

    .line 275
    new-instance v2, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    move-object v0, v2

    .line 276
    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 277
    iget-object v2, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .end local v1    # "task":Lcom/zeekrlife/market/task/ITaskInfo;
    :cond_0
    goto :goto_0

    .line 280
    :cond_1
    const/4 v1, 0x3

    iput v1, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->status:I

    .line 281
    iput-wide p2, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->soFar:J

    .line 282
    iput-wide p4, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->total:J

    .line 284
    :goto_0
    invoke-direct {p0, v0}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 285
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadStarted() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 241
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_0

    .line 242
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 243
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 244
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 246
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    return-void
.end method

.method public onInstallCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallCompleted() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 381
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_0

    .line 382
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 383
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 384
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 386
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    return-void
.end method

.method public onInstallError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallError() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], errorCode = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 395
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_0

    .line 396
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 397
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 398
    invoke-virtual {v1, p2}, Lcom/zeekrlife/market/update/AppTaskInfo;->setErrorCode(I)V

    .line 399
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 401
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    return-void
.end method

.method public onInstallPending(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallPending() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 335
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_0

    .line 336
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 337
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 338
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 340
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    return-void
.end method

.method public onInstallProgress(Ljava/lang/String;F)V
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeekrlife/market/update/AppTaskInfo;

    .line 361
    .local v0, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    if-nez v0, :cond_1

    .line 362
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v1

    .line 363
    .local v1, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v1, :cond_0

    .line 364
    new-instance v2, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    move-object v0, v2

    .line 365
    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 367
    .end local v1    # "task":Lcom/zeekrlife/market/task/ITaskInfo;
    :cond_0
    goto :goto_0

    .line 368
    :cond_1
    const/16 v1, 0x66

    iput v1, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->status:I

    .line 369
    iput p2, v0, Lcom/zeekrlife/market/update/AppTaskInfo;->installProgress:F

    .line 371
    :goto_0
    invoke-direct {p0, v0}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 372
    return-void
.end method

.method public onInstallStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallStarted() called with: taskId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0

    .line 349
    .local v0, "task":Lcom/zeekrlife/market/task/ITaskInfo;
    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>(I)V

    .line 351
    .local v1, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-virtual {v1, v0}, Lcom/zeekrlife/market/update/AppTaskInfo;->setData(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 352
    invoke-direct {p0, v1}, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChanged(Lcom/zeekrlife/market/update/AppTaskInfo;)V

    .line 354
    .end local v1    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    return-void
.end method

.method public onTaskAdded(Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 4
    .param p1, "iTaskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    :try_start_0
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskCallback onTaskAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_0

    .line 195
    new-instance v0, Lcom/zeekrlife/market/update/AppTaskInfo;

    invoke-direct {v0}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>()V

    .line 196
    .local v0, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-direct {p0, v0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->updateAppTaskInfo(Lcom/zeekrlife/market/update/AppTaskInfo;Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 197
    iget-object v1, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;

    .line 198
    .local v2, "listener":Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;
    invoke-interface {v2, v0}, Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;->onAppTaskAdd(Lcom/zeekrlife/market/update/AppTaskInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2    # "listener":Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;
    goto :goto_0

    .line 204
    .end local v0    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const-string v1, "ZKMarketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taskCallback onTaskAdded exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onTaskRemoved(Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 4
    .param p1, "iTaskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    :try_start_0
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskCallback onTaskRemoved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz p1, :cond_0

    .line 212
    new-instance v0, Lcom/zeekrlife/market/update/AppTaskInfo;

    invoke-direct {v0}, Lcom/zeekrlife/market/update/AppTaskInfo;-><init>()V

    .line 213
    .local v0, "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    invoke-direct {p0, v0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->updateAppTaskInfo(Lcom/zeekrlife/market/update/AppTaskInfo;Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 214
    iget-object v1, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;

    .line 215
    .local v2, "listener":Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;
    invoke-interface {v2, v0}, Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;->onAppTaskRemove(Lcom/zeekrlife/market/update/AppTaskInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v2    # "listener":Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;
    goto :goto_0

    .line 221
    .end local v0    # "appTaskInfo":Lcom/zeekrlife/market/update/AppTaskInfo;
    :cond_0
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const-string v1, "ZKMarketManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taskCallback onTaskRemoved exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public pauseDownload(Ljava/lang/String;)Z
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;

    .line 413
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zeekrlife/market/update/MarketTaskManager;->pauseDownload(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 414
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 2

    .line 67
    const-string v0, "ZKMarketManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->release()V

    .line 69
    return-void
.end method

.method public removeDownload(Ljava/lang/String;)Z
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;

    .line 437
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zeekrlife/market/update/MarketTaskManager;->removeTask(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 438
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized removeTaskInfoChangedListener(Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/ZKMarketManager;->taskInfoChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    .end local p1    # "listener":Lcom/zeekrlife/market/update/ZKMarketManager$AppTaskInfoChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/zeekrlife/market/update/ZKMarketManager;
    throw p1
.end method

.method public resumeDownload(Ljava/lang/String;)Z
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;

    .line 425
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    const-string v0, "ZKMarketManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {}, Lcom/zeekrlife/market/update/MarketTaskManager;->getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/ZKMarketManager;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->addTask(Lcom/zeekrlife/market/task/ITaskInfo;)Z

    move-result v0

    return v0

    .line 426
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
