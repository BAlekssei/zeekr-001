.class Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    .end local p1    # "remote":Landroid/os/IBinder;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 251
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 260
    const-string v0, "ecarx.membercenter.service.IMemberCenterCallback"

    return-object v0
.end method

.method public onApproveFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 371
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 372
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    .end local p1    # "msg":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->onApproveFail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    return-void

    .line 375
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    return-void

    .line 378
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    throw p1
.end method

.method public onApproveSuccess(I)V
    .locals 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 348
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 351
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    .end local p1    # "status":I
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->onApproveSuccess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    return-void

    .line 355
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    return-void

    .line 358
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    throw p1
.end method

.method public onLoginFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 288
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 291
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 292
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    .end local p1    # "msg":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->onLoginFail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    return-void

    .line 295
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    return-void

    .line 298
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw p1
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 268
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 271
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 272
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    .end local p1    # "msg":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->onLoginSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    return-void

    .line 275
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    return-void

    .line 278
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw p1
.end method

.method public onLogoutFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 328
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 331
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 332
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    .end local p1    # "msg":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->onLogoutFail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    return-void

    .line 335
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    return-void

    .line 338
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw p1
.end method

.method public onLogoutSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 308
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 311
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 312
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    .end local p1    # "msg":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->onLogoutSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    return-void

    .line 315
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    return-void

    .line 318
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw p1
.end method

.method public onRefreshTokenError(Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 408
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 411
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 412
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    .end local p1    # "error":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->onRefreshTokenError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    return-void

    .line 415
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 420
    return-void

    .line 418
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 420
    throw p1
.end method

.method public onRefreshTokenSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 388
    :try_start_0
    const-string v2, "ecarx.membercenter.service.IMemberCenterCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 391
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 392
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    move-result-object v2

    .end local p1    # "token":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;->onRefreshTokenSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    return-void

    .line 395
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    return-void

    .line 398
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw p1
.end method
