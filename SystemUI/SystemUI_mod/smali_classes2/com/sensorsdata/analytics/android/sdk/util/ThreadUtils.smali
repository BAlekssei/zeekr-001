.class public Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$UtilsThreadFactory;,
        Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;,
        Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.ThreadUtils"

.field private static final TYPE_PRIORITY_POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TYPE_SINGLE:B = -0x1t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "type"    # I

    .line 50
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;
    .locals 5
    .param p0, "type"    # I
    .param p1, "priority"    # I

    .line 54
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 57
    .local v1, "priorityPools":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;>;"
    if-nez v1, :cond_0

    .line 58
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v2

    .line 59
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->access$000(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 60
    .local v2, "pool":Ljava/util/concurrent/ExecutorService;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->TYPE_PRIORITY_POOLS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v2    # "pool":Ljava/util/concurrent/ExecutorService;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    .line 64
    .restart local v2    # "pool":Ljava/util/concurrent/ExecutorService;
    if-nez v2, :cond_1

    .line 65
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;->access$000(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object v2, v3

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    .line 70
    .end local v1    # "priorityPools":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;>;"
    .end local v2    # "pool":Ljava/util/concurrent/ExecutorService;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSinglePool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 42
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getSinglePool(I)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "priority"    # I

    .line 46
    const/4 v0, -0x1

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getPoolByTypeAndPriority(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
