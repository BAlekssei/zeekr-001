.class public Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;
.super Lcom/ecarx/eas/framework/sdk/common/internal/IApi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ecarx/eas/framework/sdk/common/internal/IApi<",
        "Lcom/ecarx/eas/sdk/v3/IMemberCenterService;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field protected static TYPE_NO_USERSERVICE:I

.field protected static TYPE_USERSERVICE_V2:I

.field protected static TYPE_USERSERVICE_V4:I


# instance fields
.field protected mClientType:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

.field protected mContext:Landroid/content/Context;

.field protected mUserCenterType:I

.field protected mUserContext:Ljava/lang/String;

.field protected volatile mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "BaseUserAPIImpl"

    sput-object v0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TYPE_NO_USERSERVICE:I

    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TYPE_USERSERVICE_V2:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TYPE_USERSERVICE_V4:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mUserCenterType:I

    return-void
.end method

.method private initBinder()V
    .locals 2

    .line 68
    :try_start_0
    sget-object v0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TAG:Ljava/lang/String;

    const-string v1, "initBinder: user and third auth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->getUserService()Lcom/ecarx/eas/sdk/v3/IUserService;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    return-void
.end method


# virtual methods
.method public bridge synthetic init(Landroid/os/IInterface;)V
    .locals 0

    .line 22
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;
    check-cast p1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->init(Lcom/ecarx/eas/sdk/v3/IMemberCenterService;)V

    return-void
.end method

.method public init(Lcom/ecarx/eas/sdk/v3/IMemberCenterService;)V
    .locals 3
    .param p1, "api"    # Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    .line 42
    nop

    .line 42
    .end local p1    # "api":Lcom/ecarx/eas/sdk/v3/IMemberCenterService;
    invoke-super {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->init(Landroid/os/IInterface;)V

    .line 44
    iget-object p1, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mContext:Landroid/content/Context;

    const-string v0, "ecarx.membercenter"

    invoke-static {p1, v0}, Lcom/ecarx/eas/sdk/utils/PackageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mContext:Landroid/content/Context;

    const-string v0, "ecarx.membercenter"

    const-string v1, "com.ecarx.membercenter.BuildInfo.USERAPI_VERSION"

    invoke-static {p1, v0, v1}, Lcom/ecarx/eas/sdk/utils/PackageUtils;->getMetaDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "user version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "V2"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget p1, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TYPE_USERSERVICE_V2:I

    iput p1, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mUserCenterType:I

    .line 50
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->initBinder()V

    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "V4"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    sget p1, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TYPE_USERSERVICE_V4:I

    iput p1, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mUserCenterType:I

    .line 53
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->initBinder()V

    goto :goto_0

    .line 55
    :cond_1
    sget p1, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TYPE_NO_USERSERVICE:I

    iput p1, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mUserCenterType:I

    .line 57
    return-void

    .line 58
    :cond_2
    sget-object p1, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->TAG:Ljava/lang/String;

    const-string v0, "init: no membercenter"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mClientType:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    if-ne p1, v0, :cond_3

    .line 61
    nop

    .line 61
    .end local p0    # "this":Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->initBinder()V

    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public initData(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mContext:Landroid/content/Context;

    .line 36
    nop

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1}, Lcom/ecarx/eas/sdk/utils/PackageUtils;->getBasePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mUserContext:Ljava/lang/String;

    .line 37
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;
    .end local p2    # "clientType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    iput-object p2, p0, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->mClientType:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .line 38
    return-void
.end method

.method protected startAccountCenterLogin(Z)Landroid/content/Intent;
    .locals 1

    .line 83
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "xc://account.ecarx.com/signin"

    .line 84
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 83
    return-object p1
.end method

.method protected startAccountCenterMain()Landroid/content/Intent;
    .locals 2

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "xc://account.ecarx.com/main"

    .line 97
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method protected startMemberCenterLogin(Z)Landroid/content/Intent;
    .locals 2

    .line 78
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "ecarx.membercenter"

    const-string v1, "ecarx.membercenter.stub.EntryActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected startMemberCenterMain()Landroid/content/Intent;
    .locals 4

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "ecarx.membercenter"

    const-string v3, "com.ecarx.membercenter.main.view.SplashActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 89
    return-object v0
.end method
