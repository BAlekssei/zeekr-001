.class public Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field result:Ljava/lang/String;

.field sceneModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lecarx/decision/SceneMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult$1;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult$1;-><init>()V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->sceneModeList:Ljava/util/List;

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->sceneModeList:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->result:Ljava/lang/String;

    .line 31
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;
    .end local p1    # "in":Landroid/os/Parcel;
    sget-object v0, Lecarx/decision/SceneMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->sceneModeList:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneModeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lecarx/decision/SceneMode;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->sceneModeList:Ljava/util/List;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 39
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;
    .end local p1    # "result":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->result:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSceneModeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lecarx/decision/SceneMode;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "sceneModeList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/SceneMode;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;
    .end local p1    # "sceneModeList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/SceneMode;>;"
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->sceneModeList:Ljava/util/List;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 57
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->result:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;
    .end local p1    # "parcel":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->sceneModeList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 59
    return-void
.end method
