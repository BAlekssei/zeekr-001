.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarFragmentForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    .line 720
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 723
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "action":Ljava/lang/String;
    const-string v1, "StatusBarFragmentForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v1, "ecarx.intent.action.PILOT_SHOW_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 726
    const-string v1, "pilot_status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "state":Ljava/lang/String;
    const-string v3, "StatusBarFragmentForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string/jumbo v3, "resume"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "destroy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 734
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setNZPVisablity(Z)V

    .line 734
    .end local v1    # "state":Ljava/lang/String;
    goto :goto_1

    .line 731
    .restart local v1    # "state":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setNZPVisablity(Z)V

    .line 737
    .end local v1    # "state":Ljava/lang/String;
    :cond_2
    :goto_1
    goto/16 :goto_2

    :cond_3
    const-string v1, "OTA_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 738
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1300(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/StatusBarViewForPMA;->setOtaPreSaleVisablity()V

    goto/16 :goto_2

    .line 739
    :cond_4
    const-string v1, "ACTION_USER_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 740
    const-string v1, "StatusBarFragmentForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive isUserApiInitSuccess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2300()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2300()Z

    move-result v1

    if-nez v1, :cond_a

    .line 742
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    goto/16 :goto_2

    .line 744
    :cond_5
    const-string v1, "com.yfve.topbar.dvr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 745
    const-string v1, "enable"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 746
    .local v1, "flag":Z
    const-string v2, "StatusBarFragmentForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNZPReceiver YFVE_DVR_BROADCAST flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Z)V

    .line 748
    .end local v1    # "flag":Z
    goto/16 :goto_2

    :cond_6
    const-string v1, "com.yfve.topbar.dvr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 749
    const-string v1, "enable"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 750
    .restart local v1    # "flag":Z
    const-string v2, "StatusBarFragmentForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNZPReceiver YFVE_DVR_BROADCAST flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Z)V

    .line 752
    .end local v1    # "flag":Z
    goto :goto_2

    :cond_7
    const-string/jumbo v1, "zeekr.intent.action.DVR_SOUND_RECORDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 753
    const-string/jumbo v1, "record"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 754
    .restart local v1    # "flag":Z
    const-string v2, "StatusBarFragmentForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: ACTION_DVR_SOUND_RECORDING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 756
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->requestSoundRecording(Z)V

    .line 758
    .end local v1    # "flag":Z
    :cond_8
    goto :goto_2

    :cond_9
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 759
    const-string v1, "StatusBarFragmentForPMA"

    const-string v2, "onReceive: ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 761
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$7;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$3200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/DvrPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/DvrPopupWindow;->readStateFromSharedPref()V

    .line 764
    :cond_a
    :goto_2
    return-void
.end method
