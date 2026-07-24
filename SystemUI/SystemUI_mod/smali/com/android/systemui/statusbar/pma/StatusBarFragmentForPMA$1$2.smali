.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/zeekr/sdk/user/impl/UserAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeekr/sdk/user/impl/UserAPI;->getHistoryAccountList()Lcom/zeekr/sdk/user/bean/HistoryAccountBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeekr/sdk/user/bean/HistoryAccountBean;->getAccountBeanList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$702(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/util/List;)Ljava/util/List;

    .line 325
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initUserData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_0
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$702(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/util/List;)Ljava/util/List;

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1$2;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    return-void
.end method
