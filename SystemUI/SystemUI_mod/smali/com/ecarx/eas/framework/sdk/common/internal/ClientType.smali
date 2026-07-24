.class public final enum Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

.field public static final enum EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

.field public static final enum OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    const-string v1, "OpenAPI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    const-string v1, "EASFramework"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->OpenAPI:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->$VALUES:[Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    .end local p0    # "name":Ljava/lang/String;
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    return-object p0
.end method

.method public static values()[Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;
    .locals 1

    .line 10
    sget-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->$VALUES:[Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-virtual {v0}, [Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    return-object v0
.end method
