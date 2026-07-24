.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$2;
.super Ljava/lang/Object;
.source "StatusBarForPMA.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


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

    .line 304
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowShown()V
    .locals 4

    .line 307
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StatusBarForPMA"

    const-string v1, "mNavigationBarListener onWindowShown is call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 309
    return-void
.end method
