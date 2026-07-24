.class Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;
.super Ljava/lang/Object;
.source "SignalClusterViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updateDoorSupportElectric(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

.field final synthetic val$support:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 639
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;->val$support:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 642
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;->val$support:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$100(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerDoorPos()I

    move-result v0

    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$000(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$000(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$2;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$000(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 651
    :goto_0
    return-void
.end method
