.class public Lcom/ecarx/eas/sdk/UserFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUserAPIFactory(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)Lcom/ecarx/eas/sdk/user/InternalUserAPI;
    .locals 1
    .param p0, "clientType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceSupportType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .line 21
    sget-object v0, Lcom/ecarx/eas/sdk/UserFactory$1;->$SwitchMap$com$ecarx$eas$framework$sdk$common$internal$ClientType:[I

    .end local p0    # "clientType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 27
    invoke-static {}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->get()Lcom/ecarx/eas/sdk/user/UserAPIImpl;

    move-result-object p0

    .line 28
    nop

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "serviceSupportType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    invoke-virtual {p0, p1, p2}, Lcom/ecarx/eas/sdk/user/UserAPIImpl;->initData(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V

    .line 29
    return-object p0

    .line 23
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "serviceSupportType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    :cond_0
    invoke-static {}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->get()Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/user/EASUserAPIImpl;->init(Landroid/content/Context;)V

    .line 25
    return-object p0
.end method

.method public static createUserAPIV2Factory(Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)Lcom/ecarx/eas/sdk/userv2/InternalUserAPIV2;
    .locals 1
    .param p0, "clientType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceSupportType"    # Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .line 34
    sget-object v0, Lcom/ecarx/eas/sdk/UserFactory$1;->$SwitchMap$com$ecarx$eas$framework$sdk$common$internal$ClientType:[I

    .end local p0    # "clientType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    invoke-virtual {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 40
    invoke-static {}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->get()Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;

    move-result-object p0

    .line 41
    nop

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "serviceSupportType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    invoke-virtual {p0, p1, p2}, Lcom/ecarx/eas/sdk/userv2/UserAPIV2Impl;->initData(Landroid/content/Context;Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;)V

    .line 42
    return-object p0

    .line 36
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "serviceSupportType":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    :cond_0
    invoke-static {}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->get()Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;

    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/sdk/userv2/EASUserAPIV2Impl;->init(Landroid/content/Context;)V

    .line 38
    return-object p0
.end method
