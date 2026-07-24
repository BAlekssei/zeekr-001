.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;
.super Landroid/content/BroadcastReceiver;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 5608
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5611
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5612
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5613
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5615
    :cond_0
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5616
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    goto/16 :goto_7

    .line 5617
    :cond_1
    const-string v1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_5

    .line 5618
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5619
    .local v1, "state":I
    if-ne v1, v2, :cond_2

    .line 5620
    const-string v2, "CarBodyStateManager"

    const-string v3, "BluetoothA2dpSink Action does not have a state."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5621
    return-void

    .line 5624
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5625
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "domain"

    const-string v4, "Media"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5626
    const-string v3, "id"

    const-string v4, "MEDIA_BTAUDIO_CONNECT_STATE_NOTIFY"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5627
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5628
    .local v3, "payload":Lorg/json/JSONObject;
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5629
    const-string v4, "payload"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5630
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 5631
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5632
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEDIA_BTAUDIO_CONNECT_STATE_NOTIFY set json success jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5634
    :cond_3
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEDIA_BTAUDIO_CONNECT_STATE_NOTIFY set json failed jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5639
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "payload":Lorg/json/JSONObject;
    :cond_4
    :goto_0
    goto :goto_1

    .line 5637
    :catch_0
    move-exception v2

    .line 5638
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_BTAUDIO_CONNECT_STATE_NOTIFY json error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5641
    .end local v1    # "state":I
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    goto/16 :goto_7

    :cond_5
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5642
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5643
    .local v1, "stream":I
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 5644
    .local v2, "level":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3, v1, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II)V

    .line 5645
    .end local v1    # "stream":I
    .end local v2    # "level":I
    goto/16 :goto_7

    :cond_6
    const-string/jumbo v1, "zeekr.intent.action.MUTE_ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 5646
    const-string v1, "open"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 5647
    .local v1, "open":Z
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_AR_MUTE open = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5649
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 5650
    const/high16 v3, -0x80000000

    const v4, 0x50002

    if-eqz v1, :cond_7

    .line 5651
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    goto :goto_2

    .line 5653
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v2}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5658
    :cond_8
    :goto_2
    goto :goto_3

    .line 5656
    :catch_1
    move-exception v2

    .line 5657
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarBodyStateManager"

    const-string v4, "Car is not connected"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5659
    .end local v1    # "open":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    goto/16 :goto_7

    :cond_9
    const-string v1, "ACTION_MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5661
    const/4 v1, 0x0

    .line 5662
    .local v1, "current_level":I
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 5663
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    move v1, v2

    .line 5665
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5666
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "domain"

    const-string v4, "Media"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5667
    const-string v3, "id"

    const-string v4, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5668
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5669
    .restart local v3    # "payload":Lorg/json/JSONObject;
    const-string v4, "VolumeLevel"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5670
    const-string v4, "payload"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5671
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 5672
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 5673
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY set json success jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5675
    :cond_a
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY set json failed jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v1    # "current_level":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "payload":Lorg/json/JSONObject;
    goto :goto_4

    .line 5679
    :catch_2
    move-exception v1

    .line 5680
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY json error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5681
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_b
    :goto_4
    goto/16 :goto_7

    .line 5682
    :cond_c
    const-string v1, "ACTION_PHONE_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5684
    const/4 v1, 0x0

    .line 5685
    .local v1, "current_level":I
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 5686
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    move v1, v2

    .line 5688
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5689
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    const-string v3, "domain"

    const-string v4, "Phone"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5690
    const-string v3, "id"

    const-string v4, "PHONE_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5691
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5692
    .restart local v3    # "payload":Lorg/json/JSONObject;
    const-string v4, "VolumeLevel"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5693
    const-string v4, "payload"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5694
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 5695
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 5696
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_UPDATE_VOLUME_LEVEL_NOTIFY set json success jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 5698
    :cond_d
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_UPDATE_VOLUME_LEVEL_NOTIFY set json failed jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v1    # "current_level":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "payload":Lorg/json/JSONObject;
    goto :goto_5

    .line 5702
    :catch_3
    move-exception v1

    .line 5703
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback update phone PHONE_UPDATE_VOLUME_LEVEL_NOTIFY json error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5704
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_e
    :goto_5
    goto/16 :goto_7

    .line 5705
    :cond_f
    const-string v1, "ACTION_NAVI_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5707
    const/4 v1, 0x0

    .line 5708
    .local v1, "current_level":I
    :try_start_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 5709
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    move v1, v2

    .line 5711
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5712
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    const-string v3, "domain"

    const-string v4, "Navi"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5713
    const-string v3, "id"

    const-string v4, "NAVI_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5714
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5715
    .restart local v3    # "payload":Lorg/json/JSONObject;
    const-string v4, "VolumeLevel"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5716
    const-string v4, "payload"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5717
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 5718
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$14;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5719
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NAVI_UPDATE_VOLUME_LEVEL_NOTIFY set json success jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5721
    :cond_10
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NAVI_UPDATE_VOLUME_LEVEL_NOTIFY set json failed jsonObject="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5727
    .end local v1    # "current_level":I
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "payload":Lorg/json/JSONObject;
    :cond_11
    :goto_6
    goto :goto_7

    .line 5725
    :catch_4
    move-exception v1

    .line 5726
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback update phone NAVI_UPDATE_VOLUME_LEVEL_NOTIFY json error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_12
    :goto_7
    return-void
.end method
