.class final Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;
.super Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient<",
        "Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/ecarx/eas/framework/sdk/common/internal/ConnectCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapper"    # Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;
    .param p3, "notifity"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    .line 34
    nop

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "wrapper":Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;
    .end local p3    # "notifity":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;
    invoke-direct {p0, p1, p2, p3}, Lcom/ecarx/eas/framework/sdk/common/internal/BaseEASFrameworkClient;-><init>(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;)V

    .line 16
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;
    invoke-direct {p1, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;-><init>(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;)V

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->mCallback:Lcom/ecarx/eas/framework/sdk/common/internal/ConnectCallback;

    .line 35
    const-string p1, "EASFramework"

    const-string p2, "EASFrameworkClient()"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method


# virtual methods
.method protected final addRemoteCallback()V
    .locals 2

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->mCallback:Lcom/ecarx/eas/framework/sdk/common/internal/ConnectCallback;

    invoke-interface {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->addRemoteServiceCallback(Lcom/ecarx/eas/framework/sdk/common/internal/IConnectCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 80
    return-void
.end method

.method protected final bridge synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 15
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->createServiceInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    move-result-object p1

    return-object p1
.end method

.method protected final createServiceInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 45
    nop

    .end local p1    # "binder":Landroid/os/IBinder;
    invoke-static {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkServiceImpl;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    move-result-object p1

    return-object p1
.end method

.method public final getClientType()Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .locals 1

    .line 70
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "com.ecarx.easframework.intent.action.EASFRAMEWORK"

    return-object v0
.end method

.method protected final onBindingDied()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    invoke-interface {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;->onBindingDied()V

    .line 66
    return-void
.end method

.method protected final onServiceConnected()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    invoke-interface {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;->onServiceConnected()V

    .line 56
    return-void
.end method

.method protected final onServiceDisconnected()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    invoke-interface {v0}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;->onServiceDisconnected()V

    .line 61
    return-void
.end method
