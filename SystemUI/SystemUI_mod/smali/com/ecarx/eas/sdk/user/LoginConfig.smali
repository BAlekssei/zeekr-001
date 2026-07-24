.class public Lcom/ecarx/eas/sdk/user/LoginConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile instance:Lcom/ecarx/eas/sdk/user/LoginConfig;

.field private static mCtResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .end local p0    # "this":Lcom/ecarx/eas/sdk/user/LoginConfig;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/ecarx/eas/sdk/user/LoginConfig;->mCtResolver:Landroid/content/ContentResolver;

    goto :goto_0

    .line 24
    :cond_0
    nop

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sput-object p1, Lcom/ecarx/eas/sdk/user/LoginConfig;->mCtResolver:Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :goto_0
    return-void
.end method

.method public static getSingleton(Landroid/content/Context;)Lcom/ecarx/eas/sdk/user/LoginConfig;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/ecarx/eas/sdk/user/LoginConfig;->instance:Lcom/ecarx/eas/sdk/user/LoginConfig;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/ecarx/eas/sdk/user/LoginConfig;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/ecarx/eas/sdk/user/LoginConfig;->instance:Lcom/ecarx/eas/sdk/user/LoginConfig;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/ecarx/eas/sdk/user/LoginConfig;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v1, p0}, Lcom/ecarx/eas/sdk/user/LoginConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ecarx/eas/sdk/user/LoginConfig;->instance:Lcom/ecarx/eas/sdk/user/LoginConfig;

    .line 38
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 40
    :cond_1
    :goto_0
    sget-object p0, Lcom/ecarx/eas/sdk/user/LoginConfig;->instance:Lcom/ecarx/eas/sdk/user/LoginConfig;

    return-object p0
.end method


# virtual methods
.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 46
    :try_start_0
    sget-object v0, Lcom/ecarx/eas/sdk/user/LoginConfig;->mCtResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ecarx/eas/sdk/constant/Constants;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .end local p1    # "key":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object p1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    const/4 p1, 0x0

    return-object p1
.end method
