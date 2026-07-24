.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 391
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "action":Ljava/lang/String;
    const-string v1, "action.systemhmi.dbus.ready.read"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const-string v1, "StatusBarForPMA"

    const-string v2, "onReceive: ACTION_DBUS_READY_READ"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$400(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V

    goto/16 :goto_0

    .line 400
    :cond_1
    const-string v1, "android.intent.action.VOLUME_FS_TYPE_UNSUPPORTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 401
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 402
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 403
    const-string v2, "FilesystemType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "type":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    const-string v3, "StatusBarForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: ACTION_FS_TYPE_UNSUPPORTED , type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2
    const-string v3, "ntfs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110428

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$500(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Ljava/lang/String;)V

    .line 411
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "type":Ljava/lang/String;
    :cond_3
    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 412
    const-string v1, "StatusBarForPMA"

    const-string v2, "onReceive: ACTION_EXTERNAL_APPLICATIONS_AVAILABLE initAppList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zeekr.intent.action.MUTE_ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 415
    const-string v1, "StatusBarForPMA"

    const-string v3, "onReceive: ACTION_AR_MUTE initAppList"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v1, "open"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 417
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v1

    const-string v3, "open"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->setAllStreamMute(Z)V

    goto :goto_0

    .line 419
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "audio.exterior.action.change"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 420
    const-string v1, "StatusBarForPMA"

    const-string v3, "onReceive: ACTION_OUTVOLUME_EXTERIOR"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v1, "audio.exterior.status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 422
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v1

    const-string v3, "audio.exterior.status"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isActionExterior(I)V

    goto :goto_0

    .line 424
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 425
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 426
    const-string v1, "StatusBarForPMA"

    const-string v2, "onReceive: ACTION_USER_UNLOCKED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->initAppListData()V

    goto :goto_0

    .line 429
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 430
    const-string v1, "StatusBarForPMA"

    const-string v2, "onReceive: ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->onScreenOn()V

    .line 441
    :cond_a
    :goto_0
    return-void
.end method
