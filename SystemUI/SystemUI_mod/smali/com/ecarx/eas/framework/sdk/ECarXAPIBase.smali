.class public Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_CODE:I = -0x1

.field public static final SUPPORT_AUTH_VERSION:I = 0x14a

.field public static final VERSION:Ljava/lang/String;

.field public static final VERSION_INT:I


# instance fields
.field protected L:Lcom/ecarx/eas/sdk/log/LogProxy;

.field protected context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "4.2.11(bbb)"

    sput-object v0, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;->VERSION:Ljava/lang/String;

    .line 41
    const/16 v0, 0x19b

    sput v0, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;->VERSION_INT:I

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/ecarx/eas/sdk/log/LogProxy;

    invoke-direct {v0}, Lcom/ecarx/eas/sdk/log/LogProxy;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;->L:Lcom/ecarx/eas/sdk/log/LogProxy;

    return-void
.end method


# virtual methods
.method public final getPublishDesc()Ljava/lang/String;
    .locals 1

    .line 82
    const-string/jumbo v0, "\u65b0\u65b9\u6848\u8fc1\u79fb"

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "4.2.11(bbb)"

    return-object v0
.end method

.method public final getVersionInt()I
    .locals 1

    .line 71
    const/16 v0, 0x19b

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/ecarx/eas/sdk/ECarXApiClient$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;->context:Landroid/content/Context;

    return-void

    .line 97
    :cond_0
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;
    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;->context:Landroid/content/Context;

    .line 99
    return-void
.end method

.method public release()V
    .locals 0

    .line 108
    return-void
.end method

.method public setLogEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 124
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;->L:Lcom/ecarx/eas/sdk/log/LogProxy;

    .end local p1    # "enable":Z
    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/log/LogProxy;->setLogEnable(Z)V

    .line 125
    return-void
.end method

.method public setLogImpl(Lcom/ecarx/eas/sdk/log/ILog;)V
    .locals 1
    .param p1, "logImpl"    # Lcom/ecarx/eas/sdk/log/ILog;

    .line 152
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;->L:Lcom/ecarx/eas/sdk/log/LogProxy;

    .end local p1    # "logImpl":Lcom/ecarx/eas/sdk/log/ILog;
    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/log/LogProxy;->setLogImpl(Lcom/ecarx/eas/sdk/log/ILog;)V

    .line 153
    return-void
.end method

.method public setLogLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 141
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/ECarXAPIBase;->L:Lcom/ecarx/eas/sdk/log/LogProxy;

    .end local p1    # "level":I
    invoke-virtual {v0, p1}, Lcom/ecarx/eas/sdk/log/LogProxy;->setLogLevel(I)V

    .line 142
    return-void
.end method
