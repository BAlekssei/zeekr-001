.class public Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public mCode:I

.field public mData:[B

.field public mMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage$1;

    invoke-direct {v0}, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage$1;-><init>()V

    sput-object v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    nop

    .end local p1    # "code":I
    iput p1, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 28
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    .end local p2    # "msg":Ljava/lang/String;
    iput-object p2, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    .line 36
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mBinder:Landroid/os/IBinder;

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 41
    iget p2, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 44
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 45
    return-void
.end method
