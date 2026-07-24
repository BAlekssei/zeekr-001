.class public abstract Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub;
.super Landroid/os/Binder;
.source "IAvailableVersionCallback.java"

# interfaces
.implements Lcom/zeekrlife/market/update/IAvailableVersionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/IAvailableVersionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zeekrlife.market.update.IAvailableVersionCallback"

.field static final TRANSACTION_onAppAvailableVersion:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.zeekrlife.market.update.IAvailableVersionCallback"

    invoke-virtual {p0, p0, v0}, Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zeekrlife/market/update/IAvailableVersionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "com.zeekrlife.market.update.IAvailableVersionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zeekrlife/market/update/IAvailableVersionCallback;

    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    check-cast v1, Lcom/zeekrlife/market/update/IAvailableVersionCallback;

    return-object v1

    .line 41
    :cond_1
    new-instance v1, Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/zeekrlife/market/update/IAvailableVersionCallback;
    .locals 1

    .line 140
    sget-object v0, Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/update/IAvailableVersionCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/zeekrlife/market/update/IAvailableVersionCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/zeekrlife/market/update/IAvailableVersionCallback;

    .line 130
    sget-object v0, Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/update/IAvailableVersionCallback;

    if-nez v0, :cond_1

    .line 133
    if-eqz p0, :cond_0

    .line 134
    sput-object p0, Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub$Proxy;->sDefaultImpl:Lcom/zeekrlife/market/update/IAvailableVersionCallback;

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 45
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

    .line 49
    const-string v0, "com.zeekrlife.market.update.IAvailableVersionCallback"

    .line 50
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 54
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v1

    .line 59
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 63
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    sget-object v3, Lcom/zeekrlife/market/update/IAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zeekrlife/market/update/IAppInfo;

    .local v3, "_arg1":Lcom/zeekrlife/market/update/IAppInfo;
    goto :goto_1

    .line 67
    .end local v3    # "_arg1":Lcom/zeekrlife/market/update/IAppInfo;
    :cond_3
    const/4 v3, 0x0

    .line 69
    .restart local v3    # "_arg1":Lcom/zeekrlife/market/update/IAppInfo;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub;->onAppAvailableVersion(ZLcom/zeekrlife/market/update/IAppInfo;)Z

    move-result v4

    .line 70
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return v1
.end method
