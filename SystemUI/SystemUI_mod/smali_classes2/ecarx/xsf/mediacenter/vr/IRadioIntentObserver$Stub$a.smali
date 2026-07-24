.class final Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub$a;
.super Ljava/lang/Object;
.source "IRadioIntentObserver.java"

# interfaces
.implements Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static b:Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final handleCtrlApp(I)Z
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
    const-string v2, "ecarx.xsf.mediacenter.vr.IRadioIntentObserver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub;->getDefaultImpl()Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-static {}, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub;->getDefaultImpl()Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;

    move-result-object v2

    invoke-interface {v2, p1}, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;->handleCtrlApp(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    nop

    .line 21
    :cond_1
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

.method public final handleCtrlMediaClient(II)Z
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
    const-string v2, "ecarx.xsf.mediacenter.vr.IRadioIntentObserver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-static {}, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub;->getDefaultImpl()Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-static {}, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub;->getDefaultImpl()Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;->handleCtrlMediaClient(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 17
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 18
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    nop

    .line 22
    :cond_1
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

.method public final handlePlayRadio(Lecarx/xsf/mediacenter/vr/QRadioResult;)Z
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
    const-string v2, "ecarx.xsf.mediacenter.vr.IRadioIntentObserver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {p1, v0, v3}, Lecarx/xsf/mediacenter/vr/QRadioResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    :goto_0
    iget-object v4, p0, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub$a;->a:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    invoke-static {}, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub;->getDefaultImpl()Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 15
    invoke-static {}, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver$Stub;->getDefaultImpl()Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;

    move-result-object v2

    invoke-interface {v2, p1}, Lecarx/xsf/mediacenter/vr/IRadioIntentObserver;->handlePlayRadio(Lecarx/xsf/mediacenter/vr/QRadioResult;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 23
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    .line 27
    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    throw p1
.end method
