.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Lcom/zeekr/sdk/base/ApiReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->initZeerUserAPI()V
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

    .line 484
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAPIReady(ZLjava/lang/String;)V
    .locals 3
    .param p1, "b"    # Z
    .param p2, "s"    # Ljava/lang/String;

    .line 489
    const-string v0, "StatusBarFragmentForPMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initZeerUserAPI b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-eqz p1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {}, Lcom/zeekr/sdk/user/impl/UserAPI;->get()Lcom/zeekr/sdk/user/impl/UserAPI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1802(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Lcom/zeekr/sdk/user/impl/UserAPI;)Lcom/zeekr/sdk/user/impl/UserAPI;

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/zeekr/sdk/user/impl/UserAPI;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;)V

    invoke-virtual {v0, v1}, Lcom/zeekr/sdk/user/impl/UserAPI;->registerCallback(Lcom/zeekr/sdk/user/callback/ILoginCallback;)V

    .line 537
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2302(Z)Z

    .line 538
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    const-string v2, "ZeerUserAPI.Callback.onAPIReady"

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2400(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2500(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)V

    .line 542
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$4;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$2802(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 545
    :cond_0
    return-void
.end method
