.class Lcom/ecarx/eas/framework/sdk/common/internal/ServicePoolImpl;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/eas/framework/sdk/common/internal/ServicePoolImpl$Proxy;
    }
.end annotation


# static fields
.field static DESCRIPTOR:Ljava/lang/String; = null

.field static final TRANSACTION_addRemoteServiceCallback:I = 0x3

.field static final TRANSACTION_getAvailableServices:I = 0x1

.field static final TRANSACTION_getService:I = 0x2

.field static final TRANSACTION_removeRemoteServiceCallback:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "com.ecarx.sdk.openapi.IServicePool"

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ServicePoolImpl;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ServicePoolImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/ServicePoolImpl;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ServicePoolImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/ServicePoolImpl$Proxy;

    .end local p0    # "obj":Landroid/os/IBinder;
    invoke-direct {v0, p0}, Lcom/ecarx/eas/framework/sdk/common/internal/ServicePoolImpl$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public addRemoteServiceCallback(Lcom/ecarx/eas/framework/sdk/common/internal/IConnectionCallback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 p1, 0x0

    return p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 74
    return-object p0
.end method

.method public getAvailableServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getService(IILjava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeRemoteServiceCallback(Lcom/ecarx/eas/framework/sdk/common/internal/IConnectionCallback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 p1, 0x0

    return p1
.end method
