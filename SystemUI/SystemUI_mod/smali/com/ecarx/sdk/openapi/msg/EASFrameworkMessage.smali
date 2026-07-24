.class public Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAttachParam:[B

.field public mMethod:Ljava/lang/String;

.field public mMethodParam:[B

.field public mMoudleName:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage$1;

    invoke-direct {v0}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage$1;-><init>()V

    sput-object v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mServiceName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMoudleName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethodParam:[B

    .line 41
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mAttachParam:[B

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "moudleName"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "methodParam"    # [B
    .param p5, "attachParam"    # [B

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    nop

    .end local p1    # "serviceName":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mServiceName:Ljava/lang/String;

    .line 30
    nop

    .end local p2    # "moudleName":Ljava/lang/String;
    iput-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMoudleName:Ljava/lang/String;

    .line 31
    nop

    .end local p3    # "method":Ljava/lang/String;
    iput-object p3, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    .line 32
    nop

    .end local p4    # "methodParam":[B
    iput-object p4, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethodParam:[B

    .line 33
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .end local p5    # "attachParam":[B
    iput-object p5, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mAttachParam:[B

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 46
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMoudleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mMethodParam:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 50
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;->mAttachParam:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 51
    return-void
.end method
