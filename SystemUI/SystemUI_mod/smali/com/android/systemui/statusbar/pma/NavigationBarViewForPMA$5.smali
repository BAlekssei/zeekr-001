.class Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;
.super Landroid/os/Handler;
.source "NavigationBarViewForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    .line 787
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 790
    invoke-static {}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    const-string v0, "NavigationBarViewForPMA"

    const-string v1, "handleMessage: HANDLER_MSG_LONG_PRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 822
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 816
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 817
    goto/16 :goto_3

    .line 819
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 820
    goto :goto_3

    .line 813
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$400(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 814
    goto :goto_3

    .line 797
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 799
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    goto :goto_3

    .line 809
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->isAllStreamMute()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "\u97f3\u91cf\u56fe\u6807"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackVolumeMute(ILjava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->muteVolume()V

    .line 811
    goto :goto_3

    .line 804
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "launcher_dock_ltem_set"

    goto :goto_1

    :cond_3
    const-string v0, "launcher_dock_rtem_set"

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$1000(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ac_tem_status"

    goto :goto_2

    :cond_4
    const-string v2, "rac_tem_status"

    :goto_2
    const/4 v3, 0x0

    const-string/jumbo v4, "\u957f\u6309\u64cd\u4f5c"

    invoke-static {v0, v2, v3, v4}, Lcom/android/systemui/statusbar/pma/DataProviderUtil;->trackTemp(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->mIOnViewClickListener:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$IOnViewClickListener;->closeAllSlider(Z)V

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA$5;->this$0:Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;->access$100(Lcom/android/systemui/statusbar/pma/NavigationBarViewForPMA;)V

    .line 807
    nop

    .line 827
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 828
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
