.class Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;
.super Lcom/ecarx/eas/framework/sdk/common/internal/ConnectCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;


# direct methods
.method constructor <init>(Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    .line 16
    nop

    .end local p1    # "this$0":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/ConnectCallback;-><init>()V

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;
    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    iget-object v0, v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    if-nez v0, :cond_0

    .line 20
    return-void

    .line 22
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    iget-object v0, v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    .end local p1    # "serviceName":Ljava/lang/String;
    invoke-interface {v0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;->onServiceConnected(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;I)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    iget-object v0, v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    if-nez v0, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient$1;->this$0:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;

    iget-object v0, v0, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkClient;->mNotifity:Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;

    .end local p1    # "serviceName":Ljava/lang/String;
    .end local p2    # "reason":I
    invoke-interface {v0, p1, p2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectNotifity;->onServiceDisconnected(Ljava/lang/String;I)V

    .line 31
    return-void
.end method
