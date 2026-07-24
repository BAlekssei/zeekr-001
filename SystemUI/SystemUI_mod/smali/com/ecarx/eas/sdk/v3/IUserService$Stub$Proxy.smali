.class Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/v3/IUserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/v3/IUserService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IUserService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;
    .end local p1    # "remote":Landroid/os/IBinder;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 321
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 330
    const-string v0, "com.ecarx.user.IUserService"

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 366
    :try_start_0
    const-string v2, "com.ecarx.user.IUserService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 368
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 369
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IUserService;->getToken()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    return-object v2

    .line 371
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    nop

    .line 378
    return-object v2

    .line 375
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw v2
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 390
    :try_start_0
    const-string v2, "com.ecarx.user.IUserService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 392
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IUserService;->getUserInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    return-object v2

    .line 395
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    nop

    .line 402
    return-object v2

    .line 399
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v2
.end method

.method public hasLogin()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 342
    :try_start_0
    const-string v2, "com.ecarx.user.IUserService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 344
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 345
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    return v2

    .line 347
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 351
    move v3, v4

    goto :goto_0

    .line 348
    :cond_1
    nop

    .line 351
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    nop

    .line 354
    return v3

    .line 351
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    throw v2
.end method

.method public login(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    :try_start_0
    const-string v2, "com.ecarx.user.IUserService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 420
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 421
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    .end local p1    # "params":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IUserService;->login(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    return-object p1

    .line 423
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    nop

    .line 430
    return-object p1

    .line 427
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    throw p1
.end method

.method public logout()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 444
    :try_start_0
    const-string v2, "com.ecarx.user.IUserService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 446
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 447
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IUserService;->logout()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 447
    return v2

    .line 449
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    nop

    .line 453
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    nop

    .line 456
    return v4

    .line 453
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    throw v2
.end method

.method public refreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 471
    :try_start_0
    const-string v2, "com.ecarx.user.IUserService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 474
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 475
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    .end local p1    # "token":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IUserService;->refreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 475
    return-object p1

    .line 477
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    nop

    .line 484
    return-object p1

    .line 481
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    throw p1
.end method

.method public refreshUserInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 498
    :try_start_0
    const-string v2, "com.ecarx.user.IUserService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 499
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 500
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 501
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IUserService;->refreshUserInfo()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    return-object v2

    .line 503
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 509
    nop

    .line 510
    return-object v2

    .line 507
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 509
    throw v2
.end method

.method public registerCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/v3/IUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 525
    :try_start_0
    const-string v2, "com.ecarx.user.IUserService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 526
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ecarx/eas/sdk/v3/IUserCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 527
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 528
    if-nez v2, :cond_1

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 529
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/v3/IUserCallback;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IUserService;->registerCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    return p1

    .line 531
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 535
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    nop

    .line 538
    return v4

    .line 535
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 537
    throw p1
.end method

.method public unregisterCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z
    .locals 5
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/v3/IUserCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 553
    :try_start_0
    const-string v2, "com.ecarx.user.IUserService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 554
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ecarx/eas/sdk/v3/IUserCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 555
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 556
    if-nez v2, :cond_1

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 557
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserService$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v2

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/v3/IUserCallback;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IUserService;->unregisterCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    return p1

    .line 559
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 563
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    nop

    .line 566
    return v4

    .line 563
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    throw p1
.end method
