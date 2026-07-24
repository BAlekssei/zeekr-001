.class Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "SystemActivityMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;->this$0:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$1;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;-><init>(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 128
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->access$300()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 129
    .local v0, "topActivityInfo":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;->this$0:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->access$400(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;)Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$ProcessObserver;->this$0:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->access$400(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;)Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;->onTopActivityChanged(Landroid/content/ComponentName;)V

    .line 132
    :cond_0
    const-string v3, "SystemActivityMonitoringService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onForegroundActivitiesChanged : topActivityInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "onForegroundActivitiesChanged uid %d pid %d fg %b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "topActivityInfo":Landroid/content/ComponentName;
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemActivityMonitoringService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundActivitiesChanged : e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 140
    const-string v0, "SystemActivityMonitoringService"

    const-string v1, "onProcessDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method
