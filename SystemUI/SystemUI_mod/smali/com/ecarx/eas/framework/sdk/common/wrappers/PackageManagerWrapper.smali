.class public Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;->TAG:Ljava/lang/String;

    .line 31
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;
    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public findService(Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 48
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ecarx/eas/framework/sdk/common/wrappers/PackageManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    return-object v0

    .line 53
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 54
    return-object v0

    .line 57
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 58
    const-string v1, "PackageManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "More than one Client Service\'s found in package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local p1    # "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". They\'ll all be ignored."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-object v0

    .line 62
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    return-object v0
.end method
