.class public Lcom/zeekrlife/market/update/MarketTaskManager$Connection;
.super Ljava/lang/Object;
.source "MarketTaskManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/MarketTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Connection"
.end annotation


# instance fields
.field private final onInitCallback:Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;

.field final synthetic this$0:Lcom/zeekrlife/market/update/MarketTaskManager;


# direct methods
.method public constructor <init>(Lcom/zeekrlife/market/update/MarketTaskManager;Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeekrlife/market/update/MarketTaskManager;
    .param p2, "onInitCallback"    # Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;

    .line 54
    iput-object p1, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->onInitCallback:Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;

    .line 56
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 60
    const-string v0, "MarketTaskManager"

    const-string v1, "taskService connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {p2}, Lcom/zeekrlife/market/task/ITaskService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$002(Lcom/zeekrlife/market/update/MarketTaskManager;Lcom/zeekrlife/market/task/ITaskService;)Lcom/zeekrlife/market/task/ITaskService;

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$000(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v0

    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$100(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/IArrangeCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zeekrlife/market/task/ITaskService;->registerArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z

    .line 66
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$000(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v0

    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$200(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/ITaskCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zeekrlife/market/task/ITaskService;->registerTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "MarketTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register arrangeCallback or taskCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->onInitCallback:Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->onInitCallback:Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/zeekrlife/market/update/MarketTaskManager$OnInitCallback;->onInit(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 78
    const-string v0, "MarketTaskManager"

    const-string v1, "taskService disconnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$000(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v0

    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$100(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/IArrangeCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zeekrlife/market/task/ITaskService;->unregisterArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z

    .line 82
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$000(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v0

    iget-object v1, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$200(Lcom/zeekrlife/market/update/MarketTaskManager;)Lcom/zeekrlife/market/task/ITaskCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zeekrlife/market/task/ITaskService;->unregisterTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "MarketTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister arrangeCallback or taskCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$Connection;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$002(Lcom/zeekrlife/market/update/MarketTaskManager;Lcom/zeekrlife/market/task/ITaskService;)Lcom/zeekrlife/market/task/ITaskService;

    .line 88
    return-void
.end method
