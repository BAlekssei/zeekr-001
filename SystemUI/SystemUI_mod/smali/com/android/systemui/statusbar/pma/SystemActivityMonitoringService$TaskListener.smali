.class Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;
.super Landroid/app/TaskStackListener;
.source "SystemActivityMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;->this$0:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$1;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;-><init>(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 4

    .line 151
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->access$300()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 152
    .local v0, "topActivityInfo":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;->this$0:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->access$400(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;)Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TaskListener;->this$0:Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;->access$400(Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService;)Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/pma/SystemActivityMonitoringService$TopActivityChangedListener;->onTopActivityChanged(Landroid/content/ComponentName;)V

    .line 155
    :cond_0
    const-string v1, "SystemActivityMonitoringService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskStackChanged : topActivityInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "topActivityInfo":Landroid/content/ComponentName;
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemActivityMonitoringService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskStackChanged e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
