.class public Lcom/zeekrlife/market/update/MarketTaskManager;
.super Lcom/zeekrlife/market/task/ITaskService$Stub;
.source "MarketTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;,
        Lcom/zeekrlife/market/update/MarketTaskManager$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketTaskManager"

.field private static volatile instance:Lcom/zeekrlife/market/update/MarketTaskManager;


# instance fields
.field private arrangeCallback:Lcom/zeekrlife/market/task/IArrangeCallback;

.field private arrangeCallbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zeekrlife/market/task/IArrangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private taskCallback:Lcom/zeekrlife/market/task/ITaskCallback;

.field private taskCallbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zeekrlife/market/task/ITaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field private taskService:Lcom/zeekrlife/market/task/ITaskService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/zeekrlife/market/task/ITaskService$Stub;-><init>()V

    .line 276
    new-instance v0, Lcom/zeekrlife/market/update/MarketTaskManager$1;

    invoke-direct {v0, p0}, Lcom/zeekrlife/market/update/MarketTaskManager$1;-><init>(Lcom/zeekrlife/market/update/MarketTaskManager;)V

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallback:Lcom/zeekrlife/market/task/ITaskCallback;

    .line 298
    new-instance v0, Lcom/zeekrlife/market/update/MarketTaskManager$2;

    invoke-direct {v0, p0}, Lcom/zeekrlife/market/update/MarketTaskManager$2;-><init>(Lcom/zeekrlife/market/update/MarketTaskManager;)V

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallback:Lcom/zeekrlife/market/task/IArrangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/ITaskService;
    .locals 1
    .param p0, "x0"    # Lcom/zeekrlife/market/update/MarketTaskManager;

    .line 24
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zeekrlife/market/update/MarketTaskManager;Lcom/zeekrlife/market/task/ITaskService;)Lcom/zeekrlife/market/task/ITaskService;
    .locals 0
    .param p0, "x0"    # Lcom/zeekrlife/market/update/MarketTaskManager;
    .param p1, "x1"    # Lcom/zeekrlife/market/task/ITaskService;

    .line 24
    iput-object p1, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/IArrangeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/zeekrlife/market/update/MarketTaskManager;

    .line 24
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallback:Lcom/zeekrlife/market/task/IArrangeCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/ITaskCallback;
    .locals 1
    .param p0, "x0"    # Lcom/zeekrlife/market/update/MarketTaskManager;

    .line 24
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallback:Lcom/zeekrlife/market/task/ITaskCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/zeekrlife/market/update/MarketTaskManager;

    .line 24
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/zeekrlife/market/update/MarketTaskManager;

    .line 24
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    return-object v0
.end method

.method private checkServiceAvailable()Z
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/zeekrlife/market/update/MarketTaskManager;->ensureServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "MarketTaskManager"

    const-string v1, "taskService is unavailable reInit!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->init(Landroid/content/Context;Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;)V

    .line 146
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/zeekrlife/market/update/MarketTaskManager;
    .locals 2

    .line 40
    sget-object v0, Lcom/zeekrlife/market/update/MarketTaskManager;->instance:Lcom/zeekrlife/market/update/MarketTaskManager;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/zeekrlife/market/update/MarketTaskManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/zeekrlife/market/update/MarketTaskManager;->instance:Lcom/zeekrlife/market/update/MarketTaskManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-direct {v1}, Lcom/zeekrlife/market/update/MarketTaskManager;-><init>()V

    sput-object v1, Lcom/zeekrlife/market/update/MarketTaskManager;->instance:Lcom/zeekrlife/market/update/MarketTaskManager;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/zeekrlife/market/update/MarketTaskManager;->instance:Lcom/zeekrlife/market/update/MarketTaskManager;

    return-object v0
.end method


# virtual methods
.method public addTask(Lcom/zeekrlife/market/task/ITaskInfo;)Z
    .locals 4
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;

    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/zeekrlife/market/update/MarketTaskManager;->checkServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    invoke-interface {v0, p1}, Lcom/zeekrlife/market/task/ITaskService;->addTask(Lcom/zeekrlife/market/task/ITaskInfo;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 183
    :cond_0
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "MarketTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public ensureServiceAvailable()Z
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 257
    const-string v0, "MarketTaskManager"

    const-string v2, "service = null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    invoke-interface {v0}, Lcom/zeekrlife/market/task/ITaskService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 261
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 262
    const-string v2, "MarketTaskManager"

    const-string v3, "service.getBinder() = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v1

    .line 265
    :cond_1
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 266
    const-string v2, "MarketTaskManager"

    const-string v3, "service.getBinder().isBinderAlive() = false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v1

    .line 269
    :cond_2
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_3

    .line 270
    const-string v2, "MarketTaskManager"

    const-string v3, "service.getBinder().pingBinder() = false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v1

    .line 273
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;

    .line 166
    :try_start_0
    invoke-direct {p0}, Lcom/zeekrlife/market/update/MarketTaskManager;->checkServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    invoke-interface {v0, p1}, Lcom/zeekrlife/market/task/ITaskService;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 171
    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "MarketTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zeekrlife/market/task/ITaskInfo;",
            ">;"
        }
    .end annotation

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/zeekrlife/market/update/MarketTaskManager;->checkServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    invoke-interface {v0}, Lcom/zeekrlife/market/task/ITaskService;->getTaskList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :cond_0
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "MarketTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    .line 99
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->context:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;

    invoke-direct {v0, p0, p2}, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;-><init>(Lcom/zeekrlife/market/update/MarketTaskManager;Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;)V

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 104
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->intent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->intent:Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->intent:Landroid/content/Intent;

    const-string v1, "com.zeekrlife.market"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->intent:Landroid/content/Intent;

    const-string v1, "zeekrlife.intent.action.APPSTORE_TASK_SERVICE_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 111
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "MarketTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind taskService:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_3

    .line 117
    const-string v0, "MarketTaskManager"

    const-string v2, "bind taskService success!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    :cond_3
    const-string v2, "MarketTaskManager"

    const-string v3, "bind taskService failure!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p2, :cond_4

    .line 121
    invoke-interface {p2, v0}, Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;->onInit(Z)V

    .line 124
    :cond_4
    :goto_1
    return-void
.end method

.method public pauseDownload(Ljava/lang/String;)Z
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/zeekrlife/market/update/MarketTaskManager;->checkServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    invoke-interface {v0, p1}, Lcom/zeekrlife/market/task/ITaskService;->pauseDownload(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 223
    :cond_0
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "MarketTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 241
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 242
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/zeekrlife/market/task/ITaskCallback;

    .line 201
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 202
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->context:Landroid/content/Context;

    .line 131
    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 132
    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 134
    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 138
    iput-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    .line 140
    :cond_2
    return-void
.end method

.method public removeTask(Ljava/lang/String;)Z
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;

    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/zeekrlife/market/update/MarketTaskManager;->checkServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    invoke-interface {v0, p1}, Lcom/zeekrlife/market/task/ITaskService;->removeTask(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 195
    :cond_0
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "MarketTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public resumeDownload(Ljava/lang/String;)Z
    .locals 4
    .param p1, "taskId"    # Ljava/lang/String;

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/zeekrlife/market/update/MarketTaskManager;->checkServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskService:Lcom/zeekrlife/market/task/ITaskService;

    invoke-interface {v0, p1}, Lcom/zeekrlife/market/task/ITaskService;->resumeDownload(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 235
    :cond_0
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "MarketTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeDownload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 249
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->arrangeCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 250
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/zeekrlife/market/task/ITaskCallback;

    .line 209
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager;->taskCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 210
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
