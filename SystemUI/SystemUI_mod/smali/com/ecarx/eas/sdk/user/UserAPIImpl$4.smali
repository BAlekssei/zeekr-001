.class Lcom/ecarx/eas/sdk/user/UserAPIImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecarx/eas/sdk/user/UserAPIImpl;->notifyTokenExpired()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/eas/sdk/user/UserAPIImpl;


# direct methods
.method constructor <init>(Lcom/ecarx/eas/sdk/user/UserAPIImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    .line 433
    nop

    .end local p1    # "this$0":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$4;->this$0:Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl$4;
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$4;->this$0:Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$4;->this$0:Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    invoke-static {v1}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->access$200(Lcom/ecarx/eas/sdk/user/UserAPIImpl;)Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v1

    iget-object v2, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$4;->this$0:Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    invoke-static {v2}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->access$100(Lcom/ecarx/eas/sdk/user/UserAPIImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ecarx/eas/sdk/v3/IUserService;->refreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->access$102(Lcom/ecarx/eas/sdk/user/UserAPIImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    const-string v0, "UserAPIImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshToken, lastToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$4;->this$0:Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    invoke-static {v2}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->access$100(Lcom/ecarx/eas/sdk/user/UserAPIImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 442
    return-void
.end method
