.class public abstract Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub;
.super Landroid/os/Binder;
.source "IAppCheckUpdater.java"

# interfaces
.implements Lcom/zeekrlife/market/update/IAppCheckUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/IAppCheckUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zeekrlife.market.update.IAppCheckUpdater"

.field static final TRANSACTION_checkAppUpdate:I = 0x1

.field static final TRANSACTION_hasAvailableVersion:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.zeekrlife.market.update.IAppCheckUpdater"

    invoke-virtual {p0, p0, v0}, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/update/IAppCheckUpdater;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.zeekrlife.market.update.IAppCheckUpdater"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zeekrlife/market/update/IAppCheckUpdater;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/zeekrlife/market/update/IAppCheckUpdater;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/zeekrlife/market/update/IAppCheckUpdater;
    .locals 1

    .line 168
    sget-object v0, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/update/IAppCheckUpdater;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zeekrlife/market/update/IAppCheckUpdater;)Z
    .locals 2
    .param p0, "impl"    # Lcom/zeekrlife/market/update/IAppCheckUpdater;

    .line 158
    sget-object v0, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/update/IAppCheckUpdater;

    if-nez v0, :cond_1

    .line 161
    if-eqz p0, :cond_0

    .line 162
    sput-object p0, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/update/IAppCheckUpdater;

    .line 163
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-string v0, "com.zeekrlife.market.update.IAppCheckUpdater"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 75
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/update/IAvailableVersionCallback;

    move-result-object v3

    .line 80
    .local v3, "_arg1":Lcom/zeekrlife/market/update/IAvailableVersionCallback;
    invoke-virtual {p0, v1, v3}, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub;->hasAvailableVersion(Ljava/lang/String;Lcom/zeekrlife/market/update/IAvailableVersionCallback;)Z

    move-result v4

    .line 81
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v2

    .line 63
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/zeekrlife/market/update/IAvailableVersionCallback;
    .end local v4    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/update/ICheckUpdateCallback;

    move-result-object v3

    .line 68
    .local v3, "_arg1":Lcom/zeekrlife/market/update/ICheckUpdateCallback;
    invoke-virtual {p0, v1, v3}, Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub;->checkAppUpdate(Ljava/lang/String;Lcom/zeekrlife/market/update/ICheckUpdateCallback;)Z

    move-result v4

    .line 69
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v2

    .line 58
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/zeekrlife/market/update/ICheckUpdateCallback;
    .end local v4    # "_result":Z
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
