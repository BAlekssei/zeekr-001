.class public Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;
.super Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable;
.source "SourceFile"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Z
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;

    const-class v1, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;

    invoke-direct {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public isValue()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->value:Z

    return v0
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 29
    nop

    .end local p0    # "this":Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;
    .end local p1    # "value":Z
    iput-boolean p1, p0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->value:Z

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{value = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ecarx/eas/sdk/bean/BooleanAutoSafeParcelable;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
