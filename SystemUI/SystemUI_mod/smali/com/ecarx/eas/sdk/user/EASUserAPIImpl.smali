.class public Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
.super Lcom/ecarx/eas/framework/sdk/common/internal/IApi;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/user/InternalUserAPI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ecarx/eas/framework/sdk/common/internal/IApi<",
        "Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;",
        ">;",
        "Lcom/ecarx/eas/sdk/user/InternalUserAPI;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EASUserAPIImpl"

.field private static gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecarx/eas/framework/sdk/Singleton<",
            "Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mLastToken:Ljava/lang/String;

.field private final mLoginCallbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ecarx/eas/sdk/user/callback/LoginCallback;",
            ">;"
        }
    .end annotation
.end field

.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$2;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$2;-><init>()V

    sput-object v0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLastToken:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLoginCallbackSet:Ljava/util/Set;

    .line 45
    new-instance v0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$1;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$1;-><init>(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;)V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    .line 38
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    iget-object p0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLoginCallbackSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    .line 38
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    iget-object p0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLastToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    .end local p1    # "x1":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLastToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;)Landroid/os/IInterface;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    .line 38
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    iget-object p0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    return-object p0
.end method

.method public static get()Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    .locals 1

    .line 93
    sget-object v0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    return-object v0
.end method

.method private recoveryCallbackIfNeeded()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLoginCallbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->registerUserCallback()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 9

    .line 180
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call getAccessToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    return-object v1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_1

    .line 185
    const-string v0, "EASUserAPIImpl"

    const-string/jumbo v2, "service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-object v1

    .line 188
    :cond_1
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v4, "user"

    const-string/jumbo v5, "user"

    const-string/jumbo v6, "user/getAccessToken"

    const/4 v2, 0x0

    new-array v7, v2, [B

    new-array v8, v2, [B

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 192
    :try_start_0
    iget-object v3, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v3, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v3, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v3

    .line 193
    iget v4, v3, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    .line 194
    const-string v4, "EASUserAPIImpl"

    const-string v5, ">> method = %s, code=%d, msg=%s <<"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    iget v2, v3, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x2

    iget-object v2, v3, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v2, v6, v0

    .line 194
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object v1

    .line 201
    :cond_2
    nop

    .line 202
    iget-object v0, v3, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    .line 203
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLastToken:Ljava/lang/String;

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    return-object v1
.end method

.method public getLoginUser()Lcom/ecarx/eas/sdk/user/IUser;
    .locals 9

    .line 251
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call getLoginUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 256
    :cond_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "user"

    const-string/jumbo v5, "user/getLoginUser"

    const/4 v8, 0x0

    new-array v6, v8, [B

    new-array v7, v8, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 261
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 262
    const-string v3, "EASUserAPIImpl"

    const-string v4, ">> method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v8

    const/4 v0, 0x1

    iget v6, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 263
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    iget-object v2, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v2, v5, v0

    .line 262
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    return-object v1

    .line 269
    :cond_1
    nop

    .line 270
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v2, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    .line 271
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    const-string v0, "EASUserAPIImpl"

    const-string/jumbo v2, "userInfo is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-object v1

    .line 276
    :cond_2
    new-instance v1, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;

    invoke-direct {v1, v0}, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;-><init>(Ljava/lang/String;)V

    .line 277
    new-instance v0, Lcom/ecarx/eas/sdk/user/UserInfo;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/user/UserInfo;-><init>()V

    .line 278
    invoke-interface {v1}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/user/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 279
    invoke-interface {v1}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/user/UserInfo;->setName(Ljava/lang/String;)V

    .line 280
    invoke-interface {v1}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/user/UserInfo;->setAvatarUrl(Ljava/lang/String;)V

    .line 281
    invoke-interface {v1}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getMobile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/user/UserInfo;->setMobile(Ljava/lang/String;)V

    .line 282
    invoke-interface {v1}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getSex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/user/UserInfo;->setGender(Ljava/lang/String;)V

    .line 283
    invoke-interface {v1}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/user/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 284
    invoke-interface {v1}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setAddress(Ljava/lang/String;)V

    .line 285
    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    return-object v1

    .line 253
    :cond_3
    :goto_0
    const-string v0, "EASUserAPIImpl"

    const-string v2, "Service is unavailable"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v1
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 2

    .line 208
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call Deprecated getRefreshToken\uff0cuse getAccessToken instead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 174
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call Deprecated getToken\uff0cuse getAccessToken instead"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLogin()Z
    .locals 8

    .line 147
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call hasLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    return v1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_1

    .line 152
    return v1

    .line 154
    :cond_1
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "user"

    const-string/jumbo v5, "user/hasLogin"

    new-array v6, v1, [B

    new-array v7, v1, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 159
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    .line 160
    const-string v3, "EASUserAPIImpl"

    const-string v4, ">> method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget v6, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 161
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    iget-object v2, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v2, v5, v0

    .line 160
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return v1

    .line 167
    :cond_2
    nop

    .line 168
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;

    .line 169
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->isValue()Z

    move-result v0

    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    return v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public bridge synthetic init(Landroid/os/IInterface;)V
    .locals 0

    .line 38
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->init(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;)V

    return-void
.end method

.method public init(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;)V
    .locals 0
    .param p1, "api"    # Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    .line 98
    nop

    .end local p1    # "api":Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    invoke-super {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->init(Landroid/os/IInterface;)V

    .line 99
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->recoveryCallbackIfNeeded()V

    .line 100
    return-void
.end method

.method public launchLogin()Z
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 215
    const-string v0, "EASUserAPIImpl"

    const-string v1, "Context is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->launchLogin(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public launchLogin(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "isBack"    # Z

    .line 223
    const-string v0, "EASUserAPIImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call launchLogin: packageName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->hasLogin()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 231
    const-string/jumbo v2, "xc://account.ecarx.com/main"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 233
    :cond_1
    const-string/jumbo v2, "xc://account.ecarx.com/signin"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 234
    const-string v2, "from_key"

    const-string/jumbo v4, "user_api"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v2, "is_back"

    .line 235
    .end local p3    # "isBack":Z
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 236
    const-string p3, "EntryCode"

    invoke-virtual {v0, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    :goto_0
    const/high16 p3, 0x10000000

    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    const-string p3, "external_package_name"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    .end local p1    # "packageName":Ljava/lang/String;
    const-string p1, "external_app_name"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    .end local p2    # "appName":Ljava/lang/String;
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mContext:Landroid/content/Context;

    .line 241
    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    return v3

    .line 243
    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    return v1

    .line 225
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "appName":Ljava/lang/String;
    .restart local p3    # "isBack":Z
    :cond_2
    :goto_1
    const-string v0, "EASUserAPIImpl"

    const-string v2, "Service is unavailable or Context is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v1
.end method

.method public login(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 370
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "EASUserAPIImpl"

    const-string v1, "param is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x0

    return-object v0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->isNotAlive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    new-instance v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;-><init>()V

    .line 379
    nop

    .line 379
    .end local p1    # "param":Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->setValue(Ljava/lang/String;)V

    .line 380
    new-instance p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v2, "user"

    const-string/jumbo v3, "userService"

    const-string/jumbo v4, "userService/login"

    .line 381
    invoke-static {v0}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v5

    const/4 v0, 0x0

    new-array v6, v0, [B

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 382
    nop

    .line 382
    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v1

    .line 383
    iget v2, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 388
    iget-object p1, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    .line 389
    invoke-virtual {p1}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 384
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    iget v0, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 385
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x2

    iget-object v0, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v0, v2, p1

    .line 384
    const-string p1, ">> \u670d\u52a1\u5185\u90e8\u9519\u8bef method = %s, code=%d, msg=%s <<"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EASUserAPIImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget p1, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    iget-object v0, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    move-result-object p1

    throw p1

    .line 376
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    .restart local p1    # "param":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v0, "Service is NULL"

    return-object v0
.end method

.method public logout()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 394
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call logout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->isNotAlive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v2, "user"

    const-string/jumbo v3, "userService"

    const-string/jumbo v4, "userService/logout"

    const/4 v7, 0x0

    new-array v5, v7, [B

    new-array v6, v7, [B

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 400
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v1

    .line 401
    iget v2, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 406
    iget-object v0, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;

    .line 407
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->isValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 402
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v2, v7

    const/4 v0, 0x1

    iget v3, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 402
    const-string v0, ">> method = %s, code=%d, msg=%s <<"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EASUserAPIImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget v0, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    iget-object v1, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    move-result-object v0

    throw v0

    .line 396
    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public notifyRefreshTokenExpired()Z
    .locals 1

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized notifyTokenExpired()Z
    .locals 2

    monitor-enter p0

    .line 311
    :try_start_0
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call notifyTokenExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->isNotAlive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 316
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$3;

    invoke-direct {v1, p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl$3;-><init>(Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 313
    :cond_2
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerUserCallback()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    const-string v0, "EASUserAPIImpl"

    const-string/jumbo v1, "registerUserCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "userService"

    const-string/jumbo v5, "userService/registerCallback"

    const/4 v1, 0x0

    new-array v6, v1, [B

    new-array v7, v1, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 110
    iget-object v2, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    invoke-interface {v3}, Lcom/ecarx/eas/sdk/v3/IUserCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 111
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 116
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;

    .line 117
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->isValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 112
    :cond_0
    :try_start_1
    const-string v3, "EASUserAPIImpl"

    const-string v4, ">> \u670d\u52a1\u5185\u90e8\u9519\u8bef method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    iget-object v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v1, v5, v0

    .line 112
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    iget-object v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoginCallback(Lcom/ecarx/eas/sdk/user/callback/LoginCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/user/callback/LoginCallback;

    .line 290
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call setLoginCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    if-nez v1, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLoginCallbackSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const-string v0, "EASUserAPIImpl"

    const-string v1, "LoginCallback has already been registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->registerUserCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLoginCallbackSet:Ljava/util/Set;

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 305
    :cond_2
    goto :goto_0

    .line 303
    :catch_0
    move-exception p1

    .line 304
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    :goto_0
    return v0

    .line 292
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    .restart local p1    # "callback":Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    :cond_3
    :goto_1
    return v0
.end method

.method public unregisterLoginCallback(Lcom/ecarx/eas/sdk/user/callback/LoginCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 351
    const-string v0, "EASUserAPIImpl"

    const-string v1, "call unregisterLoginCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->isNotAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLoginCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    const-string v0, "EASUserAPIImpl"

    const-string v1, "LoginCallbackList has been removed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x1

    return v0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLoginCallbackSet:Ljava/util/Set;

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 362
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mLoginCallbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->unregisterUserCallback()Z

    move-result p1

    return p1

    .line 365
    :cond_2
    return p1

    .line 353
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;
    .restart local p1    # "callback":Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized unregisterUserCallback()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    const-string v0, "EASUserAPIImpl"

    const-string/jumbo v1, "unregisterUserCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "userService"

    const-string/jumbo v5, "userService/unregisterCallback"

    const/4 v1, 0x0

    new-array v6, v1, [B

    new-array v7, v1, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 124
    iget-object v2, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    invoke-interface {v3}, Lcom/ecarx/eas/sdk/v3/IUserCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 125
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 130
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;

    .line 131
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->isValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 126
    :cond_0
    :try_start_1
    const-string v3, "EASUserAPIImpl"

    const-string v4, ">> \u670d\u52a1\u5185\u90e8\u9519\u8bef method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    iget-object v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v1, v5, v0

    .line 126
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    iget-object v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
