.class public Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;
.super Ljava/lang/Object;
.source "SystemActivityMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;,
        Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;,
        Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;
    }
.end annotation


# static fields
.field private static mAm:Landroid/app/IActivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mProcessObserver:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;

.field private static mTaskListener:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;


# instance fields
.field private mTopActivityChangedListener:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sput-object p1, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;-><init>(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mProcessObserver:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;

    .line 25
    new-instance v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;-><init>(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mTaskListener:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;

    .line 26
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    .line 30
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    sget-object v1, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mProcessObserver:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 31
    sget-object v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    sget-object v1, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mTaskListener:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    nop

    .line 36
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemActivityMonitoringService"

    const-string v2, "cannot register activity monitoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$300()Landroid/app/IActivityManager;
    .locals 1

    .line 14
    sget-object v0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;)Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mTopActivityChangedListener:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;

    return-object v0
.end method


# virtual methods
.method public setTopActivityChangedListener(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;)V
    .locals 0
    .param p1, "topActivityChangedListener"    # Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;

    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->mTopActivityChangedListener:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;

    .line 169
    return-void
.end method
