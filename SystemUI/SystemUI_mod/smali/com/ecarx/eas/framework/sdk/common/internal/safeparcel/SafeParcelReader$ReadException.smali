.class public Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader$ReadException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 218
    nop

    .end local p1    # "message":Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 219
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/common/internal/safeparcel/SafeParcelReader$ReadException;
    return-void
.end method
