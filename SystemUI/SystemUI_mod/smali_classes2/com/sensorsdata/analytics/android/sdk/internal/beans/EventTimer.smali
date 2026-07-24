.class public Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;
.super Ljava/lang/Object;
.source "EventTimer.java"


# instance fields
.field private endTime:J

.field private eventAccumulatedDuration:J

.field private isPaused:Z

.field private startTime:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;J)V
    .locals 2
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p2, "startTime"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->isPaused:Z

    .line 35
    iput-wide p2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->startTime:J

    .line 36
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->eventAccumulatedDuration:J

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->endTime:J

    .line 39
    return-void
.end method


# virtual methods
.method public duration()Ljava/lang/String;
    .locals 8

    .line 42
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->isPaused:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    iget-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->startTime:J

    iput-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->endTime:J

    goto :goto_1

    .line 45
    :cond_0
    iget-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->endTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->endTime:J

    :goto_0
    iput-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->endTime:J

    .line 47
    :goto_1
    iget-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->endTime:J

    iget-wide v5, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->startTime:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->eventAccumulatedDuration:J

    add-long/2addr v3, v5

    .line 49
    .local v3, "duration":J
    cmp-long v0, v3, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_8

    const-wide/32 v5, 0x5265c00

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_5

    .line 53
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne v0, v2, :cond_3

    .line 54
    long-to-float v0, v3

    .local v0, "durationFloat":F
    :goto_2
    goto :goto_3

    .line 55
    .end local v0    # "durationFloat":F
    :cond_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/high16 v5, 0x447a0000    # 1000.0f

    if-ne v0, v2, :cond_4

    .line 56
    long-to-float v0, v3

    div-float/2addr v0, v5

    goto :goto_2

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/high16 v6, 0x42700000    # 60.0f

    if-ne v0, v2, :cond_5

    .line 58
    long-to-float v0, v3

    div-float/2addr v0, v5

    div-float/2addr v0, v6

    goto :goto_2

    .line 59
    :cond_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    if-ne v0, v2, :cond_6

    .line 60
    long-to-float v0, v3

    div-float/2addr v0, v5

    div-float/2addr v0, v6

    div-float/2addr v0, v6

    goto :goto_2

    .line 62
    :cond_6
    long-to-float v0, v3

    .line 64
    .restart local v0    # "durationFloat":F
    :goto_3
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "%.3f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    return-object v2

    .line 50
    .end local v0    # "durationFloat":F
    :cond_8
    :goto_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEndTime()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->endTime:J

    return-wide v0
.end method

.method public getEventAccumulatedDuration()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->eventAccumulatedDuration:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->startTime:J

    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->isPaused:Z

    return v0
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .line 80
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->endTime:J

    .line 81
    return-void
.end method

.method public setEventAccumulatedDuration(J)V
    .locals 0
    .param p1, "eventAccumulatedDuration"    # J

    .line 92
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->eventAccumulatedDuration:J

    .line 93
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 76
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->startTime:J

    .line 77
    return-void
.end method

.method public setTimerState(ZJ)V
    .locals 4
    .param p1, "isPaused"    # Z
    .param p2, "elapsedRealtime"    # J

    .line 96
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->isPaused:Z

    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->eventAccumulatedDuration:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->eventAccumulatedDuration:J

    .line 100
    :cond_0
    iput-wide p2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventTimer;->startTime:J

    .line 101
    return-void
.end method
