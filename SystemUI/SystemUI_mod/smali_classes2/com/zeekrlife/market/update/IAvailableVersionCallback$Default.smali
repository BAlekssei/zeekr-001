.class public Lcom/zeekrlife/market/update/IAvailableVersionCallback$Default;
.super Ljava/lang/Object;
.source "IAvailableVersionCallback.java"

# interfaces
.implements Lcom/zeekrlife/market/update/IAvailableVersionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/IAvailableVersionCallback;
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

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppAvailableVersion(ZLcom/zeekrlife/market/update/IAppInfo;)Z
    .locals 1
    .param p1, "hasAvailableVersion"    # Z
    .param p2, "appInfo"    # Lcom/zeekrlife/market/update/IAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method
