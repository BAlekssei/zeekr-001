.class Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;
.super Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;


# direct methods
.method constructor <init>(Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;

    .line 28
    nop

    .end local p1    # "this$0":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;->this$0:Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;

    invoke-direct {p0}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;-><init>()V

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;
    return-void
.end method


# virtual methods
.method public onLogin()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const-string v0, "UserAPIImplV2"

    const-string v1, "onLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;->this$0:Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;

    invoke-static {v0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->access$000(Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/eas/sdk/userv2/ILoginListener;

    .line 33
    if-eqz v1, :cond_0

    .line 34
    invoke-interface {v1}, Lcom/ecarx/eas/sdk/userv2/ILoginListener;->onLogin()V

    .line 36
    :cond_0
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public onLogout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "UserAPIImplV2"

    const-string v1, "onLogout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;->this$0:Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;

    invoke-static {v0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->access$000(Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/eas/sdk/userv2/ILoginListener;

    .line 43
    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v1}, Lcom/ecarx/eas/sdk/userv2/ILoginListener;->onLogout()V

    .line 46
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public onTokenChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const-string v0, "UserAPIImplV2"

    const-string v1, "onTokenChanged, token: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;->this$0:Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;

    invoke-static {v0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->access$000(Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/eas/sdk/userv2/ILoginListener;

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1, p1}, Lcom/ecarx/eas/sdk/userv2/ILoginListener;->onTokenChanged(Ljava/lang/String;)V

    .line 57
    :cond_0
    goto :goto_0

    .line 58
    .end local p1    # "token":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "userInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const-string v0, "UserAPIImplV2"

    const-string v1, "onUserInfoChanged, userInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;->this$0:Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;

    invoke-static {v0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->access$000(Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/eas/sdk/userv2/ILoginListener;

    .line 64
    if-eqz v1, :cond_0

    .line 65
    new-instance v2, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;

    invoke-direct {v2, p1}, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-interface {v1, v2}, Lcom/ecarx/eas/sdk/userv2/ILoginListener;->onUserInfoChanged(Lcom/ecarx/eas/sdk/userv2/IUserInfo;)V

    .line 68
    :cond_0
    goto :goto_0

    .line 69
    .end local p1    # "userInfo":Ljava/lang/String;
    :cond_1
    return-void
.end method
