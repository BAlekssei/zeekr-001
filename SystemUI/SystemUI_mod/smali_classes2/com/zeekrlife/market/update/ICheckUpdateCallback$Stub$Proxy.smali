.class Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICheckUpdateCallback.java"

# interfaces
.implements Lcom/zeekrlife/market/update/ICheckUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/zeekrlife/market/update/ICheckUpdateCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 86
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "com.zeekrlife.market.update.ICheckUpdateCallback"

    return-object v0
.end method

.method public onAppUpdate(ZLcom/zeekrlife/market/update/IAppInfo;)Z
    .locals 6
    .param p1, "update"    # Z
    .param p2, "appInfo"    # Lcom/zeekrlife/market/update/IAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.update.ICheckUpdateCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p2, v0, v3}, Lcom/zeekrlife/market/update/IAppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_0
    iget-object v4, p0, Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 111
    .local v4, "_status":Z
    if-nez v4, :cond_1

    invoke-static {}, Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub;->getDefaultImpl()Lcom/zeekrlife/market/update/ICheckUpdateCallback;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 112
    invoke-static {}, Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub;->getDefaultImpl()Lcom/zeekrlife/market/update/ICheckUpdateCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/zeekrlife/market/update/ICheckUpdateCallback;->onAppUpdate(ZLcom/zeekrlife/market/update/IAppInfo;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    return v2

    .line 114
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 118
    .end local v4    # "_status":Z
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    nop

    .line 121
    return v2

    .line 118
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    throw v2
.end method
