.class public Lcom/ecarx/eas/sdk/user/UserAPIImpl;
.super Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/user/InternalUserAPI;


# static fields
.field private static final EXTERNAL_APP_NAME:Ljava/lang/String; = "external_app_name"

.field private static final EXTERNAL_PACKAGE_NAME:Ljava/lang/String; = "external_package_name"

.field private static final REQUEST_LOGIN_PARAM_TYPE_KEY:Ljava/lang/String; = "from_key"

.field private static final TAG:Ljava/lang/String; = "UserAPIImpl"

.field private static gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecarx/eas/framework/sdk/Singleton<",
            "Lcom/ecarx/eas/sdk/user/UserAPIImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile lastToken:Ljava/lang/String;

.field private mLoginCallbackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ecarx/eas/sdk/user/callback/LoginCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSvcLock:Ljava/lang/Object;

.field private memberCenterCallback:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$1;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl$1;-><init>()V

    sput-object v0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->lastToken:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mSvcLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mLoginCallbackList:Ljava/util/Set;

    .line 59
    new-instance v0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$2;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl$2;-><init>(Lcom/ecarx/eas/sdk/user/UserAPIImpl;)V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ecarx/eas/sdk/user/UserAPIImpl;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    .line 37
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    iget-object p0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mLoginCallbackList:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ecarx/eas/sdk/user/UserAPIImpl;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    .line 37
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    iget-object p0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->lastToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ecarx/eas/sdk/user/UserAPIImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    .end local p1    # "x1":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->lastToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ecarx/eas/sdk/user/UserAPIImpl;)Lcom/ecarx/eas/sdk/v3/IUserService;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    .line 37
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    iget-object p0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    return-object p0
.end method

.method private ensureServiceAvailable()Z
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 517
    return v1

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 520
    return v1

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 523
    return v1

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-nez v0, :cond_3

    .line 526
    return v1

    .line 528
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static get()Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    .locals 1

    .line 100
    sget-object v0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    return-object v0
.end method

