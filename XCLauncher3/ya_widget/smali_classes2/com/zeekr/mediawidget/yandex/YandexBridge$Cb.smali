.class public final Lcom/zeekr/mediawidget/yandex/YandexBridge$Cb;
.super Landroid/media/session/MediaController$Callback;
.source "YandexBridge.java"

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 0
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->publish()V
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 0
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->publish()V
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->refresh()V
    return-void
.end method
