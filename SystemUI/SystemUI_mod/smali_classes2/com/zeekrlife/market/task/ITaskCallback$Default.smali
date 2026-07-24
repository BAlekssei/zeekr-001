.class public Lcom/zeekrlife/market/task/ITaskCallback$Default;
.super Ljava/lang/Object;
.source "ITaskCallback.java"

# interfaces
.implements Lcom/zeekrlife/market/task/ITaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeekrlife/market/task/ITaskCallback;
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

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTaskAdded(Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onTaskRemoved(Lcom/zeekrlife/market/task/ITaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Lcom/zeekrlife/market/task/ITaskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method
