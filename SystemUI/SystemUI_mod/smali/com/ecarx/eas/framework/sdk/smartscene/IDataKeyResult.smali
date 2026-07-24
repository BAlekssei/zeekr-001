.class public Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field careKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult$1;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult$1;-><init>()V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->careKeyList:Ljava/util/List;

    .line 14
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->careKeyList:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->result:Ljava/lang/String;

    .line 45
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->careKeyList:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getCareKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->careKeyList:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setCareKeyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "careKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
    .end local p1    # "careKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->careKeyList:Ljava/util/List;

    .line 30
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 21
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
    .end local p1    # "result":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->result:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 39
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->result:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->careKeyList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 41
    return-void
.end method
