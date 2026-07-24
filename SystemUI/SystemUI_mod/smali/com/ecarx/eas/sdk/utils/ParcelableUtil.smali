.class public Lcom/ecarx/eas/sdk/utils/ParcelableUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall(Landroid/os/Parcelable;)[B
    .locals 2
    .param p0, "parcelable"    # Landroid/os/Parcelable;

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 21
    nop

    .end local p0    # "parcelable":Landroid/os/Parcelable;
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-object p0
.end method

.method private static unMarshall([B)Landroid/os/Parcel;
    .locals 3
    .param p0, "bytes"    # [B

    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 36
    nop

    .end local p0    # "bytes":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    return-object v0
.end method

.method public static unMarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 0
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 53
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    nop

    .end local p0    # "bytes":[B
    invoke-static {p0}, Lcom/ecarx/eas/sdk/utils/ParcelableUtil;->unMarshall([B)Landroid/os/Parcel;

    move-result-object p0

    .line 55
    nop

    .end local p1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 59
    return-object p1
.end method
