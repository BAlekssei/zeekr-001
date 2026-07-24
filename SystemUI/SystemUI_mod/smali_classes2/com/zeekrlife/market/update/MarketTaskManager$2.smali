.class Lcom/zeekrlife/market/update/MarketTaskManager$2;
.super Lcom/zeekrlife/market/task/IArrangeCallback$Stub;
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

    .line 298
    iput-object p1, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-direct {p0}, Lcom/zeekrlife/market/task/IArrangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 345
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/task/IArrangeCallback;->onDownloadCompleted(Ljava/lang/String;)V

    .line 346
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 347
    :cond_1
    return-void
.end method

.method public onDownloadConnected(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "soFarBytes"    # J
    .param p4, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 325
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    move-object v2, v1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/zeekrlife/market/task/IArrangeCallback;->onDownloadConnected(Ljava/lang/String;JJ)V

    .line 326
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 327
    :cond_1
    return-void
.end method

.method public onDownloadError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 365
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1, p2}, Lcom/zeekrlife/market/task/IArrangeCallback;->onDownloadError(Ljava/lang/String;I)V

    .line 366
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 367
    :cond_1
    return-void
.end method

.method public onDownloadPaused(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 352
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 355
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/task/IArrangeCallback;->onDownloadPaused(Ljava/lang/String;)V

    .line 356
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 357
    :cond_1
    return-void
.end method

.method public onDownloadPending(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 305
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/task/IArrangeCallback;->onDownloadPending(Ljava/lang/String;)V

    .line 306
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 307
    :cond_1
    return-void
.end method

.method public onDownloadProgress(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "soFarBytes"    # J
    .param p4, "totalBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 335
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    move-object v2, v1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/zeekrlife/market/task/IArrangeCallback;->onDownloadProgress(Ljava/lang/String;JJ)V

    .line 336
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 337
    :cond_1
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 315
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/task/IArrangeCallback;->onDownloadStarted(Ljava/lang/String;)V

    .line 316
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 317
    :cond_1
    return-void
.end method

.method public onInstallCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 405
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/task/IArrangeCallback;->onInstallCompleted(Ljava/lang/String;)V

    .line 406
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 407
    :cond_1
    return-void
.end method

.method public onInstallError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 415
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1, p2}, Lcom/zeekrlife/market/task/IArrangeCallback;->onInstallError(Ljava/lang/String;I)V

    .line 416
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method public onInstallPending(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 375
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/task/IArrangeCallback;->onInstallPending(Ljava/lang/String;)V

    .line 376
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 377
    :cond_1
    return-void
.end method

.method public onInstallProgress(Ljava/lang/String;F)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 395
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1, p2}, Lcom/zeekrlife/market/task/IArrangeCallback;->onInstallProgress(Ljava/lang/String;F)V

    .line 396
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 397
    :cond_1
    return-void
.end method

.method public onInstallStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 382
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/zeekrlife/market/update/MarketTaskManager$2;->this$0:Lcom/zeekrlife/market/update/MarketTaskManager;

    invoke-static {v0}, Lcom/zeekrlife/market/update/MarketTaskManager;->access$400(Lcom/zeekrlife/market/update/MarketTaskManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/task/IArrangeCallback;

    .line 385
    .local v1, "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    invoke-interface {v1, p1}, Lcom/zeekrlife/market/task/IArrangeCallback;->onInstallStarted(Ljava/lang/String;)V

    .line 386
    .end local v1    # "callback":Lcom/zeekrlife/market/task/IArrangeCallback;
    goto :goto_0

    .line 387
    :cond_1
    return-void
.end method
