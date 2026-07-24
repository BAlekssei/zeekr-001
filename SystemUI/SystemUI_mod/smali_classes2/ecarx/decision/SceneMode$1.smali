.class final Lecarx/decision/SceneMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/decision/SceneMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lecarx/decision/SceneMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lecarx/decision/SceneMode;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 155
    new-instance v0, Lecarx/decision/SceneMode;

    .end local p1    # "in":Landroid/os/Parcel;
    invoke-direct {v0, p1}, Lecarx/decision/SceneMode;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 152
    nop

    .end local p0    # "this":Lecarx/decision/SceneMode$1;
    invoke-virtual {p0, p1}, Lecarx/decision/SceneMode$1;->createFromParcel(Landroid/os/Parcel;)Lecarx/decision/SceneMode;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lecarx/decision/SceneMode;
    .locals 0
    .param p1, "size"    # I

    .line 160
    nop

    .end local p1    # "size":I
    new-array p1, p1, [Lecarx/decision/SceneMode;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 152
    nop

    .end local p0    # "this":Lecarx/decision/SceneMode$1;
    invoke-virtual {p0, p1}, Lecarx/decision/SceneMode$1;->newArray(I)[Lecarx/decision/SceneMode;

    move-result-object p1

    return-object p1
.end method
