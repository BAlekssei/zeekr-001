.class public interface abstract Lcom/zeekrlife/market/update/IAvailableVersionCallback;
.super Ljava/lang/Object;
.source "IAvailableVersionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/update/IAvailableVersionCallback$Stub;,
        Lcom/zeekrlife/market/update/IAvailableVersionCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAppAvailableVersion(ZLcom/zeekrlife/market/update/IAppInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
