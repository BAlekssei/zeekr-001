.class Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    .line 1130
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "action":Ljava/lang/String;
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string v1, "com.zeeker.notificationui.messageUnreadCount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1136
    const-string v1, "messageUnreadCount"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1137
    .local v1, "unreadNotificationCount":I
    const-string v2, "StatusBarViewForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification broadcast: unreadNotificationCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    if-lez v1, :cond_0

    .line 1139
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2800()Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1141
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2800()Landroid/widget/FrameLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1143
    .end local v1    # "unreadNotificationCount":I
    :goto_0
    goto/16 :goto_1

    :cond_1
    const-string v1, "com.yfvet.ACTION_AVATAR_SHOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1144
    const-string v1, "StatusBarViewForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AVATAR_BROADCAST iEvaService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/eva/service/IEvaService;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1151
    :cond_2
    const-string v1, "com.yfvet.ACTION_STATUS_BAR_SHOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1152
    const-string v1, "StatusBarViewForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SHOW_STATUS_BAR_BROADCASR iEvaService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/eva/service/IEvaService;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$2900(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)Lcom/zeekr/eva/service/IEvaService;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1154
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3000(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)V

    .line 1156
    :cond_3
    const-string v1, "isStatusBarShow"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1157
    .local v1, "isStatusBarShow":Z
    const-string v2, "StatusBarViewForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SHOW_STATUS_BAR_BROADCASR isStatusBarShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3100(Z)V

    .line 1159
    .end local v1    # "isStatusBarShow":Z
    goto :goto_1

    :cond_4
    const-string v1, "ecarx.launcher3.action.LOAD_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1160
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA$16;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setBatteryTemp(IZ)V

    .line 1162
    :cond_5
    :goto_1
    return-void
.end method
