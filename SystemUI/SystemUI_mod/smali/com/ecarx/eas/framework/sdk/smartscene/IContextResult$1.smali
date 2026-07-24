.class final Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    new-instance v0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;

    .end local p1    # "in":Landroid/os/Parcel;
    invoke-direct {v0, p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 50
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult$1;
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
    .locals 0
    .param p1, "size"    # I

    .line 58
    nop

    .end local p1    # "size":I
    new-array p1, p1, [Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 50
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult$1;
    invoke-virtual {p0, p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult$1;->newArray(I)[Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;

    move-result-object p1

    return-object p1
.end method
