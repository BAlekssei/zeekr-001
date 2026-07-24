.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"

# interfaces
.implements Lcom/yfvet/localconfigjni/ILocalConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 3671
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarConfigReady()V
    .locals 6

    .line 3679
    const-string v0, "CarBodyStateManager"

    const-string v1, "car config listener onCarConfig is ready query car config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/16 v1, 0x1e1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    move-result v0

    .line 3682
    .local v0, "carcfg481":I
    const-string v1, "persist.default.carcfg481"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3684
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/16 v2, 0x1e3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    move-result v1

    .line 3685
    .local v1, "carcfg483":I
    const-string v2, "persist.default.carcfg483"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3687
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/16 v3, 0x26a

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    move-result v2

    .line 3688
    .local v2, "carcfg618":I
    const-string v3, "persist.default.carcfg618"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3689
    const-string v3, "CarBodyStateManager"

    const-string v4, "on config listener init car config success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/16 v4, 0xae

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    move-result v3

    .line 3692
    .local v3, "carcfg174":I
    const/16 v4, 0x81

    if-eq v3, v4, :cond_0

    const/16 v4, 0x83

    if-ne v3, v4, :cond_1

    .line 3693
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isAqiHighConfig:Z

    .line 3695
    :cond_1
    const-string v4, "CarBodyStateManager"

    const-string v5, "on config listener init car config success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3698
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    move-result-object v4

    const/16 v5, 0x70

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->removeMessages(I)V

    .line 3699
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3700
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$5;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3701
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 3702
    :cond_2
    const-string v4, "CarBodyStateManager"

    const-string v5, "localConfigListener mHandler is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    :goto_0
    return-void
.end method

.method public onLocalConfigReady()V
    .locals 2

    .line 3674
    const-string v0, "CarBodyStateManager"

    const-string v1, "local config listener onLocalConfig is ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    return-void
.end method
