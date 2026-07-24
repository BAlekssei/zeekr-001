.class Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;


# direct methods
.method constructor <init>(Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;

    .line 54
    nop

    .end local p1    # "this$0":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;->this$0:Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;
    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;Z)Z
    .locals 3
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "openAPIServiceType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p3, "serviceVersionInfo"    # Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;
    .param p4, "isConnected"    # Z

    .line 65
    const-string v0, "UserV2Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnected - service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local p1    # "service":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , openAPIServiceType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , connect: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    nop

    .end local p4    # "isConnected":Z
    if-eqz p4, :cond_0

    .line 67
    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;->this$0:Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;

    .end local p2    # "openAPIServiceType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .end local p3    # "serviceVersionInfo":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;
    invoke-static {p1, p2, p3}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->access$200(Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;)V

    .line 69
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;
    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;->this$0:Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;

    invoke-static {p1}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->access$100(Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;)Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onConnected(Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Z)Z
    .locals 0
    .param p2, "clientType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p3, "isConnected"    # Z

    .line 57
    nop

    .end local p3    # "isConnected":Z
    if-eqz p3, :cond_0

    .line 58
    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;->this$0:Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;

    .end local p2    # "clientType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    sget-object p3, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-static {p1, p2, p3, p3}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->access$000(Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V

    .line 60
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;
    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;->this$0:Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;

    invoke-static {p1}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->access$100(Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;)Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
