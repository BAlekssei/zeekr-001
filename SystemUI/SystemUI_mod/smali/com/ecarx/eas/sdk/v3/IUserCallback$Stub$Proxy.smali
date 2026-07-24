.class Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/v3/IUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/ecarx/eas/sdk/v3/IUserCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;
    .end local p1    # "remote":Landroid/os/IBinder;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 179
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 188
    const-string v0, "com.ecarx.user.IUserCallback"

    return-object v0
.end method

.method public onLogin()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    :try_start_0
    const-string v2, "com.ecarx.user.IUserCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 201
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IUserCallback;->onLogin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    return-void

    .line 205
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    return-void

    .line 208
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    throw v2
.end method

.method public onLogout()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    :try_start_0
    const-string v2, "com.ecarx.user.IUserCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 223
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/eas/sdk/v3/IUserCallback;->onLogout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    return-void

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw v2
.end method

.method public onTokenChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 245
    :try_start_0
    const-string v2, "com.ecarx.user.IUserCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 248
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 249
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object v2

    .end local p1    # "token":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IUserCallback;->onTokenChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    return-void

    .line 252
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw p1
.end method

.method public onUserInfoChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "userInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 270
    :try_start_0
    const-string v2, "com.ecarx.user.IUserCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 273
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    invoke-static {}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->getDefaultImpl()Lcom/ecarx/eas/sdk/v3/IUserCallback;

    move-result-object v2

    .end local p1    # "userInfo":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IUserCallback;->onUserInfoChanged(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    return-void

    .line 277
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    return-void

    .line 280
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw p1
.end method
