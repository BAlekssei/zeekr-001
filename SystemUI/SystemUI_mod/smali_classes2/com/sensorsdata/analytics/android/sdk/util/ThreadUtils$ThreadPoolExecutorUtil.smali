.class final Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadPoolExecutorUtil"
.end annotation


# instance fields
.field private final mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWorkQueue:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;


# direct methods
.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "workQueue"    # Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 100
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    invoke-static {p6, p0}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->access$102(Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;)Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;

    .line 106
    iput-object p6, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->mWorkQueue:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;

    .line 107
    return-void
.end method

.method static synthetic access$000(II)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 73
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->createPool(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static createPool(II)Ljava/util/concurrent/ExecutorService;
    .locals 19
    .param p0, "type"    # I
    .param p1, "priority"    # I

    move/from16 v8, p0

    .line 76
    move/from16 v9, p1

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    .line 84
    new-instance v10, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;

    invoke-direct {v6}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;-><init>()V

    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v9}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v0, v10

    move v1, v8

    move v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;Ljava/util/concurrent/ThreadFactory;)V

    return-object v10

    .line 78
    :cond_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    sget-object v16, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;-><init>()V

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;

    const-string v3, "single"

    invoke-direct {v2, v3, v9}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;I)V

    move-object v11, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v11 .. v18}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private getSubmittedCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 115
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 116
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 121
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 124
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    .line 126
    .local v0, "ignore":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "SA.ThreadUtils"

    const-string v2, "This will not happen!"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->mWorkQueue:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->offer(Ljava/lang/Runnable;)Z

    .end local v0    # "ignore":Ljava/util/concurrent/RejectedExecutionException;
    goto :goto_0

    .line 131
    :goto_1
    return-void
.end method
