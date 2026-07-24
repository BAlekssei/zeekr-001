.class public Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
.super Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserAPIImplV2"

.field private static gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecarx/eas/framework/sdk/Singleton<",
            "Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mLatestToken:Ljava/lang/String;

.field private final mLoginListenerList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ecarx/eas/sdk/userv2/ILoginListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSvcLock:Ljava/lang/Object;

.field private mUserCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$2;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$2;-><init>()V

    sput-object v0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mSvcLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl$1;-><init>(Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;)V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;

    .line 22
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    iget-object p0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    return-object p0
.end method

.method private ensureServiceAvailable()Z
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 300
    return v1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 303
    return v1

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    return v1

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    return v1

    .line 311
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static get()Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    .locals 1

    .line 80
    sget-object v0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;

    return-object v0
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 3

    .line 149
    const-string v0, "UserAPIImplV2"

    const-string v1, "call getToken."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "UserAPIImplV2"

    const-string v2, "hasLogin is false."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLatestToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    goto :goto_0

    .line 162
    :cond_1
    const-string v0, "UserAPIImplV2"

    const-string/jumbo v2, "userService is unavailable."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-object v1
.end method

.method public getUserInfo()Lcom/ecarx/eas/sdk/userv2/IUserInfo;
    .locals 3

    .line 125
    const-string v0, "UserAPIImplV2"

    const-string v1, "call getUserInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "UserAPIImplV2"

    const-string v2, "hasLogin is false."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    return-object v1

    .line 137
    :cond_1
    new-instance v2, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;

    invoke-direct {v2, v0}, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    goto :goto_0

    .line 142
    :cond_2
    const-string v0, "UserAPIImplV2"

    const-string/jumbo v2, "userService is unavailable."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-object v1
.end method

.method public hasLogin()Z
    .locals 2

    .line 110
    const-string v0, "UserAPIImplV2"

    const-string v1, "call hasLogin."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "UserAPIImplV2"

    const-string/jumbo v1, "userService is unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic init(Landroid/os/IInterface;)V
    .locals 0

    .line 22
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    check-cast p1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->init(Lcom/ecarx/eas/sdk/v3/IMemberCenterService;)V

    return-void
.end method

.method public init(Lcom/ecarx/eas/sdk/v3/IMemberCenterService;)V
    .locals 2
    .param p1, "api"    # Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    .line 85
    nop

    .end local p1    # "api":Lcom/ecarx/eas/sdk/v3/IMemberCenterService;
    invoke-super {p0, p1}, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->init(Lcom/ecarx/eas/sdk/v3/IMemberCenterService;)V

    .line 86
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;

    invoke-interface {p1, v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->registerCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 93
    :cond_0
    :goto_0
    const-string p1, "UserAPIImplV2"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLast memberCenterService:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mService:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",userService:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public launchToLogin(Z)Z
    .locals 5
    .param p1, "isBack"    # Z

    .line 189
    const-string v0, "UserAPIImplV2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call launchToLogin. isBack: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 191
    const-string v0, "UserAPIImplV2"

    const-string v2, "Context is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v1

    .line 196
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mClientType:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-virtual {v0, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->startAccountCenterMain()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->startMemberCenterMain()Landroid/content/Intent;

    move-result-object v0

    .line 203
    :goto_0
    const-string v3, "external_package_name"

    iget-object v4, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v3, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    return v2

    .line 209
    :cond_2
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mClientType:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-virtual {v0, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->startAccountCenterLogin(Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 212
    :cond_3
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->startMemberCenterLogin(Z)Landroid/content/Intent;

    move-result-object v0

    .line 214
    :goto_1
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    const-string v3, "from_key"

    const-string/jumbo v4, "user_api"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v3, "is_back"

    .line 216
    .end local p1    # "isBack":Z
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    const-string p1, "EntryCode"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string p1, "external_package_name"

    iget-object v3, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    nop

    .line 219
    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return v2

    .line 221
    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    return v1
.end method

.method public login(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .line 252
    const-string v0, "UserAPIImplV2"

    const-string v1, "call login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    return-object v1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 259
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    :try_start_1
    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    .end local p1    # "param":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IUserService;->login(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    .line 260
    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    return-object v1

    .line 264
    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public logout()Ljava/lang/Boolean;
    .locals 2

    .line 270
    const-string v0, "UserAPIImplV2"

    const-string v1, "call logout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->logout()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public refreshToken()Ljava/lang/String;
    .locals 3

    .line 169
    const-string v0, "UserAPIImplV2"

    const-string v1, "call refreshToken."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const-string v0, "UserAPIImplV2"

    const-string v2, "hasLogin is false."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-object v1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLatestToken:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/ecarx/eas/sdk/v3/IUserService;->refreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLatestToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    goto :goto_0

    .line 182
    :cond_1
    const-string v0, "UserAPIImplV2"

    const-string/jumbo v2, "userService is unavailable."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-object v1
.end method

.method public refreshUserInfo()Ljava/lang/String;
    .locals 3

    .line 283
    const-string v0, "UserAPIImplV2"

    const-string/jumbo v1, "refreshUserInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const-string v0, "UserAPIImplV2"

    const-string v2, "hasLogin is false."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-object v1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->refreshUserInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    :cond_1
    return-object v1
.end method

.method public setLoginListener(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/ecarx/eas/sdk/userv2/ILoginListener;

    .line 98
    const-string v0, "UserAPIImplV2"

    const-string v1, "call setLoginListener."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_1
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    .end local p1    # "listener":Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 100
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    .restart local p1    # "listener":Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterLoginCallback(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z
    .locals 2
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/userv2/ILoginListener;

    .line 229
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->ensureServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    return v1

    .line 232
    :cond_0
    if-nez p1, :cond_1

    .line 233
    return v1

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 239
    :try_start_0
    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;

    if-eqz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->mUserCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;

    invoke-interface {p1, v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->unregisterCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 244
    :cond_2
    goto :goto_0

    .line 242
    :catch_0
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 247
    :cond_3
    return v1
.end method
