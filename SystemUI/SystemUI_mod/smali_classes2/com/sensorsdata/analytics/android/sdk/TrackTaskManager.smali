.class public Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;
.super Ljava/lang/Object;
.source "TrackTaskManager.java"


# static fields
.field private static trackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;


# instance fields
.field private mDataCollectEnable:Z

.field private final mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackEventTasksCache:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mDataCollectEnable:Z

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 33
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasksCache:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 34
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;
    .locals 2

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->trackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->trackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->trackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 37
    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method addTrackEventTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "trackEvenTask"    # Ljava/lang/Runnable;

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mDataCollectEnable:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasksCache:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method pollTrackEventTask()Ljava/lang/Runnable;
    .locals 1

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mDataCollectEnable:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasksCache:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method setDataCollectEnable(Z)V
    .locals 2
    .param p1, "isDataCollectEnable"    # Z

    .line 104
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mDataCollectEnable:Z

    .line 106
    if-eqz p1, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasksCache:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager$1;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager$2;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    goto :goto_2

    .line 121
    :goto_1
    nop

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 124
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return-void
.end method

.method takeTrackEventTask()Ljava/lang/Runnable;
    .locals 1

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mDataCollectEnable:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasksCache:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method transformTaskQueue(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 71
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
