.class public Lecarx/xsf/mediacenter/vr/QMusicResult;
.super Ljava/lang/Object;
.source "QMusicResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/zeekr/sdk/base/annotation/KeepSDK;
.end annotation

.annotation runtime Lcom/zeekr/sdk/base/proto/annotation/ProtobufClass;
.end annotation


# static fields
.field public static final COLLECTION_PLAY_TYPE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lecarx/xsf/mediacenter/vr/QMusicResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PLAY_TYPE:I = -0x1

.field public static final OPERATION_CLOSE:I = 0x2

.field public static final OPERATION_PLAY:I = 0x1

.field public static final OPERATION_SEARCH:I = 0x0

.field public static final QUERY_TYPE_NAME:I = 0x0

.field public static final QUERY_TYPE_SINGER:I = 0x1

.field public static final QUERY_TYPE_UNKNOWN:I = -0x1

.field public static final RECOMMEND_PLAY_TYPE:I = 0x2

.field public static final SOURCE_TYPE_BT:I = 0x2

.field public static final SOURCE_TYPE_LOCAL:I = 0x0

.field public static final SOURCE_TYPE_ONLINE:I = 0x6

.field public static final SOURCE_TYPE_STATION:I = 0x8

.field public static final SOURCE_TYPE_UNKNOWN:I = -0x2

.field public static final SOURCE_TYPE_USB:I = 0x1

.field public static final SOURCE_TYPE_USB2:I = 0x7

.field public static final TYPE_QUALITY_HIGHER:I = 0x2

.field public static final TYPE_QUALITY_HIGHEST:I = 0x3

.field public static final TYPE_QUALITY_NON_DESTRUCTIVE:I = 0x4

.field public static final TYPE_QUALITY_STANDARD:I = 0x1


# instance fields
.field public album:Ljava/lang/String;

.field public albumIndex:I

.field public artist:Ljava/lang/String;

.field public author:Ljava/lang/String;

.field public categoryStr:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public items:Ljava/lang/String;

.field public mediaCp:Ljava/lang/String;

.field public mediaId:Ljava/lang/String;

.field public mediaType:I

.field public operation:I

.field public qualityType:I

.field public rating:Ljava/lang/String;

.field public rawText:Ljava/lang/String;

.field public song:Ljava/lang/String;

.field public sourceType:I

.field public subCategoryStr:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public targetPlayType:I

.field public targetType:Ljava/lang/String;

.field public weakmatch:Ljava/lang/String;

.field public year:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lecarx/xsf/mediacenter/vr/QMusicResult$a;

    invoke-direct {v0}, Lecarx/xsf/mediacenter/vr/QMusicResult$a;-><init>()V

    sput-object v0, Lecarx/xsf/mediacenter/vr/QMusicResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->operation:I

    .line 7
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->rawText:Ljava/lang/String;

    .line 13
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->song:Ljava/lang/String;

    .line 18
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->weakmatch:Ljava/lang/String;

    .line 28
    const/4 v1, -0x2

    iput v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->sourceType:I

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->artist:Ljava/lang/String;

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->album:Ljava/lang/String;

    .line 84
    const/4 v1, -0x1

    iput v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->albumIndex:I

    .line 88
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->categoryStr:Ljava/lang/String;

    .line 92
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->subCategoryStr:Ljava/lang/String;

    .line 97
    iput v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaType:I

    .line 102
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaId:Ljava/lang/String;

    .line 107
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaCp:Ljava/lang/String;

    .line 112
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetType:Ljava/lang/String;

    .line 117
    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->qualityType:I

    .line 122
    iput v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetPlayType:I

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->items:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->operation:I

    .line 134
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->rawText:Ljava/lang/String;

    .line 140
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->song:Ljava/lang/String;

    .line 145
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->weakmatch:Ljava/lang/String;

    .line 155
    const/4 v1, -0x2

    iput v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->sourceType:I

    .line 161
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->artist:Ljava/lang/String;

    .line 167
    const-string v1, ""

    iput-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->album:Ljava/lang/String;

    .line 211
    const/4 v1, -0x1

    iput v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->albumIndex:I

    .line 215
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->categoryStr:Ljava/lang/String;

    .line 219
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->subCategoryStr:Ljava/lang/String;

    .line 224
    iput v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaType:I

    .line 229
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaId:Ljava/lang/String;

    .line 234
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaCp:Ljava/lang/String;

    .line 239
    const-string v2, ""

    iput-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetType:Ljava/lang/String;

    .line 244
    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->qualityType:I

    .line 249
    iput v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetPlayType:I

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->items:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->operation:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->rawText:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->song:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->weakmatch:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->sourceType:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->artist:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->album:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->author:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->composer:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->description:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->subtitle:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->rating:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->year:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->albumIndex:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->categoryStr:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->subCategoryStr:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaType:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaId:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaCp:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetType:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->qualityType:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetPlayType:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->items:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QMusicResult{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->operation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    const-string v1, ", rawText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->rawText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    const-string v2, ", song=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->song:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    const-string v2, ", weakmatch=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->weakmatch:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    const-string v2, ", sourceType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->sourceType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    const-string v2, ", artist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    const-string v2, ", album=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->album:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    const-string v2, ", composer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->composer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    const-string v2, ", subtitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, ", rating=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->rating:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ", year=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->year:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ", albumIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->albumIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, ", categoryStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->categoryStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ", subCategoryStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->subCategoryStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", mediaType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, ", mediaId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, ", mediaCp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaCp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", targetType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ", qualityType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->qualityType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, ", targetPlayType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetPlayType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, ", items=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->items:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->operation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->rawText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->song:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->weakmatch:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->sourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->artist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->album:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->composer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->rating:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->year:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->albumIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->categoryStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->subCategoryStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->mediaCp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->qualityType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->targetPlayType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object p2, p0, Lecarx/xsf/mediacenter/vr/QMusicResult;->items:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
