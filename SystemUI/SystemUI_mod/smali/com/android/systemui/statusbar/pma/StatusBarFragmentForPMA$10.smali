.class Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;
.super Ljava/lang/Object;
.source "StatusBarFragmentForPMA.java"

# interfaces
.implements Lcom/android/systemui/statusbar/pma/AccountExitDialog$ExitDialogClickLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 875
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureExitUserAccount()V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;->access$1800(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA;)Lcom/zeekr/sdk/user/impl/UserAPI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 879
    return-void

    .line 881
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarFragmentForPMA$10;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 892
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 893
    return-void
.end method
