.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10$1;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;->ensureExitUserAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;

    .line 881
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 884
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureExitUserAccount isUserApiInitSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2300()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 887
    return-void

    .line 889
    :cond_0
    const-string v0, "laucher_statusbar_usercenter_account_exit"

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackUserCenterAccountId(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/zeekr/sdk/user/impl/UserAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeekr/sdk/user/impl/UserAPI;->logout()Z

    .line 891
    return-void
.end method
