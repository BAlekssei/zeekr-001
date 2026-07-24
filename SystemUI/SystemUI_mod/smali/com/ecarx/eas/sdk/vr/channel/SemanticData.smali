.class public Lcom/ecarx/eas/sdk/vr/channel/SemanticData;
.super Ljava/lang/Object;
.source "SemanticData.java"


# annotations
.annotation build Lcom/zeekr/sdk/base/annotation/KeepSDK;
.end annotation


# instance fields
.field private albumName:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private commandObject:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private mediaCtrl:Ljava/lang/String;

.field private mediaSource:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;

.field private modeType:I

.field private originInfo:Ljava/lang/String;

.field private semantic:I

.field private subTypeName:Ljava/lang/String;

.field private targetType:Ljava/lang/String;

.field private titleName:Ljava/lang/String;

.field private tunerFrequency:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->modeType:I

    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandObject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->commandObject:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaCtrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->mediaCtrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->mediaSource:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getModeType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->modeType:I

    return v0
.end method

.method public getOriginInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->originInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSemantic()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->semantic:I

    return v0
.end method

.method public getSubTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->subTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->targetType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public getTunerFrequency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->tunerFrequency:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->artistName:Ljava/lang/String;

    return-void
.end method

.method public setCommandObject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->commandObject:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setMediaCtrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->mediaCtrl:Ljava/lang/String;

    return-void
.end method

.method public setMediaSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->mediaSource:Ljava/lang/String;

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->mediaType:Ljava/lang/String;

    return-void
.end method

.method public setModeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->modeType:I

    return-void
.end method

.method public setOriginInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->originInfo:Ljava/lang/String;

    return-void
.end method

.method public setSemantic(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->semantic:I

    return-void
.end method

.method public setSubTypeName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->subTypeName:Ljava/lang/String;

    return-void
.end method

.method public setTargetType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->targetType:Ljava/lang/String;

    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->titleName:Ljava/lang/String;

    return-void
.end method

.method public setTunerFrequency(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->tunerFrequency:Ljava/lang/String;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->typeName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "SemanticData{semantic="

    invoke-static {v0}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    iget v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->semantic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mediaSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->mediaSource:Ljava/lang/String;

    .line 360
    const-string v2, ", mediaType=\'"

    const/16 v3, 0x27

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->mediaType:Ljava/lang/String;

    .line 719
    const-string v2, ", titleName=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1077
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->titleName:Ljava/lang/String;

    .line 1078
    const-string v2, ", artistName=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1436
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->artistName:Ljava/lang/String;

    .line 1437
    const-string v2, ", albumName=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1795
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->albumName:Ljava/lang/String;

    .line 1796
    const-string v2, ", typeName=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2154
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->typeName:Ljava/lang/String;

    .line 2155
    const-string v2, ", mediaCtrl=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2513
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->mediaCtrl:Ljava/lang/String;

    .line 2514
    const-string v2, ", tunerFrequency=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2872
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->tunerFrequency:Ljava/lang/String;

    .line 2873
    const-string v2, ", subTypeName=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3231
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->subTypeName:Ljava/lang/String;

    .line 3232
    const-string v2, ", modeType="

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3590
    iget v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->modeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->originInfo:Ljava/lang/String;

    .line 3591
    const-string v2, ", errorCode=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3949
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->errorCode:Ljava/lang/String;

    .line 3950
    const-string v2, ", errorMsg=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4308
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->errorMsg:Ljava/lang/String;

    .line 4309
    const-string v2, ", targetType=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4667
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->targetType:Ljava/lang/String;

    .line 4668
    const-string v2, ", commandObject=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/zeekr/sdk/mediacenter/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5026
    iget-object v1, p0, Lcom/ecarx/eas/sdk/vr/channel/SemanticData;->commandObject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
