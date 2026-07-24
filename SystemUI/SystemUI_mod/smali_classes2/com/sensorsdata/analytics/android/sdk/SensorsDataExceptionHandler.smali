.class public Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;
.super Ljava/lang/Object;
.source "SensorsDataExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;
    }
.end annotation


# static fields
.field private static final SLEEP_TIMEOUT_MS:I = 0x1f4

.field private static isTrackCrash:Z

.field private static final sExceptionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;


# instance fields
.field private mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->sExceptionListeners:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->isTrackCrash:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 39
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 40
    return-void
.end method

.method static addExceptionListener(Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;

    .line 49
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->sExceptionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method static enableAppCrash()V
    .locals 1

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->isTrackCrash:Z

    .line 54
    return-void
.end method

.method static declared-synchronized init()V
    .locals 2

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->sInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->sInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit v0

    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private killProcessAndExit()V
    .locals 1

    .line 108
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 109
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 113
    :goto_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 59
    :try_start_0
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->isTrackCrash:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_1

    .line 61
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .local v0, "messageProp":Lorg/json/JSONObject;
    :try_start_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 64
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 65
    .local v2, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 66
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 67
    .local v3, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 69
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "result":Ljava/lang/String;
    const-string v5, "app_crashed_reason"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .end local v1    # "writer":Ljava/io/Writer;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "cause":Ljava/lang/Throwable;
    .end local v4    # "result":Ljava/lang/String;
    goto :goto_1

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 77
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    const-string v3, "AppCrashed"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 80
    .end local v0    # "messageProp":Lorg/json/JSONObject;
    goto :goto_2

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 83
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_2
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->sExceptionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 85
    .local v1, "exceptionListener":Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;
    :try_start_5
    invoke-interface {v1, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 88
    goto :goto_4

    .line 86
    :catch_2
    move-exception v2

    .line 87
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 89
    .end local v1    # "exceptionListener":Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;
    .end local v2    # "e1":Ljava/lang/Exception;
    :goto_4
    goto :goto_3

    .line 90
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 92
    const-wide/16 v0, 0x1f4

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 95
    goto :goto_5

    .line 93
    :catch_3
    move-exception v0

    .line 94
    .local v0, "e1":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 96
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    :goto_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 99
    :cond_3
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler;->killProcessAndExit()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 103
    :goto_6
    goto :goto_7

    .line 101
    :catch_4
    move-exception v0

    .line 104
    :goto_7
    return-void
.end method
