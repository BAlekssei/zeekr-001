.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Lcom/zeekr/sdk/user/callback/ILoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->onAPIReady(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    .line 492
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .line 534
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccountSwitch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", s1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void
.end method

.method public onLogin()V
    .locals 4

    .line 496
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "onLogin "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2100(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/UserChangePopupWindow;->getIsShowing()Z

    move-result v0

    .line 498
    .local v0, "isShow":Z
    const-string v1, "StatusBarFragmentForPMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLogin UserChangePopupWindow isShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz v0, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    const-string v2, "onLogin"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 504
    return-void
.end method

.method public onLogout()V
    .locals 3

    .line 508
    const-string v0, "StatusBarFragmentForPMA"

    const-string v1, "onLogout "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    const-string v1, "onLogout"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V

    .line 510
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needRelogin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reLoginUserId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2600(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2602(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Z)Z

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2700(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2200(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 516
    return-void
.end method

.method public onTokenChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 520
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTokenChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTokenChanged token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 523
    return-void
.end method

.method public onUserInfoChanged(Lcom/zeekr/sdk/user/bean/UserInfoBean;)V
    .locals 3
    .param p1, "s"    # Lcom/zeekr/sdk/user/bean/UserInfoBean;

    .line 527
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserInfoChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    const-string v1, "onUserInfoChanged"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;->this$1:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 530
    return-void
.end method
