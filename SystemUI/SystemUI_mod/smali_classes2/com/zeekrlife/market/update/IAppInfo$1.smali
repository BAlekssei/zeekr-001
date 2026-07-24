.class Lcom/zeekrlife/market/update/IAppInfo$1;
.super Ljava/lang/Object;
.source "IAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/IAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/zeekrlife/market/update/IAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zeekrlife/market/update/IAppInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 14
    new-instance v0, Lcom/zeekrlife/market/update/IAppInfo;

    invoke-direct {v0, p1}, Lcom/zeekrlife/market/update/IAppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/IAppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zeekrlife/market/update/IAppInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/zeekrlife/market/update/IAppInfo;
    .locals 1
    .param p1, "size"    # I

    .line 19
    new-array v0, p1, [Lcom/zeekrlife/market/update/IAppInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/zeekrlife/market/update/IAppInfo$1;->newArray(I)[Lcom/zeekrlife/market/update/IAppInfo;

    move-result-object p1

    return-object p1
.end method
