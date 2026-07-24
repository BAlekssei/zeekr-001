.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;
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

    .line 355
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 358
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 366
    .local v2, "isReplacing":Z
    const-string v3, "StatusBarForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: PACKAGE_ADDED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$100(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 368
    .local v3, "newAPPActivies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 369
    if-nez v2, :cond_1

    .line 370
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$200(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->addNewApp(Ljava/lang/String;)V

    .line 372
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isInPagesAndChange(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 373
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAdd(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 376
    :cond_2
    const-string v4, "StatusBarForPMA"

    const-string v5, "onReceive: newAPPActivies null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->registerStartupStateObserver()V

    .line 379
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "isReplacing":Z
    .end local v3    # "newAPPActivies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    goto :goto_1

    :cond_4
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 380
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 381
    .restart local v1    # "packageName":Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 382
    .restart local v2    # "isReplacing":Z
    const-string v3, "StatusBarForPMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: PACKAGE_REMOVED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-nez v2, :cond_5

    .line 384
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$300(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->removeAppList(Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$200(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarControllerForPMA;->removeNewAppDot(Ljava/lang/String;)V

    .line 388
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "isReplacing":Z
    :cond_5
    :goto_1
    return-void
.end method
