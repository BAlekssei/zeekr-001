.class final Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;
.super Landroid/os/Handler;
.source "SliderWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/SliderWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V
    .locals 0

    .line 4773
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    .line 4774
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4775
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 4779
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    const-wide/16 v4, 0x7d0

    const/4 v6, 0x2

    const/16 v7, 0x6d

    const-wide/16 v8, 0xbb8

    const/16 v10, 0x9

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_9

    .line 5125
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAllSlider(Z)V

    .line 5126
    const-string v0, "SliderWindowManager"

    const-string v1, "hide navigation bar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5128
    goto/16 :goto_9

    .line 4899
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4900
    const-string v0, "SliderWindowManager"

    const-string v1, "MSG_HANDLE_GET_HICAR_APP_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4902
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$4;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->post(Ljava/lang/Runnable;)Z

    .line 4917
    goto/16 :goto_9

    .line 5119
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 5120
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    .line 5121
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->closeAllSliderButApplist()V

    .line 5122
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v10}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;I)V

    .line 5123
    goto/16 :goto_9

    .line 5094
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8502(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 5095
    goto/16 :goto_9

    .line 5091
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8302(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 5092
    goto/16 :goto_9

    .line 4940
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->um:Landroid/os/UserManager;

    if-eqz v0, :cond_23

    .line 4941
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->um:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4942
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 4943
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4944
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->checkInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4945
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4943
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4948
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4949
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Ljava/util/ArrayList;)V

    .line 4951
    .end local v0    # "i":I
    :cond_3
    goto/16 :goto_9

    .line 4952
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    .line 4806
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 4807
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 4808
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4809
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsSyncVolumeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    if-eqz v0, :cond_23

    .line 4812
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setProgress(I)V

    goto/16 :goto_9

    .line 4989
    :pswitch_7
    const-string v0, "SliderWindowManager"

    const-string v1, "handleMessage: MSG_HANDLE_REGISTER_STARTUP_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4990
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4991
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    goto/16 :goto_9

    .line 4993
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4995
    goto/16 :goto_9

    .line 5041
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5042
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5044
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_4

    .line 5047
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5048
    move v0, v3

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 5049
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->getRecent()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5050
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;

    .line 5051
    .local v1, "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    if-eqz v1, :cond_9

    .line 5052
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->setDownLoading(Z)V

    .line 5053
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->updateDownLoading(F)V

    .line 5054
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;->isPrepare()V

    .line 5048
    .end local v1    # "r":Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter$RecentAppViewHolder;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5061
    .end local v0    # "i":I
    :cond_a
    move v0, v3

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 5062
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 5063
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "position":I
    :goto_3
    if-ltz v2, :cond_c

    .line 5064
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pma/applist/AppItemView;

    .line 5065
    .local v6, "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    if-eqz v6, :cond_b

    .line 5066
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/pma/applist/AppItemView;->removeTask(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 5067
    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getPageData()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-virtual {v8, v3}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setState(I)V

    .line 5063
    .end local v6    # "v":Lcom/android/systemui/statusbar/pma/applist/AppItemView;
    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 5061
    .end local v1    # "count":I
    .end local v2    # "position":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5072
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    .line 5073
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 5074
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v1

    invoke-virtual {v1, v7, v4, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5075
    goto/16 :goto_9

    .line 5045
    .end local v0    # "i":I
    :cond_e
    :goto_4
    return-void

    .line 4877
    :pswitch_9
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4878
    const-string v0, "SliderWindowManager"

    const-string v2, "MSG_HANDLE_INIT_APP_DATA"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4880
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4881
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 4882
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$3;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 4894
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4895
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    .line 5018
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5019
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5021
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 5022
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/applist/RecentAppAdapter;->removeData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5023
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 5024
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5025
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5027
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v2, 0x72

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 5028
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5030
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 5031
    return-void

    .line 5033
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_5
    if-ltz v0, :cond_15

    .line 5034
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->removeData(Ljava/lang/String;)Z

    .line 5033
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 5036
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    .line 5037
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->removeMessages(I)V

    .line 5038
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5039
    goto/16 :goto_9

    .line 5000
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5001
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5002
    const-string v1, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: MSG_HANDLE_TASK_INFO_CHAGNE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    :cond_16
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->isInPagesAndChange(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 5006
    const-string v1, "SliderWindowManager"

    const-string v2, "handleMessage: MSG_HANDLE_TASK_INFO_CHAGNE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 5008
    .local v7, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5009
    new-instance v8, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getAppIcon()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$7800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeekrlife/market/update/AppTaskInfo;

    invoke-virtual {v1}, Lcom/zeekrlife/market/update/AppTaskInfo;->getState()I

    move-result v6

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5010
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->appListAdd(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5015
    .end local v7    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    :cond_17
    goto/16 :goto_9

    .line 5013
    :catch_0
    move-exception v1

    .line 5014
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5016
    .end local v1    # "e":Ljava/lang/Exception;
    goto/16 :goto_9

    .line 4997
    .end local v0    # "pkgName":Ljava/lang/String;
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->pCheckStartup()V

    .line 4998
    goto/16 :goto_9

    .line 4971
    :pswitch_d
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: MSG_HANDLE_INIT_POLICY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4972
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4973
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$7;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 4957
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$6;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->post(Ljava/lang/Runnable;)Z

    .line 4969
    goto/16 :goto_9

    .line 4919
    :pswitch_f
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4920
    const-string v0, "SliderWindowManager"

    const-string v1, "MSG_HANDLE_GET_RECENT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$5;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->post(Ljava/lang/Runnable;)Z

    .line 4938
    goto/16 :goto_9

    .line 5097
    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5098
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/pma/AppListRelativeLayout;->DeleteBinShow(Z)V

    .line 5099
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_23

    .line 5100
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5101
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getClickFunction()I

    move-result v2

    .line 5102
    .local v2, "clickFunction":I
    const-string v3, "Murphy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5103
    const-string v3, "SliderWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_HANDLE_OPEN_UNINSTALL_DIALOG pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", clickFunction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5104
    if-nez v2, :cond_19

    .line 5105
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$2800(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$AppClickListener;->unInstallApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 5106
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->touchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_7

    .line 5107
    :cond_19
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getClickFunction()I

    move-result v3

    if-eq v3, v6, :cond_1b

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v3, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->getClickFunction()I

    move-result v3

    if-ne v3, v1, :cond_1a

    goto :goto_6

    .line 5112
    :cond_1a
    const-string v1, "Murphy"

    const-string v3, "handleMessage: vh = null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5113
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    goto :goto_7

    .line 5108
    :cond_1b
    :goto_6
    const-string v1, "Murphy"

    const-string v3, "handleMessage: removedownload"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5109
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v1, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/applist/AppItemIconViewHolder;->removeDownload(Ljava/lang/String;)V

    .line 5110
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendMsg(I)V

    .line 5115
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->vh:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5116
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v2    # "clickFunction":I
    goto/16 :goto_9

    .line 5084
    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 5085
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getPassengerHeatVentilationShift()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentShift(II)V

    goto/16 :goto_9

    .line 5087
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5089
    goto/16 :goto_9

    .line 5077
    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8200(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$8300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5078
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->getDriverHeatVentilationShift()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->moveToCurrentShift(II)V

    goto/16 :goto_9

    .line 5080
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5082
    goto/16 :goto_9

    .line 4834
    :pswitch_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4835
    .local v0, "appDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;>;"
    nop

    .local v3, "i":I
    :goto_8
    move v1, v3

    .end local v3    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 4836
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pma/applist/AppRecyclerViewAdapter;->getPageData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4835
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    goto :goto_8

    .line 4838
    .end local v3    # "i":I
    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$1;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->post(Ljava/lang/Runnable;)Z

    .line 4850
    goto/16 :goto_9

    .line 4852
    .end local v0    # "appDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;>;"
    :pswitch_14
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4853
    const-string v0, "SliderWindowManager"

    const-string v1, "MSG_HANDLE_GET_APP_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$000(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H$2;-><init>(Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->post(Ljava/lang/Runnable;)Z

    .line 4875
    goto/16 :goto_9

    .line 4830
    :pswitch_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 4831
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 4832
    goto/16 :goto_9

    .line 4826
    :pswitch_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$3500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 4827
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$4102(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 4828
    goto/16 :goto_9

    .line 4821
    :pswitch_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 4822
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6300(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V

    .line 4823
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6202(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 4824
    goto/16 :goto_9

    .line 4816
    :pswitch_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6002(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 4817
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5900(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6100(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V

    .line 4818
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$5802(Lcom/android/systemui/statusbar/pma/SliderWindowManager;Z)Z

    .line 4819
    goto/16 :goto_9

    .line 4796
    :pswitch_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->open(I)V

    .line 4797
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->sendCloseVolumeBarDelayMsg(I)V

    .line 4798
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4799
    const-string v0, "SliderWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIsSyncVolumeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4801
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    if-eqz v0, :cond_23

    .line 4802
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6700(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/VolumeSeekBarView;->setProgress(I)V

    goto :goto_9

    .line 4791
    :pswitch_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 4792
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6600(Lcom/android/systemui/statusbar/pma/SliderWindowManager;II)V

    goto :goto_9

    .line 4784
    :pswitch_1b
    invoke-static {}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4785
    const-string v0, "SliderWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MSG_HANDLE_SYNC_VOLUME_STATE state: mIsSyncVolumeState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->mIsSyncVolumeState:Z

    .line 4788
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6500(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 4789
    goto :goto_9

    .line 4781
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/SliderWindowManager$H;->this$0:Lcom/android/systemui/statusbar/pma/SliderWindowManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/SliderWindowManager;->access$6400(Lcom/android/systemui/statusbar/pma/SliderWindowManager;)V

    .line 4782
    nop

    .line 5132
    :cond_23
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
