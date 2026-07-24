.class Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/v3/IMemberCenterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IMemberCenterService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;
    .end local p1    # "remote":Landroid/os/IBinder;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 318
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getGesturePwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 376
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 379
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    .end local p1    # "phone":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->getGesturePwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    return-object p1

    .line 382
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    nop

    .line 389
    return-object p1

    .line 386
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 327
    const-string v0, "ecarx.membercenter.service.IMemberCenterService"

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 421
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 423
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 424
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->getToken()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 424
    return-object v2

    .line 426
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    nop

    .line 433
    return-object v2

    .line 430
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw v2
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 442
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 444
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 445
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->getUserInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    return-object v2

    .line 447
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    nop

    .line 454
    return-object v2

    .line 451
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    throw v2
.end method

.method public getUserService()Lcom/ecarx/eas/sdk/v3/IUserService;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 533
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 535
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 536
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->getUserService()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 536
    return-object v2

    .line 538
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-object v2

    .line 542
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v2
.end method

.method public isApprove()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 335
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 337
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 338
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->isApprove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    return-void

    .line 341
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    return-void

    .line 344
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    throw v2
.end method

.method public isLogin()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 399
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 401
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 402
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->isLogin()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 402
    return v2

    .line 404
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    .line 408
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    nop

    .line 411
    return v4

    .line 408
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    throw v2
.end method

.method public refreshToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 462
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 465
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 466
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    .end local p1    # "token":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->refreshToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    return-void

    .line 469
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    return-void

    .line 472
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    throw p1
.end method

.method public registerListener(Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;)V
    .locals 5
    .param p1, "listener"    # Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 483
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 484
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 485
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 486
    if-nez v2, :cond_1

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 487
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    .end local p1    # "listener":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->registerListener(Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    return-void

    .line 490
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    return-void

    .line 493
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    throw p1
.end method

.method public setGesturePwd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 354
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 358
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 359
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    .end local p1    # "phone":Ljava/lang/String;
    .end local p2    # "pwd":Ljava/lang/String;
    invoke-interface {v2, p1, p2}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->setGesturePwd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    return-void

    .line 362
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 367
    return-void

    .line 365
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 367
    throw p1
.end method

.method public unregisterListener(Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;)V
    .locals 5
    .param p1, "listener"    # Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 507
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 508
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 509
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 510
    if-nez v2, :cond_1

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 511
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object v2

    .end local p1    # "listener":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->unregisterListener(Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    return-void

    .line 514
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 519
    throw p1
.end method
