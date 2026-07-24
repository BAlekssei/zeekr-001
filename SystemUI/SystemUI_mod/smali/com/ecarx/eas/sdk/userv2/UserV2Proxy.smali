.class public Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
.super Lcom/ecarx/eas/sdk/userv2/UserAPIV2;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserV2Proxy"

.field private static userV2Proxy:Lcom/ecarx/eas/framework/sdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecarx/eas/framework/sdk/Singleton<",
            "Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

.field private volatile mContext:Landroid/content/Context;

.field private volatile mPackageName:Ljava/lang/String;

.field private v3Binder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$1;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$1;-><init>()V

    sput-object v0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->userV2Proxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    .param p1, "x1"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p2, "x2"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p3, "x3"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .line 31
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    .end local p1    # "x1":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .end local p2    # "x2":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .end local p3    # "x3":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    invoke-direct {p0, p1, p2, p3}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->initUser(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;)Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;

    .line 31
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    iget-object p0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    .param p1, "x1"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p2, "x2"    # Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;

    .line 31
    nop

    .end local p0    # "x0":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    .end local p1    # "x1":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .end local p2    # "x2":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;
    invoke-direct {p0, p1, p2}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->initUser(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;)V

    return-void
.end method

.method public static get()Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    .locals 1

    .line 45
    sget-object v0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->userV2Proxy:Lcom/ecarx/eas/framework/sdk/Singleton;

    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;

    return-object v0
.end method

