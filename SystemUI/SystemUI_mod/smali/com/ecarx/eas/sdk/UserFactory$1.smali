.class synthetic Lcom/ecarx/eas/sdk/UserFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/sdk/UserFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ecarx$eas$framework$sdk$common$internal$ClientType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    invoke-static {}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->values()[Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ecarx/eas/sdk/UserFactory$1;->$SwitchMap$com$ecarx$eas$framework$sdk$common$internal$ClientType:[I

    :try_start_0
    sget-object v0, Lcom/ecarx/eas/sdk/UserFactory$1;->$SwitchMap$com$ecarx$eas$framework$sdk$common$internal$ClientType:[I

    sget-object v1, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->EASFramework:Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/common/internal/ClientType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
