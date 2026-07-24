.class Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;
    .end local p1    # "remote":Landroid/os/IBinder;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 108
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "com.ecarx.sdk.smartscene.IAbilityCollectorService"

    return-object v0
.end method

.method public onCallService(Lcom/ecarx/sdk/smartscene/ServiceModel;)V
    .locals 5
    .param p1, "serviceModel"    # Lcom/ecarx/sdk/smartscene/ServiceModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 160
    :try_start_0
    const-string v2, "com.ecarx.sdk.smartscene.IAbilityCollectorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 162
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {p1, v0, v2}, Lcom/ecarx/sdk/smartscene/ServiceModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    :goto_0
    iget-object v3, p0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;
    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 169
    if-nez v2, :cond_1

    invoke-static {}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 170
    invoke-static {}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    move-result-object v2

    .end local p1    # "serviceModel":Lcom/ecarx/sdk/smartscene/ServiceModel;
    invoke-interface {v2, p1}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;->onCallService(Lcom/ecarx/sdk/smartscene/ServiceModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    return-void

    .line 173
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw p1
.end method

.method public register(Lcom/ecarx/sdk/smartscene/LaunchPad;)V
    .locals 5
    .param p1, "launchPad"    # Lcom/ecarx/sdk/smartscene/LaunchPad;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 122
    :try_start_0
    const-string v2, "com.ecarx.sdk.smartscene.IAbilityCollectorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ecarx/sdk/smartscene/LaunchPad;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 124
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 125
    if-nez v2, :cond_1

    invoke-static {}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 126
    invoke-static {}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    move-result-object v2

    .end local p1    # "launchPad":Lcom/ecarx/sdk/smartscene/LaunchPad;
    invoke-interface {v2, p1}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;->register(Lcom/ecarx/sdk/smartscene/LaunchPad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 129
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    throw p1
.end method

.method public unregister(Lcom/ecarx/sdk/smartscene/LaunchPad;)V
    .locals 5
    .param p1, "launchPad"    # Lcom/ecarx/sdk/smartscene/LaunchPad;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 141
    :try_start_0
    const-string v2, "com.ecarx.sdk.smartscene.IAbilityCollectorService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ecarx/sdk/smartscene/LaunchPad;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 143
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;
    iget-object v2, p0, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 144
    if-nez v2, :cond_1

    invoke-static {}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 145
    invoke-static {}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService$Stub;->getDefaultImpl()Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;

    move-result-object v2

    .end local p1    # "launchPad":Lcom/ecarx/sdk/smartscene/LaunchPad;
    invoke-interface {v2, p1}, Lcom/ecarx/sdk/smartscene/IAbilityCollectorService;->unregister(Lcom/ecarx/sdk/smartscene/LaunchPad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    return-void

    .line 148
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw p1
.end method
