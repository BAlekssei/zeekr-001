.class public Lcom/ecarx/sdk/smartscene/DataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/sdk/smartscene/DataModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/ecarx/sdk/smartscene/DataModel$1;

    invoke-direct {v0}, Lcom/ecarx/sdk/smartscene/DataModel$1;-><init>()V

    sput-object v0, Lcom/ecarx/sdk/smartscene/DataModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
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

    iput-object v0, p0, Lcom/ecarx/sdk/smartscene/DataModel;->id:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/smartscene/DataModel;->name:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/smartscene/DataModel;->desc:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/smartscene/DataModel;->type:Ljava/lang/String;

    .line 37
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/DataModel;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/DataModel;->value:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/DataModel;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/DataModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/DataModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/DataModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/DataModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 76
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/DataModel;
    .end local p1    # "desc":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/DataModel;->desc:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 60
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/DataModel;
    .end local p1    # "id":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/DataModel;->id:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 68
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/DataModel;
    .end local p1    # "name":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/DataModel;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 84
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/DataModel;
    .end local p1    # "type":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/DataModel;->type:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 92
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/DataModel;
    .end local p1    # "value":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/DataModel;->value:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 102
    iget-object p2, p0, Lcom/ecarx/sdk/smartscene/DataModel;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/ecarx/sdk/smartscene/DataModel;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/ecarx/sdk/smartscene/DataModel;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/ecarx/sdk/smartscene/DataModel;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/DataModel;
    .end local p1    # "parcel":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/ecarx/sdk/smartscene/DataModel;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    return-void
.end method
