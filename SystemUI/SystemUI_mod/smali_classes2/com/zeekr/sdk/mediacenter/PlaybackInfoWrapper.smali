.class public Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;
.super Lcom/zeekr/sdk/mediacenter/IMusicPlaybackInfo$Stub;
.source "PlaybackInfoWrapper.java"


# annotations
.annotation build Lcom/zeekr/sdk/base/annotation/KeepSDK;
.end annotation

.annotation runtime Lcom/zeekr/sdk/base/proto/annotation/ProtobufClass;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaybackInfoWrapper"


# instance fields
.field private mOriginClazz:Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;


# direct methods
.method public constructor <init>(Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zeekr/sdk/mediacenter/IMusicPlaybackInfo$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->mOriginClazz:Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "album is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    const-string v0, ""

    return-object v0
.end method

.method public getAppIcon()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "app name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "artist is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    const-string v0, ""

    return-object v0
.end method

.method public getArtwork()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "artwork is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getCollectType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentLyricSentence()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getCurrentLyricSentence()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDataType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getDataType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "duration is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLaunchIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoopMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getLoopMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLyric()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getLyric()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getLyricContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMediaPartListId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getMediaPartListId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaPath()Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getMediaPath()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "MediaPath type is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextArtwork()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getNextArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->mOriginClazz:Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getPlaybackStatus()I

    move-result v0

    return v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "PlaybackStatus type is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getPlayerIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingItemPositionInQueue()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getPlayingItemPositionInQueue()I

    move-result v0

    return v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "PlayingItemPositionInQueue is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayingMediaListId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getPlayingMediaListId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingMediaListType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getPlayingMediaListType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPreviousArtwork()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getPreviousArtwork()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRadioFrequency()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getRadioFrequency()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRadioMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getRadioMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRadioStationName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getRadioStationName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getSourceType()I

    move-result v0

    return v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "source type is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "title is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    const-string v0, ""

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "PlaybackInfoWrapper"

    const-string v1, "uuid is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVip()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->getVip()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isCollected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->isCollected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDownloaded()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->isDownloaded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCollect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->isSupportCollect()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDownload()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->isSupportDownload()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLoopModeSwitch()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->isSupportLoopModeSwitch()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportVrCtrlPlayStatus()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/PlaybackInfoWrapper;->getOriginClazz()Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/MusicPlaybackInfo;->isSupportVrCtrlPlayStatus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
