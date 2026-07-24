.class public Lcom/zeekrlife/market/update/ICheckUpdateCallback$Default;
.super Ljava/lang/Object;
.source "ICheckUpdateCallback.java"

# interfaces
.implements Lcom/zeekrlife/market/update/ICheckUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/update/ICheckUpdateCallback;
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

.method public onAppUpdate(ZLcom/zeekrlife/market/update/IAppInfo;)Z
    .locals 1
    .param p1, "update"    # Z
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
