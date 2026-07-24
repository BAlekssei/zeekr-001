.class public interface abstract Lcom/zeekrlife/market/update/ICheckUpdateCallback;
.super Ljava/lang/Object;
.source "ICheckUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeekrlife/market/update/ICheckUpdateCallback$Stub;,
        Lcom/zeekrlife/market/update/ICheckUpdateCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAppUpdate(ZLcom/zeekrlife/market/update/IAppInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
