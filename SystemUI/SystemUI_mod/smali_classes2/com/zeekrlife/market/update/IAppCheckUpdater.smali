.class public interface abstract Lcom/zeekrlife/market/update/IAppCheckUpdater;
.super Ljava/lang/Object;
.source "IAppCheckUpdater.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/update/IAppCheckUpdater$Stub;,
        Lcom/zeekrlife/market/update/IAppCheckUpdater$Default;
    }
.end annotation


# virtual methods
.method public abstract checkAppUpdate(Ljava/lang/String;Lcom/zeekrlife/market/update/ICheckUpdateCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hasAvailableVersion(Ljava/lang/String;Lcom/zeekrlife/market/update/IAvailableVersionCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
