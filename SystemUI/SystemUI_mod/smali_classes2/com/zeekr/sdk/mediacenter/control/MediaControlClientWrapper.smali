.class public Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;
.super Lcom/zeekr/sdk/mediacenter/control/IMediaControlClient$Stub;
.source "MediaControlClientWrapper.java"


# instance fields
.field private mOrigin:Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;


# direct methods
.method public constructor <init>(Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zeekr/sdk/mediacenter/control/IMediaControlClient$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->mOrigin:Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    return-void
.end method


# virtual methods
.method public getMediaContentTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zeekr/sdk/mediacenter/bean/IMediaContentType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->getOrigin()Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;->getMediaContentTypeList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigin()Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->mOrigin:Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public onControlledChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->getOrigin()Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;->onControlledChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->getOrigin()Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;->onPause(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPauseNow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->getOrigin()Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;->onPauseNow()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPlay(ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->getOrigin()Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;->onPlay(ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPlayByContent(ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->getOrigin()Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;->onPlayByContent(ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPlayByMediaId(ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->getOrigin()Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;->onPlayByMediaId(ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResumeNow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClientWrapper;->getOrigin()Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/zeekr/sdk/mediacenter/control/MediaControlClient;->onResumeNow()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
