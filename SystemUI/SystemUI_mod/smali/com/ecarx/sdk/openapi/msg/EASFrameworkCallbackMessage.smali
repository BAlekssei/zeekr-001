.class public Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAttachParam:[B

.field public mMethod:Ljava/lang/String;

.field public mMethodParam:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage$1;

    invoke-direct {v0}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage$1;-><init>()V

    sput-object v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->mMethod:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->mMethodParam:[B

    .line 35
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->mAttachParam:[B

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "methodParam"    # [B
    .param p3, "attachParam"    # [B

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    nop

    .end local p1    # "method":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->mMethod:Ljava/lang/String;

    .line 28
    nop

    .end local p2    # "methodParam":[B
    iput-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->mMethodParam:[B

    .line 29
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;
    .end local p3    # "attachParam":[B
    iput-object p3, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->mAttachParam:[B

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 40
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->mMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->mMethodParam:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 42
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkCallbackMessage;->mAttachParam:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 43
    return-void
.end method
