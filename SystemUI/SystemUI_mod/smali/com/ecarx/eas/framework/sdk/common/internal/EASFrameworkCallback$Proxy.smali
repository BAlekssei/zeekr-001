.class Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback$Proxy;
    .end local p1    # "remote":Landroid/os/IBinder;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback$Proxy;->mRemote:Landroid/os/IBinder;

    .line 80
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCall(Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    :try_start_0
    const-string v1, "com.ecarx.eas.framework.sdk.IEASFrameworkCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    nop

    .end local p1    # "msg":Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;
    invoke-virtual {p1, v0, v1}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    :goto_0
    iget-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback$Proxy;->mRemote:Landroid/os/IBinder;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkCallback$Proxy;
    const/4 v1, 0x0

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    throw p1
.end method
