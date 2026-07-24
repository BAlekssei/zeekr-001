.class Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;
    .end local p1    # "remote":Landroid/os/IBinder;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    .line 68
    return-void
.end method


# virtual methods
.method public addRemoteServiceCallback(Lcom/ecarx/eas/framework/sdk/common/internal/IConnectCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/ecarx/eas/framework/sdk/common/internal/IConnectCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 96
    :try_start_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    if-eqz p1, :cond_0

    .end local p1    # "callback":Lcom/ecarx/eas/framework/sdk/common/internal/IConnectCallback;
    invoke-interface {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IConnectCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 98
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    nop

    .line 103
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    nop

    .line 106
    return v3

    .line 103
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public asyncBinderCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    .locals 4
    .param p1, "msg"    # Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .param p2, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 197
    :try_start_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 199
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    nop

    .end local p1    # "msg":Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    invoke-virtual {p1, v0, v2}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 206
    .end local p2    # "callback":Landroid/os/IBinder;
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    sget-object p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 213
    :cond_1
    const/4 p1, 0x0

    .line 217
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    nop

    .line 220
    return-object p1

    .line 217
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw p1
.end method

.method public asyncCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkCallback;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    .locals 4
    .param p1, "msg"    # Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .param p2, "callback"    # Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    :try_start_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 167
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    nop

    .end local p1    # "msg":Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    invoke-virtual {p1, v0, v2}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .end local p2    # "callback":Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkCallback;
    invoke-interface {p2}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 174
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p2, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    .line 178
    sget-object p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 181
    :cond_2
    nop

    .line 185
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    nop

    .line 188
    return-object p1

    .line 185
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw p1
.end method

.method public call(Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    .locals 4
    .param p1, "msg"    # Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    :try_start_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 136
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    nop

    .end local p1    # "msg":Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    invoke-virtual {p1, v0, v2}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;
    const/4 v3, 0x4

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    sget-object p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 149
    :cond_1
    const/4 p1, 0x0

    .line 153
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    nop

    .line 156
    return-object p1

    .line 153
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    throw p1
.end method

.method public getAvailableEASServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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

    .line 271
    :try_start_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    nop

    .line 281
    return-object v2

    .line 278
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw v2
.end method

.method public getAvailableServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 229
    :try_start_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    nop

    .line 239
    return-object v2

    .line 236
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v2
.end method

.method public getService(IILjava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "pakageName"    # Ljava/lang/String;
    .param p4, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 248
    :try_start_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    nop

    .end local p1    # "pid":I
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    nop

    .end local p2    # "uid":I
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    nop

    .end local p3    # "pakageName":Ljava/lang/String;
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    nop

    .end local p4    # "serviceName":Ljava/lang/String;
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0x8

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    nop

    .line 262
    return-object p1

    .line 259
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    throw p1
.end method

.method public init([Ljava/lang/String;)V
    .locals 4
    .param p1, "services"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 79
    :try_start_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    nop

    .end local p1    # "services":[Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 81
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    throw p1
.end method

.method public removeRemoteServiceCallback(Lcom/ecarx/eas/framework/sdk/common/internal/IConnectCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/ecarx/eas/framework/sdk/common/internal/IConnectCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 115
    :try_start_0
    sget-object v2, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    if-eqz p1, :cond_0

    .end local p1    # "callback":Lcom/ecarx/eas/framework/sdk/common/internal/IConnectCallback;
    invoke-interface {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IConnectCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 117
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    nop

    .line 122
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    nop

    .line 125
    return v3

    .line 122
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw p1
.end method
