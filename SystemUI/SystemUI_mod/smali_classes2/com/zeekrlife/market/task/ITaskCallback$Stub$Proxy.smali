.class Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITaskCallback.java"

# interfaces
.implements Lcom/zeekrlife/market/task/ITaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/task/ITaskCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/zeekrlife/market/task/ITaskCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 99
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "com.zeekrlife.market.task.ITaskCallback"

    return-object v0
.end method

.method public onTaskAdded(Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 5
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 113
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p1, v0, v3}, Lcom/zeekrlife/market/task/ITaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    :goto_0
    iget-object v4, p0, Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 122
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 123
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskCallback;->onTaskAdded(Lcom/zeekrlife/market/task/ITaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    return-void

    .line 126
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    nop

    .line 132
    return-void

    .line 129
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    throw v2
.end method

.method public onTaskRemoved(Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 5
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.zeekrlife.market.task.ITaskCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 140
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {p1, v0, v2}, Lcom/zeekrlife/market/task/ITaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    :goto_0
    iget-object v3, p0, Lcom/zeekrlife/market/task/ITaskCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 147
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 148
    invoke-static {}, Lcom/zeekrlife/market/task/ITaskCallback$Stub;->getDefaultImpl()Lcom/zeekrlife/market/task/ITaskCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/zeekrlife/market/task/ITaskCallback;->onTaskRemoved(Lcom/zeekrlife/market/task/ITaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    return-void

    .line 151
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw v2
.end method
