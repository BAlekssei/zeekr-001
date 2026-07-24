.class Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;
.super Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecarx/eas/sdk/user/UserAPIImpl;->setLoginCallback(Lcom/ecarx/eas/sdk/user/callback/LoginCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/eas/sdk/user/UserAPIImpl;

.field final synthetic val$callback:Lcom/ecarx/eas/sdk/user/callback/LoginCallback;


# direct methods
.method constructor <init>(Lcom/ecarx/eas/sdk/user/UserAPIImpl;Lcom/ecarx/eas/sdk/user/callback/LoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    .line 345
    nop

    .end local p1    # "this$0":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;->this$0:Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    iput-object p2, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;->val$callback:Lcom/ecarx/eas/sdk/user/callback/LoginCallback;

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback$Stub;-><init>()V

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;
    return-void
.end method


# virtual methods
.method public onApproveFail(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    return-void
.end method

.method public onApproveSuccess(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    return-void
.end method

.method public onLoginFail(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    const-string v0, "UserAPIImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoginSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local p1    # "msg":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;->val$callback:Lcom/ecarx/eas/sdk/user/callback/LoginCallback;

    invoke-virtual {p1}, Lcom/ecarx/eas/sdk/user/callback/LoginCallback;->onLogin()V

    .line 350
    return-void
.end method

.method public onLogoutFail(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    return-void
.end method

.method public onLogoutSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    const-string v0, "UserAPIImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLogoutSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local p1    # "msg":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;->val$callback:Lcom/ecarx/eas/sdk/user/callback/LoginCallback;

    invoke-virtual {p1}, Lcom/ecarx/eas/sdk/user/callback/LoginCallback;->onLogout()V

    .line 361
    return-void
.end method

.method public onRefreshTokenError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    const-string v0, "UserAPIImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRefreshTokenError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .end local p1    # "error":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method public onRefreshTokenSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    const-string v0, "UserAPIImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRefreshTokenSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;->this$0:Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    invoke-static {v0, p1}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->access$102(Lcom/ecarx/eas/sdk/user/UserAPIImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;->val$callback:Lcom/ecarx/eas/sdk/user/callback/LoginCallback;

    .end local p1    # "token":Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/user/callback/LoginCallback;->onTokenRefresh(Ljava/lang/String;)V

    .line 383
    return-void
.end method
