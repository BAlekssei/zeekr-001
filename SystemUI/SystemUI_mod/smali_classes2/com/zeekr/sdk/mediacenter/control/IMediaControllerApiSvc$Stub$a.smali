.class final Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;
.super Ljava/lang/Object;
.source "IMediaControllerApiSvc.java"

# interfaces
.implements Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static b:Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getMediaContentTypeList(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;",
            ")",
            "Ljava/util/List<",
            "Lcom/zeekr/sdk/mediacenter/bean/IMediaContentType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->getMediaContentTypeList(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18
    sget-object p1, Lcom/zeekr/sdk/mediacenter/bean/IMediaContentType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    throw p1
.end method

.method public final getMediaList(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;",
            ")",
            "Ljava/util/List<",
            "Lcom/zeekr/sdk/mediacenter/bean/IMedia;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->getMediaList(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18
    sget-object p1, Lcom/zeekr/sdk/mediacenter/bean/IMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    throw p1
.end method

.method public final getMusicPlaybackInfo(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Lcom/zeekr/sdk/mediacenter/IMusicPlaybackInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->getMusicPlaybackInfo(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Lcom/zeekr/sdk/mediacenter/IMusicPlaybackInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zeekr/sdk/mediacenter/IMusicPlaybackInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekr/sdk/mediacenter/IMusicPlaybackInfo;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    throw p1
.end method

.method public final getSourceType(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->getSourceType(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    throw p1
.end method

.method public final pause(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->pause(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 21
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    throw p1
.end method

.method public final play(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->play(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 23
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    throw p1
.end method

.method public final playCtlPlay(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->playCtlPlay(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 23
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    throw p1
.end method

.method public final playCtrlPause(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->playCtrlPause(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 18
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 22
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 26
    throw p1
.end method

.method public final playCtrlPlayByContent(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->playCtrlPlayByContent(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 20
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 23
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    throw p1
.end method

.method public final register(Ljava/lang/String;Lcom/zeekr/sdk/mediacenter/control/IMediaController;)Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->register(Ljava/lang/String;Lcom/zeekr/sdk/mediacenter/control/IMediaController;)Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 18
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 26
    throw p1
.end method

.method public final requestControl(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->requestControl(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 21
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    throw p1
.end method

.method public final resume(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->resume(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 21
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    throw p1
.end method

.method public final unregister(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5
    :try_start_0
    const-string v2, "com.zeekr.sdk.mediacenter.control.IMediaControllerApiSvc"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 7
    iget-object v2, p0, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc$Stub;->getDefaultImpl()Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/zeekr/sdk/mediacenter/control/IMediaControllerApiSvc;->unregister(Lcom/zeekr/sdk/mediacenter/control/IMediaControllerToken;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    nop

    .line 21
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    throw p1
.end method
