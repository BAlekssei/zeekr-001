.class public Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;
.super Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public param:Ljava/lang/String;
    .annotation runtime Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelable$Field;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;

    const-class v1, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;

    invoke-direct {v0, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable$AutoCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/StrMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/AutoSafeParcelable;-><init>()V

    .line 17
    return-void
.end method