.method private getDataFromProvider(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 532
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecarx/eas/sdk/user/LoginConfig;->getSingleton(Landroid/content/Context;)Lcom/ecarx/eas/sdk/user/LoginConfig;

    move-result-object v0

    .end local p1    # "key":Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/user/LoginConfig;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private parseUserJson(Ljava/lang/String;)Lcom/ecarx/eas/sdk/user/UserInfo;
    .locals 3
    .param p1, "user_str"    # Ljava/lang/String;

    .line 259
    const-string v0, "UserAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseUserJson:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 261
    .end local p1    # "user_str":Ljava/lang/String;
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 263
    new-instance p1, Lcom/ecarx/eas/sdk/user/UserInfo;

    invoke-direct {p1}, Lcom/ecarx/eas/sdk/user/UserInfo;-><init>()V

    .line 264
    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setMobile(Ljava/lang/String;)V

    .line 265
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setName(Ljava/lang/String;)V

    .line 266
    const-string v1, "avatarUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setAvatarUrl(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 268
    const-string v1, "level"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setLevel(I)V

    .line 269
    const-string v1, "levelName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setLevelName(Ljava/lang/String;)V

    .line 270
    const-string v1, "address"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setAddress(Ljava/lang/String;)V

    .line 271
    const-string v1, "carModel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setCarModel(Ljava/lang/String;)V

    .line 272
    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ecarx/eas/sdk/user/UserInfo;->setGender(Ljava/lang/String;)V

    .line 273
    const-string v1, "birthday"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ecarx/eas/sdk/user/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 274
    const-string v0, "UserAPI"

    const-string v1, "parseUserJson success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-object p1

    .line 276
    :catch_0
    move-exception p1

    .line 277
    const-string v0, "UserAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseUserJson fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 280
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 5

    .line 147
    const-string v0, "UserAPIImpl"

    const-string v1, "call getAccessToken"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const-string v1, "UserAPIImpl"

    const-string v2, "hasLogin is false."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IUserService;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->lastToken:Ljava/lang/String;

    return-object v1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 161
    iput-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->lastToken:Ljava/lang/String;

    .line 162
    return-object v1

    .line 164
    :cond_2
    const-string v1, "UserAPIImpl"

    const-string v2, "failed, not connected openapi service! "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    const-string v2, "UserAPIImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAccessToken-------->Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    nop

    .line 175
    return-object v0

    .line 171
    :goto_0
    nop

    .line 174
    throw v0
.end method

.method public getLoginUser()Lcom/ecarx/eas/sdk/user/IUser;
    .locals 5

    .line 285
    const-string v0, "UserAPIImpl"

    const-string v1, "call getLoginUser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    const-string v1, "UserAPIImpl"

    const-string v2, "hasLogin is false."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-object v0

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IUserService;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    return-object v0

    .line 298
    :cond_1
    new-instance v2, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;

    invoke-direct {v2, v1}, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;-><init>(Ljava/lang/String;)V

    .line 299
    new-instance v1, Lcom/ecarx/eas/sdk/user/UserInfo;

    invoke-direct {v1}, Lcom/ecarx/eas/sdk/user/UserInfo;-><init>()V

    .line 300
    invoke-interface {v2}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ecarx/eas/sdk/user/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 301
    invoke-interface {v2}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ecarx/eas/sdk/user/UserInfo;->setName(Ljava/lang/String;)V

    .line 302
    invoke-interface {v2}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ecarx/eas/sdk/user/UserInfo;->setAvatarUrl(Ljava/lang/String;)V

    .line 303
    invoke-interface {v2}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ecarx/eas/sdk/user/UserInfo;->setMobile(Ljava/lang/String;)V

    .line 304
    invoke-interface {v2}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getSex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ecarx/eas/sdk/user/UserInfo;->setGender(Ljava/lang/String;)V

    .line 305
    invoke-interface {v2}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ecarx/eas/sdk/user/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 306
    invoke-interface {v2}, Lcom/ecarx/eas/sdk/userv2/IUserInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ecarx/eas/sdk/user/UserInfo;->setAddress(Ljava/lang/String;)V

    .line 307
    return-object v1

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    const-string v1, "UserAPIImpl"

    const-string v2, "getLoginUser--->memberCenterService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-direct {p0, v1}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->parseUserJson(Ljava/lang/String;)Lcom/ecarx/eas/sdk/user/UserInfo;

    move-result-object v1

    return-object v1

    .line 315
    :cond_3
    const-string v1, "UserAPIImpl"

    const-string v2, "failed, not connected openapi service! "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 320
    const-string v2, "UserAPIImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getRefreshToken-------->Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    nop

    .line 326
    return-object v0

    .line 322
    :goto_0
    nop

    .line 325
    throw v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 4

    .line 180
    const-string v0, "UserAPIImpl"

    const-string v1, "call Deprecated getRefreshToken"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    const-string v0, "isLogin"

    invoke-direct {p0, v0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->getDataFromProvider(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 186
    if-nez v0, :cond_1

    .line 187
    const-string v0, ""

    return-object v0

    .line 188
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 190
    const-string v0, ""

    return-object v0

    .line 192
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    const-string/jumbo v1, "refreshToken"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    const-string v0, "UserAPIImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshToken:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-object v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 141
    const-string v0, "UserAPIImpl"

    const-string v1, "call getToken---->getAccessToken"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLogin()Z
    .locals 5

    .line 118
    const-string v0, "UserAPIImpl"

    const-string v1, "call hasLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v1

    return v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->isLogin()Z

    move-result v1

    .line 126
    const-string v2, "UserAPIImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "memberCenterService:hasLogin:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1

    .line 129
    :cond_1
    const-string v1, "UserAPIImpl"

    const-string v2, "failed, not connected openapi service!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    const-string v2, "UserAPIImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hasLogin-------->Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v0
.end method

.method public bridge synthetic init(Landroid/os/IInterface;)V
    .locals 0

    .line 37
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    check-cast p1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->init(Lcom/ecarx/eas/sdk/v3/IMemberCenterService;)V

    return-void
.end method

.method public init(Lcom/ecarx/eas/sdk/v3/IMemberCenterService;)V
    .locals 2
    .param p1, "api"    # Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    .line 105
    nop

    .end local p1    # "api":Lcom/ecarx/eas/sdk/v3/IMemberCenterService;
    invoke-super {p0, p1}, Lcom/ecarx/eas/sdk/base/BaseUserAPIImpl;->init(Lcom/ecarx/eas/sdk/v3/IMemberCenterService;)V

    .line 106
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    :try_start_0
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->registerCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 113
    :cond_0
    :goto_0
    const-string p1, "UserAPIImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLast memberCenterService:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",userService:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public launchLogin()Z
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->launchLogin(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public launchLogin(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "isBack"    # Z

    .line 209
    const-string v0, "UserAPIImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call launchLogin packageName ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    const-string v0, "UserAPIImpl"

    const-string v2, "Context is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return v1

    .line 215
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v0

    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    iget-object v2, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mClientType:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->startAccountCenterMain()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->startMemberCenterMain()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 224
    :cond_2
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    iget-object v4, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mClientType:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-virtual {v0, v4}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {p0, p3}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->startAccountCenterLogin(Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {p0, p3}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->startMemberCenterLogin(Z)Landroid/content/Intent;

    move-result-object v0

    .line 229
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    const-string v2, "from_key"

    const-string/jumbo v4, "user_api"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v2, "is_back"

    .line 231
    .end local p3    # "isBack":Z
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    const-string p3, "EntryCode"

    invoke-virtual {v0, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    const-string p3, "external_package_name"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string p3, "external_app_name"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :goto_1
    iget-object p3, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 237
    return v3

    .line 240
    :cond_4
    new-instance p3, Landroid/content/ComponentName;

    const-string v0, "ecarx.membercenter"

    const-string v4, "ecarx.membercenter.stub.EntryActivity"

    invoke-direct {p3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 243
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    const-string p3, "from_key"

    const-string/jumbo v2, "user_api"

    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string p3, "external_package_name"

    .line 245
    .end local p1    # "packageName":Ljava/lang/String;
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string p1, "external_app_name"

    .line 246
    .end local p2    # "appName":Ljava/lang/String;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string p1, "EntryCode"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    nop

    .line 249
    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return v3

    .line 251
    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    const-string p2, "UserAPIImpl"

    const-string p3, "launchLogin()"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    return v1
.end method

.method public login(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;

    .line 486
    const-string v0, "UserAPIImpl"

    const-string v1, "call login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 488
    return-object v1

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mSvcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 493
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    :try_start_1
    iget-object v2, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    .end local p1    # "param":Ljava/lang/String;
    invoke-interface {v2, p1}, Lcom/ecarx/eas/sdk/v3/IUserService;->login(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    .line 494
    :catch_0
    move-exception p1

    .line 495
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 498
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    return-object v1

    .line 498
    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public logout()Ljava/lang/Boolean;
    .locals 2

    .line 504
    const-string v0, "UserAPIImpl"

    const-string v1, "call logout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->logout()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 512
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public notifyRefreshTokenExpired()Z
    .locals 1

    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public notifyTokenExpired()Z
    .locals 4

    .line 422
    const-string v0, "UserAPIImpl"

    const-string v1, "call notifyTokenExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IUserService;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    const-string v1, "UserAPIImpl"

    const-string v2, "hasLogin is false."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v0

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    .line 431
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/ecarx/eas/sdk/user/UserAPIImpl$4;

    invoke-direct {v3, p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl$4;-><init>(Lcom/ecarx/eas/sdk/user/UserAPIImpl;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 444
    return v2

    .line 447
    :cond_2
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    invoke-interface {v1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    iget-object v1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->lastToken:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->refreshToken(Ljava/lang/String;)V

    .line 449
    return v2

    .line 451
    :cond_3
    const-string v1, "UserAPIImpl"

    const-string v2, "failed, not connected openapi service! "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    return v0

    .line 454
    :catch_0
    move-exception v1

    .line 455
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 457
    return v0
.end method

.method public setLoginCallback(Lcom/ecarx/eas/sdk/user/callback/LoginCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/user/callback/LoginCallback;

    .line 331
    const-string v0, "UserAPIImpl"

    const-string v1, "call setLoginCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 333
    if-nez p1, :cond_0

    .line 334
    return v2

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mLoginCallbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const-string v0, "UserAPIImpl"

    const-string v2, "LoginCallback has already been registered"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return v1

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mLoginCallbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 344
    :cond_2
    if-eqz p1, :cond_4

    .line 345
    :try_start_0
    new-instance v0, Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/ecarx/eas/sdk/user/UserAPIImpl$3;-><init>(Lcom/ecarx/eas/sdk/user/UserAPIImpl;Lcom/ecarx/eas/sdk/user/callback/LoginCallback;)V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->memberCenterCallback:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    .line 390
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast v0, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->memberCenterCallback:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    invoke-interface {v0, v3}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->registerListener(Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;)V

    .line 396
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    const-string v3, "receiver.csp.login.success.action"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v3, "receiver.csp.logout.action"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    new-instance v3, Lcom/ecarx/eas/sdk/user/LoginReceiver;

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    invoke-direct {v3, p1}, Lcom/ecarx/eas/sdk/user/LoginReceiver;-><init>(Lcom/ecarx/eas/sdk/user/callback/ILoginCallBack;)V

    iput-object v3, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->receiver:Landroid/content/BroadcastReceiver;

    .line 401
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    return v1

    .line 393
    .restart local p1    # "callback":Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    :cond_3
    const-string v0, "UserAPIImpl"

    const-string v1, "failed, not connected openapi service! "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return v2

    .line 414
    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    .end local p1    # "callback":Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    :catch_0
    move-exception p1

    goto :goto_0

    .line 404
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    :cond_4
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->memberCenterCallback:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 405
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->memberCenterCallback:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    invoke-interface {p1, v3}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService;->unregisterListener(Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;)V

    .line 406
    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->memberCenterCallback:Lcom/ecarx/eas/sdk/v3/IMemberCenterCallback;

    .line 408
    :cond_5
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_6

    .line 409
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 410
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    iput-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->receiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_6
    return v1

    .line 414
    :goto_0
    nop

    .line 415
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 417
    return v2
.end method

.method public unregisterLoginCallback(Lcom/ecarx/eas/sdk/user/callback/LoginCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/user/callback/LoginCallback;

    .line 467
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->ensureServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mLoginCallbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mLoginCallbackList:Ljava/util/Set;

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 473
    :try_start_0
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mLoginCallbackList:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    if-eqz p1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->mUserService:Lcom/ecarx/eas/sdk/v3/IUserService;

    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/eas/sdk/v3/IUserService;->unregisterCallback(Lcom/ecarx/eas/sdk/v3/IUserCallback;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 478
    :cond_1
    goto :goto_0

    .line 476
    :catch_0
    move-exception p1

    .line 477
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 481
    :cond_2
    return v1

    .line 468
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/user/UserAPIImpl;
    .restart local p1    # "callback":Lcom/ecarx/eas/sdk/user/callback/LoginCallback;
    :cond_3
    :goto_1
    return v1
.end method
