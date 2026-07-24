.class public Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private param:Ljava/lang/String;

.field private paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam$1;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam$1;-><init>()V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->params:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    .line 17
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->params:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->param:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->params:Ljava/util/List;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    .line 56
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;
    .end local p1    # "in":Landroid/os/Parcel;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->params:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    .line 20
    nop

    .end local p1    # "param":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->param:Ljava/lang/String;

    .line 21
    nop

    .end local p2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->params:Ljava/util/List;

    .line 22
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;
    .end local p3    # "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p3, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getParamMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->params:Ljava/util/List;

    return-object v0
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .line 30
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;
    .end local p1    # "param":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->param:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setParamMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;
    .end local p1    # "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    .line 47
    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;
    .end local p1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->params:Ljava/util/List;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 65
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->param:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->params:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 67
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->paramMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    goto :goto_0

    .line 72
    .end local p1    # "dest":Landroid/os/Parcel;
    :cond_0
    return-void
.end method
