.class Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$1;
.super Ljava/lang/Object;
.source "SignalClusterViewForPMA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->updatePassengerDoorCloseVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

.field final synthetic val$posValue:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 626
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iput p2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$1;->val$posValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 629
    iget v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$1;->val$posValue:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$000(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$1;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$000(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 634
    :goto_0
    return-void
.end method
