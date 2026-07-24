.class public Lecarx/xsf/mediacenter/vr/wrapper/VrInternalWrapper;
.super Lecarx/xsf/xiaoka/IXiaokaInternalApiSvc$Stub;
.source "VrInternalWrapper.java"

# interfaces
.implements Lcom/ecarx/eas/sdk/mediacenter/ExCallbackWrapper$a;


# static fields
.field private static final TAG:Ljava/lang/String; = "VrInternalWrapper"


# instance fields
.field private vrTypeChangeListener:Lcom/zeekr/sdk/mediacenter/bean/VrTypeChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lecarx/xsf/xiaoka/IXiaokaInternalApiSvc$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "VrInternalWrapper"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lecarx/xsf/mediacenter/vr/wrapper/VrInternalWrapper;->vrTypeChangeListener:Lcom/zeekr/sdk/mediacenter/bean/VrTypeChangeListener;

    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    const-string p3, "mediaPackageName"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 11
    const-string p4, "mediaVersion"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 12
    const-string v0, "mediaVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    const-string v1, "channelDataType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 14
    const-string v1, "VrInternalWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VrTypeChangeListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "channelDataType,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v1, Lcom/ecarx/eas/sdk/vr/channel/VrChannelInfo;

    invoke-direct {v1, p3, p4, v0, p1}, Lcom/ecarx/eas/sdk/vr/channel/VrChannelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    move-object v1, p2

    :goto_0
    iget-object p1, p0, Lecarx/xsf/mediacenter/vr/wrapper/VrInternalWrapper;->vrTypeChangeListener:Lcom/zeekr/sdk/mediacenter/bean/VrTypeChangeListener;

    invoke-virtual {p1, v1}, Lcom/zeekr/sdk/mediacenter/bean/VrTypeChangeListener;->onVrTypeChangeListener(Lcom/ecarx/eas/sdk/vr/channel/VrChannelInfo;)V

    :cond_1
    :goto_1
    return-object p2
.end method

.method public onExAction(ILjava/lang/String;Ljava/lang/String;Lcom/ecarx/eas/xsf/mediacenter/IExContent;Landroid/os/IBinder;)Lcom/ecarx/eas/xsf/mediacenter/IExContent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onMediaCenterMediaPlayingStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMediaCenterPlayingMediaInfo(Lecarx/xsf/mediacenter/IAllPlaybackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSourceTypeListChanged([I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setVrTypeChangeListener(Lcom/zeekr/sdk/mediacenter/bean/VrTypeChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lecarx/xsf/mediacenter/vr/wrapper/VrInternalWrapper;->vrTypeChangeListener:Lcom/zeekr/sdk/mediacenter/bean/VrTypeChangeListener;

    return-void
.end method
