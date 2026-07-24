.class public Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher$DispatchHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 19
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->mHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher$1;

    .line 7
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;
    .locals 1

    .line 13
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher$DispatchHolder;->access$000()Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 27
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->postDelayed(Ljava/lang/Runnable;J)V

    .line 28
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 31
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
