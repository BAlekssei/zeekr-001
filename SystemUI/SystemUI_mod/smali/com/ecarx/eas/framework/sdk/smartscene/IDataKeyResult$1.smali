.class final Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 51
    new-instance v0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;

    .end local p1    # "source":Landroid/os/Parcel;
    invoke-direct {v0, p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 48
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult$1;
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
    .locals 0
    .param p1, "size"    # I

    .line 56
    nop

    .end local p1    # "size":I
    new-array p1, p1, [Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult$1;
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult$1;->newArray(I)[Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;

    move-result-object p1

    return-object p1
.end method
