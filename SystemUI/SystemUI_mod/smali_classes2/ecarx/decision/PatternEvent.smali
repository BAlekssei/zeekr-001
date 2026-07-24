.class public Lecarx/decision/PatternEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lecarx/decision/PatternEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field private timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lecarx/decision/PatternEvent$1;

    invoke-direct {v0}, Lecarx/decision/PatternEvent$1;-><init>()V

    sput-object v0, Lecarx/decision/PatternEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lecarx/decision/PatternEvent;->dataMap:Ljava/util/Map;

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lecarx/decision/PatternEvent;->dataMap:Ljava/util/Map;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/decision/PatternEvent;->key:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lecarx/decision/PatternEvent;->timeStamp:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lecarx/decision/PatternEvent;->dataMap:Ljava/util/Map;

    .line 112
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-object v4, p0, Lecarx/decision/PatternEvent;->dataMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local p0    # "this":Lecarx/decision/PatternEvent;
    .end local p1    # "in":Landroid/os/Parcel;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lecarx/decision/PatternEvent;->dataMap:Ljava/util/Map;

    .line 31
    nop

    .end local p1    # "key":Ljava/lang/String;
    iput-object p1, p0, Lecarx/decision/PatternEvent;->key:Ljava/lang/String;

    .line 32
    nop

    .end local p0    # "this":Lecarx/decision/PatternEvent;
    .end local p2    # "timeStamp":J
    iput-wide p2, p0, Lecarx/decision/PatternEvent;->timeStamp:J

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getDataMap()Ljava/util/Map;
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

    .line 78
    iget-object v0, p0, Lecarx/decision/PatternEvent;->dataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lecarx/decision/PatternEvent;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lecarx/decision/PatternEvent;->timeStamp:J

    return-wide v0
.end method

.method public setDataMap(Ljava/util/Map;)V
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

    .line 88
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .end local p0    # "this":Lecarx/decision/PatternEvent;
    .end local p1    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lecarx/decision/PatternEvent;->dataMap:Ljava/util/Map;

    .line 89
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 50
    nop

    .end local p0    # "this":Lecarx/decision/PatternEvent;
    .end local p1    # "key":Ljava/lang/String;
    iput-object p1, p0, Lecarx/decision/PatternEvent;->key:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 69
    nop

    .end local p0    # "this":Lecarx/decision/PatternEvent;
    .end local p1    # "timeStamp":J
    iput-wide p1, p0, Lecarx/decision/PatternEvent;->timeStamp:J

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 98
    iget-object p2, p0, Lecarx/decision/PatternEvent;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-wide v0, p0, Lecarx/decision/PatternEvent;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-object p2, p0, Lecarx/decision/PatternEvent;->dataMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    nop

    .end local p0    # "this":Lecarx/decision/PatternEvent;
    iget-object p2, p0, Lecarx/decision/PatternEvent;->dataMap:Ljava/util/Map;

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

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    goto :goto_0

    .line 105
    .end local p1    # "dest":Landroid/os/Parcel;
    :cond_0
    return-void
.end method
