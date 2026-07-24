.class Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;
.super Landroid/os/Handler;
.source "SignalClusterViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    .line 911
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 914
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 928
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->noNetBroadcast()V

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 916
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$202(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;I)I

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$302(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;I)I

    .line 918
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$402(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;I)I

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$502(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)Z

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$600(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$700(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V

    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$600(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$800(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$600(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$900(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;Z)V

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/ConnectivityControllerForPMA;->setESIMTimeout()V

    .line 924
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->access$1100(Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 925
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA$3;->this$0:Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SignalClusterViewForPMA;->setNetStatus()V

    .line 926
    nop

    .line 932
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
