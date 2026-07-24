.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;
.super Landroid/os/Handler;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 5840
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 5841
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5842
    return-void
.end method

.method private updateKeyTone()V
    .locals 6

    .line 5845
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5846
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5847
    .local v1, "resultValue":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5848
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get SOUND_EFFECTS_ENABLED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    :cond_0
    const/high16 v3, -0x80000000

    const v4, 0x50087

    if-nez v1, :cond_1

    .line 5853
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v2}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5854
    :catch_0
    move-exception v2

    .line 5855
    .local v2, "e":Landroid/car/CarNotConnectedException;
    const-string v3, "CarBodyStateManager"

    const-string v4, "ID_RSEM_SWTOFKEYTONE error CarNotConnectedException: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5856
    .end local v2    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    goto :goto_2

    .line 5857
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 5860
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v2}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V
    :try_end_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 5861
    :catch_1
    move-exception v2

    .line 5862
    .restart local v2    # "e":Landroid/car/CarNotConnectedException;
    const-string v3, "CarBodyStateManager"

    const-string v4, "ID_RSEM_SWTOFKEYTONE error CarNotConnectedException: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5863
    .end local v2    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    goto :goto_2

    .line 5865
    :cond_2
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SET SOUND_EFFECTS_ENABLED error funcValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5867
    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 5871
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 5950
    :pswitch_1
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_UPDATE_OUT_VOLUME_LEVEL_CONTROL VolumeLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAudioManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v0

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 5952
    goto/16 :goto_2

    .line 5940
    :pswitch_2
    const-string v0, "CarBodyStateManager"

    const-string v2, "handler msg get battery level str"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mBatteryLevel:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 5942
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7112(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5943
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryLevel(ZF)V

    .line 5944
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    move-result-object v0

    const/16 v1, 0x72

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 5946
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7102(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5948
    goto/16 :goto_2

    .line 5919
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDvrView()V

    .line 5920
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAqiHigh()V

    .line 5921
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 5922
    goto/16 :goto_2

    .line 5932
    :pswitch_4
    const-string v0, "CarBodyStateManager"

    const-string v1, "handler msg hide remote logcat icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5933
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->hideRemoteLogcatIcon()V

    .line 5934
    goto/16 :goto_2

    .line 5936
    :pswitch_5
    const-string v0, "CarBodyStateManager"

    const-string v1, "handler msg show remote logcat icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->showRemoteLogcatIcon()V

    .line 5938
    goto/16 :goto_2

    .line 5928
    :pswitch_6
    const-string v0, "CarBodyStateManager"

    const-string v1, "handler msg show bt dialer icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5929
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->showBtDialerIcon()V

    .line 5930
    goto/16 :goto_2

    .line 5924
    :pswitch_7
    const-string v0, "CarBodyStateManager"

    const-string v1, "handler msg hide bt dialer icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5925
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->hideBtDialerIcon()V

    .line 5926
    goto/16 :goto_2

    .line 5913
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Message;)V

    .line 5914
    goto/16 :goto_2

    .line 5916
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 5917
    goto/16 :goto_2

    .line 5910
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/os/Message;)V

    .line 5911
    goto/16 :goto_2

    .line 5907
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 5908
    goto/16 :goto_2

    .line 5902
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 5903
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5904
    .local v0, "msgOta":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5905
    goto/16 :goto_2

    .line 5899
    .end local v0    # "msgOta":Landroid/os/Message;
    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDayNightMode()V

    .line 5900
    goto/16 :goto_2

    .line 5874
    :pswitch_e
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5875
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v0

    const v1, 0x50083

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->getIntProperty(II)I

    move-result v0

    .line 5876
    .local v0, "local_language":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5877
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UPDATE_DEVICE_LOCALS_MSG_WHAT local_language = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    :cond_1
    const-string v1, "persist.sys.locale"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5880
    .local v1, "language":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 5881
    const-string/jumbo v2, "ro.product.locale"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 5883
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5884
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5886
    :cond_3
    if-nez v0, :cond_4

    .line 5887
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6400(Ljava/util/Locale;)V

    goto :goto_0

    .line 5889
    :cond_4
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6400(Ljava/util/Locale;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5894
    .end local v0    # "local_language":I
    .end local v1    # "language":Ljava/lang/String;
    :cond_5
    :goto_0
    goto :goto_1

    .line 5892
    :catch_0
    move-exception v0

    .line 5893
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "CarBodyStateManager"

    const-string v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5896
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->updateKeyTone()V

    .line 5897
    nop

    .line 5956
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
