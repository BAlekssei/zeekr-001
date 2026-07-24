.class public interface abstract Lcom/zeekr/sdk/mediacenter/ability/IEASFrameworkCallback;
.super Ljava/lang/Object;
.source "IEASFrameworkCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation build Lcom/zeekr/sdk/base/annotation/KeepSDK;
.end annotation


# virtual methods
.method public abstract onCall(Lcom/zeekr/sdk/mediacenter/msg/EASFrameworkCallbackMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
