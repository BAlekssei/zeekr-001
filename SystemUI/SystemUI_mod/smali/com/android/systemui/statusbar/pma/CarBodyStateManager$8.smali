.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;
.super Landroid/content/BroadcastReceiver;
.source "CarBodyStateManager.java"


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

    .line 3982
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3985
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3986
    .local v0, "action":Ljava/lang/String;
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive intent.getAction() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    const-string v1, "ACTION_TEST_MODE_STS_NOTIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3988
    const-string/jumbo v1, "testmode"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3989
    .local v1, "sts":I
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_TEST_MODE_STS_NOTIFY testmode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3992
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3802(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z

    .line 3993
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II)V

    goto :goto_0

    .line 3995
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II)V

    .line 3997
    .end local v1    # "sts":I
    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "com.yfvet.adaptapi.car.impl.ICarImpl.theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3998
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDayOrNight:I

    .line 3999
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4000
    const-string v1, "CarBodyStateManager"

    const-string v2, "mDayNightChangeReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$8;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDayNightMode()V

    goto :goto_1

    .line 4004
    :cond_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4009
    :goto_1
    return-void
.end method
