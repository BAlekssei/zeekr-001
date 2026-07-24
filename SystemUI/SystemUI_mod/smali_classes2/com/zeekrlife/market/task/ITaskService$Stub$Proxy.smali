.class Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITaskService.java"

# interfaces
.implements Lcom/zeekrlife/market/task/ITaskService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/task/ITaskService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/zeekrlife/market/task/ITaskService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 214
    return-void
.end method


# virtual methods
.method public addTask(Lcom/zeekrlife/market/task/ITaskInfo;)Z
    .locals 6
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {p1, v0, v3}, Lcom/zeekrlife/market/task/ITaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    :goto_0
    iget-object v4, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 284
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 285
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekrlife/market/task/ITaskService;->addTask(Lcom/zeekrlife/market/task/ITaskInfo;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 285
    return v2

    .line 287
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 291
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    nop

    .line 294
    return v2

    .line 291
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 221
    const-string v0, "com.zeekrlife.market.task.ITaskService"

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;
    .locals 5
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 252
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 253
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskService;->getTask(Ljava/lang/String;)Lcom/zeekrlife/market/task/ITaskInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    return-object v3

    .line 255
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    sget-object v3, Lcom/zeekrlife/market/task/ITaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zeekrlife/market/task/ITaskInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/zeekrlife/market/task/ITaskInfo;
    goto :goto_0

    .line 260
    .end local v3    # "_result":Lcom/zeekrlife/market/task/ITaskInfo;
    :cond_1
    const/4 v3, 0x0

    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/zeekrlife/market/task/ITaskInfo;
    :goto_0
    move-object v2, v3

    .line 264
    .end local v3    # "_result":Lcom/zeekrlife/market/task/ITaskInfo;
    .local v2, "_result":Lcom/zeekrlife/market/task/ITaskInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    nop

    .line 267
    return-object v2

    .line 264
    .end local v2    # "_result":Lcom/zeekrlife/market/task/ITaskInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw v2
.end method

.method public getTaskList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zeekrlife/market/task/ITaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 231
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 232
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    invoke-interface {v3}, Lcom/zeekrlife/market/task/ITaskService;->getTaskList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    return-object v3

    .line 234
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 235
    sget-object v3, Lcom/zeekrlife/market/task/ITaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "_status":Z
    move-object v2, v3

    .line 238
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/zeekrlife/market/task/ITaskInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    nop

    .line 241
    return-object v2

    .line 238
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/zeekrlife/market/task/ITaskInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    throw v2
.end method

.method public pauseDownload(Ljava/lang/String;)Z
    .locals 5
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 368
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 369
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskService;->pauseDownload(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    return v3

    .line 371
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 375
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    nop

    .line 378
    return v2

    .line 375
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw v2
.end method

.method public registerArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/zeekrlife/market/task/IArrangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 407
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zeekrlife/market/task/IArrangeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 409
    iget-object v2, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 410
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 411
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskService;->registerArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    return v3

    .line 413
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_2
    move v2, v4

    .line 417
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    nop

    .line 420
    return v2

    .line 417
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    throw v2
.end method

.method public registerTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/zeekrlife/market/task/ITaskCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 323
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zeekrlife/market/task/ITaskCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 325
    iget-object v2, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 326
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 327
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskService;->registerTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    return v3

    .line 329
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 330
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_2
    move v2, v4

    .line 333
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    nop

    .line 336
    return v2

    .line 333
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    throw v2
.end method

.method public removeTask(Ljava/lang/String;)Z
    .locals 5
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 305
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 306
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskService;->removeTask(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    return v3

    .line 308
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 312
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    nop

    .line 315
    return v2

    .line 312
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v2
.end method

.method public resumeDownload(Ljava/lang/String;)Z
    .locals 5
    .param p1, "taskId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 389
    .local v2, "_status":Z
    if-nez v2, :cond_0

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 390
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskService;->resumeDownload(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    return v3

    .line 392
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_1
    move v2, v4

    .line 396
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    nop

    .line 399
    return v2

    .line 396
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    throw v2
.end method

.method public unregisterArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/zeekrlife/market/task/IArrangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zeekrlife/market/task/IArrangeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 430
    iget-object v2, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 431
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 432
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskService;->unregisterArrangeCallback(Lcom/zeekrlife/market/task/IArrangeCallback;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    return v3

    .line 434
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_2
    move v2, v4

    .line 438
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    nop

    .line 441
    return v2

    .line 438
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    throw v2
.end method

.method public unregisterTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/zeekrlife/market/task/ITaskCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 345
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zeekrlife/market/task/ITaskCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 346
    iget-object v2, p0, Lcom/zeekrlife/market/task/ITaskService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 347
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 348
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskService$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskService;->unregisterTaskCallback(Lcom/zeekrlife/market/task/ITaskCallback;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    return v3

    .line 350
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    nop

    .end local v2    # "_status":Z
    :cond_2
    move v2, v4

    .line 354
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    nop

    .line 357
    return v2

    .line 354
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    throw v2
.end method
