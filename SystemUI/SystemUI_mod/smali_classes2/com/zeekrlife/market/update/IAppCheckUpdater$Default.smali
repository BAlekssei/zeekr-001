.class public Lcom/zeekrlife/market/update/IAppCheckUpdater$Default;
.super Ljava/lang/Object;
.source "IAppCheckUpdater.java"

# interfaces
.implements Lcom/zeekrlife/market/update/IAppCheckUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/IAppCheckUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkAppUpdate(Ljava/lang/String;Lcom/zeekrlife/market/update/ICheckUpdateCallback;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/zeekrlife/market/update/ICheckUpdateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public hasAvailableVersion(Ljava/lang/String;Lcom/zeekrlife/market/update/IAvailableVersionCallback;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/zeekrlife/market/update/IAvailableVersionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method