.method private initUser(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V
    .locals 5
    .param p1, "openAPIServiceType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p2, "selectClientType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p3, "serviceSupportType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .line 118
    const-string v0, "UserV2Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initUser - openAPIServiceType>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , clientType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne v0, p1, :cond_3

    .line 120
    nop

    .line 122
    .end local p1    # "openAPIServiceType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    :try_start_0
    invoke-static {}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getInstance()Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getServiceManager()Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception p1

    .line 124
    move-object p2, p1

    invoke-virtual {p1}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 127
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_0

    .line 128
    const-string p1, "UserV2Proxy"

    const-string v0, ">> OpenAPIService getServicePool is NULL <<"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_0
    nop

    .line 133
    .end local p2    # "selectClientType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v3, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "user"

    invoke-interface {p1, p2, v0, v3, v4}, Lcom/ecarx/eas/framework/sdk/common/internal/IServicePool;->getService(IILjava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    goto :goto_1

    .line 134
    :catch_1
    move-exception p1

    .line 135
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_1

    .line 139
    const-string p1, "UserV2Proxy"

    const-string p2, ">> OpenAPIService user binder is NULL <<"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 142
    :cond_1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->v3Binder:Landroid/os/IBinder;

    .line 144
    sget-object p2, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mContext:Landroid/content/Context;

    invoke-static {p2, v0, p3}, Lcom/ecarx/eas/sdk/UserFactory;->createUserAPIV2Factory(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    move-result-object p2

    iput-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    .line 145
    invoke-static {p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    instance-of p2, p2, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;

    if-eqz p2, :cond_2

    .line 147
    iget-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    check-cast p2, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;

    invoke-virtual {p2, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->init(Landroid/os/IInterface;)V

    .line 150
    :cond_2
    return-void

    .line 150
    .restart local p1    # "openAPIServiceType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .restart local p2    # "selectClientType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    :cond_3
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    if-ne p1, v0, :cond_7

    .line 150
    .end local p1    # "openAPIServiceType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    sget-object p1, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    if-ne p2, p1, :cond_7

    .line 151
    .end local p2    # "selectClientType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    nop

    .line 154
    :try_start_2
    invoke-static {}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getInstance()Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getEASServiceManager()Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    goto :goto_2

    .line 155
    :catch_2
    move-exception p1

    .line 156
    invoke-virtual {p1}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 158
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_4

    .line 159
    const-string p1, "UserV2Proxy"

    const-string p2, ">> EASFrameworkService is NULL <<"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 163
    :cond_4
    nop

    .line 165
    :try_start_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v3, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "user"

    invoke-interface {p1, p2, v0, v3, v4}, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;->getService(IILjava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 168
    goto :goto_3

    .line 166
    :catch_3
    move-exception p1

    .line 167
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    move-object p1, v2

    :goto_3
    if-nez p1, :cond_5

    .line 170
    const-string p1, "UserV2Proxy"

    const-string p2, ">> OpenAPIService user binder is NULL <<"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 173
    :cond_5
    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->v3Binder:Landroid/os/IBinder;

    .line 175
    sget-object p2, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mContext:Landroid/content/Context;

    invoke-static {p2, v0, p3}, Lcom/ecarx/eas/sdk/UserFactory;->createUserAPIV2Factory(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    move-result-object p2

    iput-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    .line 176
    invoke-static {p1}, Lcom/ecarx/eas/sdk/v3/IMemberCenterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/eas/sdk/v3/IMemberCenterService;

    move-result-object p1

    .line 177
    iget-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    instance-of p2, p2, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;

    if-eqz p2, :cond_6

    .line 178
    iget-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    check-cast p2, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;

    invoke-virtual {p2, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->init(Landroid/os/IInterface;)V

    .line 180
    :cond_6
    return-void

    .line 181
    :cond_7
    nop

    .line 183
    :try_start_4
    invoke-static {}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getInstance()Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getEASServiceManager()Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    move-result-object p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_4

    .line 186
    goto :goto_4

    .line 184
    :catch_4
    move-exception p1

    .line 185
    invoke-virtual {p1}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 188
    move-object p1, v2

    :goto_4
    if-nez p1, :cond_8

    .line 189
    const-string p1, "UserV2Proxy"

    const-string p2, ">> EASFrameworkService is NULL <<"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 193
    :cond_8
    sget-object p2, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mContext:Landroid/content/Context;

    .line 193
    .end local p3    # "serviceSupportType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    invoke-static {p2, v0, p3}, Lcom/ecarx/eas/sdk/UserFactory;->createUserAPIV2Factory(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    move-result-object p2

    iput-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    .line 194
    iget-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    instance-of p2, p2, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;

    if-eqz p2, :cond_9

    .line 195
    nop

    .line 195
    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    iget-object p2, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    check-cast p2, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;

    invoke-virtual {p2, p1}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->init(Landroid/os/IInterface;)V

    .line 198
    :cond_9
    return-void
.end method

.method private initUser(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;)V
    .locals 3
    .param p1, "openAPIServiceType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p2, "serviceVersionInfo"    # Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;

    .line 78
    const-string v0, "UserV2Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initUser: serviceVersionInfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->versionInfos:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->versionInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 92
    :cond_0
    nop

    .end local p2    # "serviceVersionInfo":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;
    iget-object p2, p2, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;->versionInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/VersionInfo;

    .line 93
    iget v1, v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/VersionInfo;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget v1, v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/VersionInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    iget v0, v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/VersionInfo;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 99
    sget-object p2, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-direct {p0, p1, p2, p2}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->initUser(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V

    .line 100
    return-void

    .line 102
    :cond_2
    goto :goto_0

    .line 94
    :cond_3
    :goto_1
    const-string p2, "UserV2Proxy"

    const-string v0, "initUser: not plugin service"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object p2, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-direct {p0, p1, p2, p2}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->initUser(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V

    .line 96
    return-void

    .line 107
    :cond_4
    sget-object p2, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-direct {p0, p1, p2, p2}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->initUser(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V

    .line 108
    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    .end local p1    # "openAPIServiceType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    return-void

    .line 84
    .restart local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    .restart local p1    # "openAPIServiceType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .restart local p2    # "serviceVersionInfo":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/ServiceVersionInfo;
    :cond_5
    :goto_2
    const-string v0, "UserV2Proxy"

    const-string v1, "initUser: no config service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-direct {p0, p1, v0, v0}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->initUser(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/ecarx/eas/sdk/userv2/IUserInfo;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->getUserInfo()Lcom/ecarx/eas/sdk/userv2/IUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;

    .line 50
    invoke-super {p0, p1, p2}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2;->init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V

    .line 51
    iput-object p1, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mPackageName:Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-static {}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->getInstance()Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;

    move-result-object v0

    .line 54
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callback":Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;
    const-string/jumbo v1, "user"

    new-instance v2, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;

    .line 54
    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    invoke-direct {v2, p0}, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy$2;-><init>(Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient;->init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;Ljava/lang/String;Lcom/ecarx/eas/framework/sdk/common/internal/EASFrameworkApiClient$IServiceConnectionCallback;)V
    :try_end_0
    .catch Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;->printStackTrace()V

    .line 75
    return-void
.end method

.method public launchToLogin(Z)Z
    .locals 1
    .param p1, "isBack"    # Z

    .line 242
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    return v0

    .line 245
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    .end local p1    # "isBack":Z
    invoke-interface {v0, p1}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->launchToLogin(Z)Z

    move-result p1

    return p1
.end method

.method public login(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 259
    const-string v0, "UserV2Proxy"

    const-string v1, ">> please wait for user init success!!! <<"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    .end local p1    # "param":Ljava/lang/String;
    invoke-interface {v0, p1}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->login(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logout()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 268
    const-string v0, "UserV2Proxy"

    const-string v1, ">> please wait for user init success!!! <<"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->logout()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public refreshToken()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->refreshToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public refreshUserInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 277
    const-string v0, "UserV2Proxy"

    const-string v1, ">> please wait for user init success!!! <<"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    invoke-interface {v0}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->refreshUserInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLoginListener(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/ecarx/eas/sdk/userv2/ILoginListener;

    .line 202
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    .end local p1    # "listener":Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    invoke-interface {v0, p1}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->setLoginListener(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z

    move-result p1

    return p1
.end method

.method public unregisterLoginCallback(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z
    .locals 1
    .param p1, "callback"    # Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;
    iget-object v0, p0, Lcom/ecarx/eas/sdk/userv2/UserV2Proxy;->mApi:Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;

    .end local p1    # "callback":Lcom/ecarx/eas/sdk/userv2/ILoginListener;
    invoke-interface {v0, p1}, Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;->unregisterLoginCallback(Lcom/ecarx/eas/sdk/userv2/ILoginListener;)Z

    move-result p1

    return p1
.end method
