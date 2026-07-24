.class public Lecarx/decision/PatternState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lecarx/decision/PatternState;",
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

.field private enabled:Z

.field private life:J

.field private lifeStart:J

.field private patternEvent:Lecarx/decision/PatternEvent;

.field private patternType:Ljava/lang/String;

.field private paused:Z

.field private priority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 227
    new-instance v0, Lecarx/decision/PatternState$1;

    invoke-direct {v0}, Lecarx/decision/PatternState$1;-><init>()V

    sput-object v0, Lecarx/decision/PatternState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lecarx/decision/PatternState;->enabled:Z

    .line 24
    iput-boolean v0, p0, Lecarx/decision/PatternState;->paused:Z

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lecarx/decision/PatternState;->life:J

    iput-wide v0, p0, Lecarx/decision/PatternState;->lifeStart:J

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lecarx/decision/PatternState;->dataMap:Ljava/util/Map;

    .line 186
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lecarx/decision/PatternState;->enabled:Z

    .line 24
    iput-boolean v0, p0, Lecarx/decision/PatternState;->paused:Z

    .line 25
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lecarx/decision/PatternState;->life:J

    iput-wide v1, p0, Lecarx/decision/PatternState;->lifeStart:J

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lecarx/decision/PatternState;->dataMap:Ljava/util/Map;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lecarx/decision/PatternState;->patternType:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lecarx/decision/PatternState;->priority:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lecarx/decision/PatternState;->enabled:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lecarx/decision/PatternState;->paused:Z

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lecarx/decision/PatternState;->life:J

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lecarx/decision/PatternState;->lifeStart:J

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 217
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lecarx/decision/PatternState;->dataMap:Ljava/util/Map;

    .line 218
    :goto_2
    if-ge v0, v1, :cond_2

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    iget-object v4, p0, Lecarx/decision/PatternState;->dataMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 223
    :cond_2
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "in":Landroid/os/Parcel;
    const-class v0, Lecarx/decision/PatternEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lecarx/decision/PatternEvent;

    iput-object p1, p0, Lecarx/decision/PatternState;->patternEvent:Lecarx/decision/PatternEvent;

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "patternType"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lecarx/decision/PatternState;->enabled:Z

    .line 24
    iput-boolean v0, p0, Lecarx/decision/PatternState;->paused:Z

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lecarx/decision/PatternState;->life:J

    iput-wide v0, p0, Lecarx/decision/PatternState;->lifeStart:J

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lecarx/decision/PatternState;->dataMap:Ljava/util/Map;

    .line 181
    nop

    .end local p1    # "patternType":Ljava/lang/String;
    iput-object p1, p0, Lecarx/decision/PatternState;->patternType:Ljava/lang/String;

    .line 182
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p2    # "enabled":Z
    iput-boolean p2, p0, Lecarx/decision/PatternState;->enabled:Z

    .line 183
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 190
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

    .line 73
    iget-object v0, p0, Lecarx/decision/PatternState;->dataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getLife()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lecarx/decision/PatternState;->life:J

    return-wide v0
.end method

.method public getLifeStart()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lecarx/decision/PatternState;->lifeStart:J

    return-wide v0
.end method

.method public getPatternEvent()Lecarx/decision/PatternEvent;
    .locals 1

    .line 53
    iget-object v0, p0, Lecarx/decision/PatternState;->patternEvent:Lecarx/decision/PatternEvent;

    return-object v0
.end method

.method public getPatternType()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lecarx/decision/PatternState;->patternType:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lecarx/decision/PatternState;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lecarx/decision/PatternState;->enabled:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lecarx/decision/PatternState;->paused:Z

    return v0
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

    .line 82
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lecarx/decision/PatternState;->dataMap:Ljava/util/Map;

    .line 83
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 120
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "enabled":Z
    iput-boolean p1, p0, Lecarx/decision/PatternState;->enabled:Z

    .line 121
    return-void
.end method

.method public setLife(J)V
    .locals 0
    .param p1, "life"    # J

    .line 158
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "life":J
    iput-wide p1, p0, Lecarx/decision/PatternState;->life:J

    .line 159
    return-void
.end method

.method public setLifeStart(J)V
    .locals 0
    .param p1, "lifeStart"    # J

    .line 177
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "lifeStart":J
    iput-wide p1, p0, Lecarx/decision/PatternState;->lifeStart:J

    .line 178
    return-void
.end method

.method public setPatternEvent(Lecarx/decision/PatternEvent;)V
    .locals 0
    .param p1, "patternEvent"    # Lecarx/decision/PatternEvent;

    .line 64
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "patternEvent":Lecarx/decision/PatternEvent;
    iput-object p1, p0, Lecarx/decision/PatternState;->patternEvent:Lecarx/decision/PatternEvent;

    .line 65
    return-void
.end method

.method public setPatternType(Ljava/lang/String;)V
    .locals 0
    .param p1, "patternType"    # Ljava/lang/String;

    .line 101
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "patternType":Ljava/lang/String;
    iput-object p1, p0, Lecarx/decision/PatternState;->patternType:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .line 139
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "paused":Z
    iput-boolean p1, p0, Lecarx/decision/PatternState;->paused:Z

    .line 140
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    .line 44
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "priority":Ljava/lang/String;
    iput-object p1, p0, Lecarx/decision/PatternState;->priority:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 195
    iget-object v0, p0, Lecarx/decision/PatternState;->patternType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lecarx/decision/PatternState;->priority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lecarx/decision/PatternState;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    iget-boolean v0, p0, Lecarx/decision/PatternState;->paused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 199
    iget-wide v0, p0, Lecarx/decision/PatternState;->life:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    iget-wide v0, p0, Lecarx/decision/PatternState;->lifeStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    iget-object v0, p0, Lecarx/decision/PatternState;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Lecarx/decision/PatternState;->dataMap:Ljava/util/Map;

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

    .line 203
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    goto :goto_0

    .line 206
    :cond_0
    nop

    .end local p0    # "this":Lecarx/decision/PatternState;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget-object v0, p0, Lecarx/decision/PatternState;->patternEvent:Lecarx/decision/PatternEvent;

    .end local p2    # "flags":I
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 207
    return-void
.end method
