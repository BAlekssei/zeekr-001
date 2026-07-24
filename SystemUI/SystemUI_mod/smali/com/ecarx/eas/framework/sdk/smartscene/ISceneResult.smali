.class public Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field patternEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lecarx/decision/PatternEvent;",
            ">;"
        }
    .end annotation
.end field

.field patternStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lecarx/decision/PatternState;",
            ">;"
        }
    .end annotation
.end field

.field result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult$1;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult$1;-><init>()V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternStateList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternEventList:Ljava/util/List;

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternStateList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternEventList:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->result:Ljava/lang/String;

    .line 64
    sget-object v0, Lecarx/decision/PatternState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternStateList:Ljava/util/List;

    .line 65
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;
    .end local p1    # "in":Landroid/os/Parcel;
    sget-object v0, Lecarx/decision/PatternEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternEventList:Ljava/util/List;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lecarx/decision/PatternState;",
            ">;",
            "Ljava/util/List<",
            "Lecarx/decision/PatternEvent;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p2, "patternStateList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/PatternState;>;"
    .local p3, "patternEventList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/PatternEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternStateList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternEventList:Ljava/util/List;

    .line 21
    nop

    .end local p1    # "result":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->result:Ljava/lang/String;

    .line 22
    nop

    .end local p2    # "patternStateList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/PatternState;>;"
    iput-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternStateList:Ljava/util/List;

    .line 23
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;
    .end local p3    # "patternEventList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/PatternEvent;>;"
    iput-object p3, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternEventList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getPatternEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lecarx/decision/PatternEvent;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternEventList:Ljava/util/List;

    return-object v0
.end method

.method public getPatternStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lecarx/decision/PatternState;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternStateList:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setPatternEventList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lecarx/decision/PatternEvent;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "patternEventList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/PatternEvent;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;
    .end local p1    # "patternEventList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/PatternEvent;>;"
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternEventList:Ljava/util/List;

    .line 48
    return-void
.end method

.method public setPatternStateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lecarx/decision/PatternState;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p1, "patternStateList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/PatternState;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;
    .end local p1    # "patternStateList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/PatternState;>;"
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternStateList:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 31
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;
    .end local p1    # "result":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->result:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 57
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->result:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternStateList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 59
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;
    .end local p1    # "parcel":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->patternEventList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 60
    return-void
.end method
