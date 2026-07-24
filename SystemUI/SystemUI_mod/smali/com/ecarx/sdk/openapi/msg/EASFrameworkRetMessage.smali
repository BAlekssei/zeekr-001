.class public Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAttachInfo:[B

.field public mCode:I

.field public mMsg:Ljava/lang/String;

.field public mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage$1;

    invoke-direct {v0}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage$1;-><init>()V

    sput-object v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    nop

    .end local p1    # "code":I
    iput p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    .line 27
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    .end local p2    # "msg":Ljava/lang/String;
    iput-object p2, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mMsg:Ljava/lang/String;

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mMsg:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mAttachInfo:[B

    .line 34
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    .end local p1    # "in":Landroid/os/Parcel;
    const-class v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    iput-object p1, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    .line 35
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
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    iget v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mAttachInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 42
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget-object v0, p0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkRetMessage;->mRetMsg:Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    .end local p2    # "flags":I
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method
