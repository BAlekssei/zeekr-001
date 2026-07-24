.class Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;
.super Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<",
        "Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/ecarx/eas/framework/sdk/common/internal/ConnectionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapper"    # Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;
    .param p3, "notifity"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    .line 35
    nop

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "wrapper":Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;
    .end local p3    # "notifity":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;
    invoke-direct {p0, p1, p2, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;-><init>(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;)V

    .line 16
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient$1;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;
    invoke-direct {p1, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient$1;-><init>(Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;)V

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->mCallback:Lcom/ecarx/eas/framework/sdk/common/internal/ConnectionCallback;

    .line 36
    return-void
.end method


# virtual methods
.method protected addRemoteCallback()V
    .locals 2

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;

    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->mCallback:Lcom/ecarx/eas/framework/sdk/common/internal/ConnectionCallback;

    invoke-interface {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;->addRemoteServiceCallback(Lcom/ecarx/eas/framework/sdk/common/internal/IConnectionCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 65
    return-void
.end method

.method protected bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 14
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->createServiceInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;

    move-result-object p1

    return-object p1
.end method

.method protected createServiceInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 45
    nop

    .end local p1    # "binder":Landroid/os/IBinder;
    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/ServicePoolImpl;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;

    move-result-object p1

    return-object p1
.end method

.method public getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .locals 1

    .line 79
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "ecarx.intent.action.OpenAPIService"

    return-object v0
.end method

.method protected onBindingDied()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    invoke-interface {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;->onBindingDied()V

    .line 75
    return-void
.end method

.method protected onServiceConnected()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    invoke-interface {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;->onServiceConnected()V

    .line 56
    return-void
.end method

.method protected onServiceDisconnected()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/OpenAPIClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    invoke-interface {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;->onServiceDisconnected()V

    .line 70
    return-void
.end method
