.class public final Lcom/zeekr/mediawidget/yandex/YandexBridge$Tick;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "YandexBridge.java"

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public run()V
    .locals 0
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->tick()V
    return-void
.end method
