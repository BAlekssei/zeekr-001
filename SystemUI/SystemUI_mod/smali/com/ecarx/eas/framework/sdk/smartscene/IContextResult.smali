.class public Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field basicContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lecarx/decision/BasicContext;",
            ">;"
        }
    .end annotation
.end field

.field result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult$1;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult$1;-><init>()V

    sput-object v0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->basicContextList:Ljava/util/List;

    .line 16
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->basicContextList:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->result:Ljava/lang/String;

    .line 36
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
    .end local p1    # "in":Landroid/os/Parcel;
    sget-object v0, Lecarx/decision/BasicContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->basicContextList:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getBasicContextList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lecarx/decision/BasicContext;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->basicContextList:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setBasicContextList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lecarx/decision/BasicContext;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "basicContextList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/BasicContext;>;"
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
    .end local p1    # "basicContextList":Ljava/util/List;, "Ljava/util/List<Lecarx/decision/BasicContext;>;"
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->basicContextList:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 23
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
    .end local p1    # "result":Ljava/lang/String;
    iput-object p1, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->result:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 41
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->result:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    nop

    .end local p0    # "this":Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->basicContextList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 43
    return-void
.end method
