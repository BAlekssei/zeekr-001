.class Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/sdk/smartscene/LaunchPad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/ecarx/sdk/smartscene/LaunchPad;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;
    .end local p1    # "remote":Landroid/os/IBinder;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 113
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public callbackServiceResult(Lcom/ecarx/sdk/smartscene/ServiceModel;)V
    .locals 5
    .param p1, "serviceModel"    # Lcom/ecarx/sdk/smartscene/ServiceModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 127
    :try_start_0
    const-string v2, "com.ecarx.sdk.smartscene.LaunchPad"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {p1, v0, v3}, Lcom/ecarx/sdk/smartscene/ServiceModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    :goto_0
    iget-object v4, p0, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;
    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 136
    if-nez v2, :cond_1

    invoke-static {}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/LaunchPad;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    invoke-static {}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/LaunchPad;

    move-result-object v2

    .end local p1    # "serviceModel":Lcom/ecarx/sdk/smartscene/ServiceModel;
    invoke-interface {v2, p1}, Lcom/ecarx/sdk/smartscene/LaunchPad;->callbackServiceResult(Lcom/ecarx/sdk/smartscene/ServiceModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    return-void

    .line 140
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    return-void

    .line 143
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "com.ecarx.sdk.smartscene.LaunchPad"

    return-object v0
.end method

.method public serviceExecuteError(ILcom/ecarx/sdk/smartscene/ServiceModel;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "serviceModel"    # Lcom/ecarx/sdk/smartscene/ServiceModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 171
    :try_start_0
    const-string v2, "com.ecarx.sdk.smartscene.LaunchPad"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 174
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {p2, v0, v2}, Lcom/ecarx/sdk/smartscene/ServiceModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    :goto_0
    iget-object v3, p0, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;
    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 181
    if-nez v2, :cond_1

    invoke-static {}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/LaunchPad;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    invoke-static {}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/LaunchPad;

    move-result-object v2

    .end local p1    # "errorCode":I
    .end local p2    # "serviceModel":Lcom/ecarx/sdk/smartscene/ServiceModel;
    invoke-interface {v2, p1, p2}, Lcom/ecarx/sdk/smartscene/LaunchPad;->serviceExecuteError(ILcom/ecarx/sdk/smartscene/ServiceModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    return-void

    .line 185
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    throw p1
.end method

.method public updateAbilityConfig(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 152
    :try_start_0
    const-string v2, "com.ecarx.sdk.smartscene.LaunchPad"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 155
    if-nez v2, :cond_0

    invoke-static {}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/LaunchPad;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 156
    invoke-static {}, Lcom/ecarx/sdk/smartscene/LaunchPad$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/LaunchPad;

    move-result-object v2

    .end local p1    # "jsonData":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/sdk/smartscene/LaunchPad;->updateAbilityConfig(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    return-void

    .line 159
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    return-void

    .line 162
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw p1
.end method
