.class Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$1;
.super Landroid/os/Handler;
.source "PushProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 75
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    .line 79
    .local v0, "code":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 81
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "msgId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;

    .line 84
    .local v2, "push":Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    if-eqz v2, :cond_0

    .line 86
    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;->title:Ljava/lang/String;

    iget-object v4, v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;->content:Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;->time:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackGeTuiNotificationClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "msgId":Ljava/lang/String;
    .end local v2    # "push":Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    :cond_0
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
