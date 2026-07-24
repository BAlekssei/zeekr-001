.class public Lcom/ecarx/sdk/smartscene/ServiceModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/sdk/smartscene/ServiceModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callType:Ljava/lang/String;

.field private des:Ljava/lang/String;

.field private expiredTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private inputData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ecarx/sdk/smartscene/DataModel;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private outputData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ecarx/sdk/smartscene/DataModel;",
            ">;"
        }
    .end annotation
.end field

.field private required:Z

.field private updatedAt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/ecarx/sdk/smartscene/ServiceModel$1;

    invoke-direct {v0}, Lcom/ecarx/sdk/smartscene/ServiceModel$1;-><init>()V

    sput-object v0, Lcom/ecarx/sdk/smartscene/ServiceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->required:Z

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->inputData:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->outputData:Ljava/util/Map;

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->required:Z

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->inputData:Ljava/util/Map;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->outputData:Ljava/util/Map;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->id:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->name:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->des:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->required:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->callType:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->updatedAt:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->expiredTime:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->inputData:Ljava/util/Map;

    .line 72
    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    const-class v4, Lcom/ecarx/sdk/smartscene/DataModel;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ecarx/sdk/smartscene/DataModel;

    .line 75
    iget-object v5, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->inputData:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->outputData:Ljava/util/Map;

    .line 79
    :goto_2
    if-ge v2, v1, :cond_2

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-class v3, Lcom/ecarx/sdk/smartscene/DataModel;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/ecarx/sdk/smartscene/DataModel;

    .line 82
    iget-object v4, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->outputData:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 84
    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "in":Landroid/os/Parcel;
    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getCallType()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->callType:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->expiredTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInputData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ecarx/sdk/smartscene/DataModel;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->inputData:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ecarx/sdk/smartscene/DataModel;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->outputData:Ljava/util/Map;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->required:Z

    return v0
.end method

.method public setCallType(Ljava/lang/String;)V
    .locals 0
    .param p1, "callType"    # Ljava/lang/String;

    .line 164
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "callType":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->callType:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .line 148
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "des":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->des:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setExpiredTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiredTime"    # Ljava/lang/String;

    .line 180
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "expiredTime":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->expiredTime:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 132
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "id":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->id:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setInputData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ecarx/sdk/smartscene/DataModel;",
            ">;)V"
        }
    .end annotation

    .line 188
    .local p1, "inputData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ecarx/sdk/smartscene/DataModel;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "inputData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ecarx/sdk/smartscene/DataModel;>;"
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->inputData:Ljava/util/Map;

    .line 189
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 140
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "name":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->name:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setOutputData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ecarx/sdk/smartscene/DataModel;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "outputData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ecarx/sdk/smartscene/DataModel;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "outputData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ecarx/sdk/smartscene/DataModel;>;"
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->outputData:Ljava/util/Map;

    .line 197
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .line 156
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "required":Z
    iput-boolean p1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->required:Z

    .line 157
    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .line 172
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    .end local p1    # "updatedAt":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->updatedAt:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 88
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->des:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-boolean v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->required:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 92
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->callType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->updatedAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->expiredTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->inputData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->inputData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->outputData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/smartscene/ServiceModel;
    iget-object v0, p0, Lcom/ecarx/sdk/smartscene/ServiceModel;->outputData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    goto :goto_1

    .line 105
    .end local p1    # "dest":Landroid/os/Parcel;
    .end local p2    # "flags":I
    :cond_1
    return-void
.end method
