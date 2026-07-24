.class public Lcom/ecarx/eas/sdk/user/LoginReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field mLoginCallBack:Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;


# direct methods
.method public constructor <init>(Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/LoginReceiver;->TAG:Ljava/lang/String;

    .line 19
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/LoginReceiver;
    .end local p1    # "callBack":Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/LoginReceiver;->mLoginCallBack:Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p2, "intent"    # Landroid/content/Intent;

    .line 24
    nop

    .end local p2    # "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/ecarx/eas/sdk/user/LoginReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive--------->action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p2, p0, Lcom/ecarx/eas/sdk/user/LoginReceiver;->mLoginCallBack:Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;

    if-nez p2, :cond_0

    .line 27
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/LoginReceiver;->TAG:Ljava/lang/String;

    const-string p2, "LoginCallBack is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 30
    :cond_0
    const-string p2, "receiver.csp.login.success.action"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/LoginReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onLogin"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/LoginReceiver;->mLoginCallBack:Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;

    invoke-interface {p1}, Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;->onLogin()V

    return-void

    .line 33
    :cond_1
    const-string p2, "receiver.csp.logout.action"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/LoginReceiver;->TAG:Ljava/lang/String;

    const-string p2, "onLogout"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/LoginReceiver;
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/LoginReceiver;->mLoginCallBack:Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;

    invoke-interface {p1}, Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;->onLogout()V

    .line 37
    :cond_2
    return-void
.end method
