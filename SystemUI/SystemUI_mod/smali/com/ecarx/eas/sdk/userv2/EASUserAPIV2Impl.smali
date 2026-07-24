.class public Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
.super Lcom/ecarx/eas/framework/sdk/common/internal/IApi;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ecarx/eas/framework/sdk/common/internal/IApi<",
        "Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;",
        ">;",
        "Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EASUserAPIV2Impl"

.field private static gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecarx/eas/framework/sdk/Singleton<",
            "Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

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

.field private userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl$2;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl$2;-><init>()V

    sput-object v0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    .line 39
    new-instance v0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl$1;

    invoke-direct {v0, p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl$1;-><init>(Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;)V

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;

    .line 33
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    iget-object p0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    .end local p1    # "x1":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLatestToken:Ljava/lang/String;

    return-object p1
.end method

.method public static get()Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    .locals 1

    .line 91
    sget-object v0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->gProxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;

    return-object v0
.end method

.method private recoveryCallbackIfNeeded()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->registerUserCallback()Z
    :try_end_0
    .catch Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;->printStackTrace()V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 9

    .line 217
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call getToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "userv2"

    const-string/jumbo v5, "userv2/getToken"

    const/4 v8, 0x0

    new-array v6, v8, [B

    new-array v7, v8, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 226
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 227
    const-string v3, "EASUserAPIV2Impl"

    const-string v4, ">> method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v8

    const/4 v0, 0x1

    iget v6, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 228
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    iget-object v2, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v2, v5, v0

    .line 227
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    return-object v1

    .line 234
    :cond_1
    nop

    .line 235
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    .line 236
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLatestToken:Ljava/lang/String;

    return-object v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    return-object v1

    .line 219
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getUserInfo()Lcom/ecarx/eas/sdk/userv2/IUserInfo;
    .locals 9

    .line 188
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call getUserInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "userv2"

    const-string/jumbo v5, "userv2/getUserInfo"

    const/4 v8, 0x0

    new-array v6, v8, [B

    new-array v7, v8, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 197
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 198
    const-string v3, "EASUserAPIV2Impl"

    const-string v4, ">> method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v8

    const/4 v0, 0x1

    iget v6, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 199
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    iget-object v2, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v2, v5, v0

    .line 198
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-object v1

    .line 205
    :cond_1
    nop

    .line 206
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v2, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    .line 207
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    const-string v0, "EASUserAPIV2Impl"

    const-string/jumbo v2, "userInfo is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-object v1

    .line 212
    :cond_2
    new-instance v1, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;

    invoke-direct {v1, v0}, Lcom/ecarx/eas/sdk/userv2/UserInfoV2;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    return-object v1

    .line 190
    :cond_3
    :goto_0
    return-object v1
.end method

.method public hasLogin()Z
    .locals 8

    .line 164
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call hasLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "userv2"

    const-string/jumbo v5, "userv2/hasLogin"

    new-array v6, v1, [B

    new-array v7, v1, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 173
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 174
    const-string v3, "EASUserAPIV2Impl"

    const-string v4, ">> method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget v6, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 175
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    iget-object v2, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v2, v5, v0

    .line 174
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return v1

    .line 181
    :cond_1
    nop

    .line 182
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;

    .line 183
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->isValue()Z

    move-result v0

    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    return v1

    .line 166
    :cond_2
    :goto_0
    return v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method public bridge synthetic init(Landroid/os/IInterface;)V
    .locals 0

    .line 33
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->init(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;)V

    return-void
.end method

.method public init(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;)V
    .locals 0
    .param p1, "api"    # Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    .line 96
    nop

    .end local p1    # "api":Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;
    invoke-super {p0, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->init(Landroid/os/IInterface;)V

    .line 97
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->recoveryCallbackIfNeeded()V

    .line 98
    return-void
.end method

.method public launchToLogin(Z)Z
    .locals 5
    .param p1, "isBack"    # Z

    .line 267
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call launchToLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->hasLogin()Z

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x10000000

    if-eqz v2, :cond_1

    .line 274
    const-string/jumbo v2, "xc://account.ecarx.com/main"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 275
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 277
    :cond_1
    const-string/jumbo v2, "xc://account.ecarx.com/signin"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 278
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    const-string v2, "from_key"

    const-string/jumbo v4, "user_api"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "is_back"

    .line 280
    .end local p1    # "isBack":Z
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const-string p1, "EntryCode"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    :goto_0
    const-string p1, "external_package_name"

    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object p1, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mContext:Landroid/content/Context;

    .line 284
    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    return v3

    .line 286
    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 289
    return v1

    .line 269
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    .restart local p1    # "isBack":Z
    :cond_2
    :goto_1
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

    .line 313
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "EASUserAPIV2Impl"

    const-string v2, "param is invalid"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-object v1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    new-instance v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;-><init>()V

    .line 323
    nop

    .line 323
    .end local p1    # "param":Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->setValue(Ljava/lang/String;)V

    .line 324
    new-instance p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v2, "user"

    const-string/jumbo v3, "userService"

    const-string/jumbo v4, "userService/login"

    .line 325
    invoke-static {v0}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v5

    const/4 v0, 0x0

    new-array v6, v0, [B

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 326
    nop

    .line 326
    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    iget-object v1, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v1

    .line 327
    iget v2, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 332
    iget-object p1, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    .line 333
    invoke-virtual {p1}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 328
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    iget v0, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x2

    iget-object v0, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v0, v2, p1

    .line 328
    const-string p1, ">> \u670d\u52a1\u5185\u90e8\u9519\u8bef method = %s, code=%d, msg=%s <<"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EASUserAPIV2Impl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget p1, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    iget-object v0, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    move-result-object p1

    throw p1

    .line 319
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    .restart local p1    # "param":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v0, "EASUserAPIV2Impl"

    const-string v2, "Service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-object v1
.end method

.method public logout()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 338
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call logout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 342
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

    .line 344
    iget-object v1, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v1

    .line 345
    iget v2, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 346
    const-string v2, "EASUserAPIV2Impl"

    const-string v3, ">> method = %s, code=%d, msg=%s <<"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v4, v7

    const/4 v0, 0x1

    iget v5, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 347
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget-object v1, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 346
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 350
    :cond_1
    iget-object v0, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;

    .line 351
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->isValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 340
    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public refreshToken()Ljava/lang/String;
    .locals 9

    .line 241
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call refreshToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;-><init>()V

    .line 246
    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLatestToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->setValue(Ljava/lang/String;)V

    .line 247
    new-instance v2, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v4, "user"

    const-string/jumbo v5, "userv2"

    const-string/jumbo v6, "userv2/refreshToken"

    .line 248
    invoke-static {v0}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object v7

    const/4 v0, 0x0

    new-array v8, v0, [B

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    check-cast v3, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v3, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v3

    .line 252
    iget v4, v3, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    .line 253
    const-string v4, "EASUserAPIV2Impl"

    const-string v5, ">> method = %s, code=%d, msg=%s <<"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v2, v6, v0

    const/4 v0, 0x1

    iget v2, v3, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x2

    iget-object v2, v3, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v2, v6, v0

    .line 253
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    return-object v1

    .line 260
    :cond_1
    nop

    .line 261
    iget-object v0, v3, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    .line 262
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLatestToken:Ljava/lang/String;

    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    return-object v1

    .line 243
    :cond_2
    :goto_0
    return-object v1
.end method

.method public refreshUserInfo()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 356
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call refreshUserInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "userv2"

    const-string/jumbo v5, "userv2/refreshUserInfo"

    const/4 v8, 0x0

    new-array v6, v8, [B

    new-array v7, v8, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 362
    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 363
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 364
    const-string v3, "EASUserAPIV2Impl"

    const-string v4, ">> method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v8

    const/4 v0, 0x1

    iget v6, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 365
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    iget-object v2, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v2, v5, v0

    .line 364
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-object v1

    .line 368
    :cond_1
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;

    .line 369
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/StringAutoSafeParcelable;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :cond_2
    :goto_0
    return-object v1
.end method

.method public declared-synchronized registerUserCallback()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    monitor-enter p0

    .line 105
    :try_start_0
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call registerUserCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "userService"

    const-string/jumbo v5, "userService/registerCallback"

    const/4 v1, 0x0

    new-array v6, v1, [B

    new-array v7, v1, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 108
    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;

    invoke-virtual {v3}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 109
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 114
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;

    .line 115
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->isValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 110
    :cond_0
    :try_start_1
    const-string v3, "EASUserAPIV2Impl"

    const-string v4, ">> \u670d\u52a1\u5185\u90e8\u9519\u8bef method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    iget-object v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v1, v5, v0

    .line 110
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    iget-object v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoginListener(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/ecarx/eas/sdk/userv2/ILoginListener;

    .line 145
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call setLoginListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->registerUserCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    .end local p1    # "listener":Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 158
    :cond_2
    goto :goto_0

    .line 156
    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    :goto_0
    return v1

    .line 147
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    .restart local p1    # "listener":Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    :cond_3
    :goto_1
    return v1
.end method

.method public unregisterLoginCallback(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z
    .locals 2
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 294
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call unregisterLoginCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->isNotAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "LoginCallbackList has been removed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 305
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mLoginListenerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    invoke-virtual {p0}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->unregisterUserCallback()Z

    move-result p1

    return p1

    .line 308
    :cond_2
    return p1

    .line 296
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;
    .restart local p1    # "callback":Lcom/ecarx/eas/sdk/userv2/ILoginListener;
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

    .line 119
    :try_start_0
    const-string v0, "EASUserAPIV2Impl"

    const-string v1, "call unregisterUserCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string/jumbo v3, "user"

    const-string/jumbo v4, "userService"

    const-string/jumbo v5, "userService/unregisterCallback"

    const/4 v1, 0x0

    new-array v6, v1, [B

    new-array v7, v1, [B

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 122
    iget-object v2, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    iget-object v3, p0, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->userCallback:Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;

    invoke-virtual {v3}, Lcom/ecarx/eas/sdk/v3/IUserCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 123
    iget v3, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 128
    iget-object v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v1, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;

    .line 129
    invoke-virtual {v0}, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->isValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 124
    :cond_0
    :try_start_1
    const-string v3, "EASUserAPIV2Impl"

    const-string v4, ">> \u670d\u52a1\u5185\u90e8\u9519\u8bef method = %s, code=%d, msg=%s <<"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    iget v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    iget-object v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    aput-object v1, v5, v0

    .line 124
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v0, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    iget-object v1, v2, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->getException(ILjava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
