.class public final Lcom/zeekr/mediawidget/yandex/YandexBridge$Lst;
.super Ljava/lang/Object;
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
.source "YandexBridge.java"

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->refresh()V
    return-void
.end method
