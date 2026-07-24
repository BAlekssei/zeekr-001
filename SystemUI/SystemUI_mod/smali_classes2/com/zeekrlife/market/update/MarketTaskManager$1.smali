.class Lcom/zeekrlife/market/update/MarketTaskManager$1;
.super Lcom/zeekrlife/market/task/ITaskCallback$Stub;
.source "MarketTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/MarketTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeekrlife/market/update/MarketTaskManager;


# direct methods
.method constructor <init>(Lcom/zeekrlife/market/update/MarketTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeekrlife/market/update/MarketTaskManager;

    .line 276
    iput-object p1, p0, Lcom/zeekrlife/market/update/MarketTaskManager$1;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-direct {p0}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskAdded(Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$1;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$300(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$1;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$300(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/ITaskCallback;

    .line 283
    .local v1, "callback":Lcom/zeekrlife/market/task/ITaskCallback;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/task/ITaskCallback;->onTaskAdded(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 284
    .end local v1    # "callback":Lcom/zeekrlife/market/task/ITaskCallback;
    goto :goto_0

    .line 285
    :cond_1
    return-void
.end method

.method public onTaskRemoved(Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$1;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$300(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$1;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$300(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/ITaskCallback;

    .line 293
    .local v1, "callback":Lcom/zeekrlife/market/task/ITaskCallback;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/task/ITaskCallback;->onTaskRemoved(Lcom/zeekrlife/market/task/ITaskInfo;)V

    .line 294
    .end local v1    # "callback":Lcom/zeekrlife/market/task/ITaskCallback;
    goto :goto_0

    .line 295
    :cond_1
    return-void
.end method
