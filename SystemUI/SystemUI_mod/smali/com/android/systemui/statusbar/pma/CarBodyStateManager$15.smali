.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"

# interfaces
.implements Landroid/car/hardware/rsem/CarRSEMYfveManager$CarRSEMYfveCallback;


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

    .line 6033
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 11
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 6036
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6037
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext getPackageName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6039
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6040
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6041
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent PropertyId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    :cond_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x50001

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x50002

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    .line 6122
    :pswitch_0
    const/4 v0, 0x0

    .line 6123
    .local v0, "isMuted":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6124
    .local v1, "ret":I
    if-nez v1, :cond_3

    .line 6125
    const/4 v0, 0x0

    goto :goto_0

    .line 6126
    :cond_3
    if-ne v1, v5, :cond_4

    .line 6127
    const/4 v0, 0x1

    .line 6130
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/media/CarAudioManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6132
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/media/CarAudioManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/car/media/CarAudioManager;->setMediaMute(Z)Z

    .line 6133
    if-eqz v0, :cond_5

    .line 6134
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v2

    invoke-virtual {v2, v4, v6, v5}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    goto :goto_1

    .line 6136
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v2

    invoke-virtual {v2, v4, v6, v3}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    goto :goto_1

    .line 6139
    :cond_6
    const-string v2, "CarBodyStateManager"

    const-string v3, "CarAudioManager is not connected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6143
    .end local v0    # "isMuted":Z
    .end local v1    # "ret":I
    :goto_1
    goto/16 :goto_8

    .line 6141
    :catch_0
    move-exception v0

    .line 6142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarBodyStateManager"

    const-string v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 6103
    :pswitch_1
    const/4 v0, 0x0

    .line 6104
    .local v0, "isMuted":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/media/CarAudioManager;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 6106
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/media/CarAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/car/media/CarAudioManager;->isMediaMuted()Z

    move-result v1

    move v0, v1

    goto :goto_2

    .line 6108
    :cond_7
    const-string v1, "CarBodyStateManager"

    const-string v2, "CarAudioManager is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6110
    :goto_2
    if-eqz v0, :cond_8

    .line 6111
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v1

    invoke-virtual {v1, v4, v6, v5}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    goto :goto_3

    .line 6113
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v1

    invoke-virtual {v1, v4, v6, v3}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6117
    .end local v0    # "isMuted":Z
    :goto_3
    goto/16 :goto_8

    .line 6115
    :catch_1
    move-exception v0

    .line 6116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarBodyStateManager"

    const-string v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6118
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 6076
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6077
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->oneTime:J

    .line 6080
    :cond_9
    const/4 v0, 0x0

    .line 6081
    .local v0, "level":I
    :try_start_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v4

    .line 6083
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 6084
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 6085
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 6086
    .local v2, "result":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6087
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID_RSEM_MEDIA_FUNCREQSETVOL duringtime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-wide v7, v5, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->oneTime:J

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-wide v9, v5, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lastTime:J

    sub-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6089
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v2}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V

    .line 6090
    .end local v2    # "result":I
    goto :goto_4

    .line 6091
    :cond_b
    const-string v1, "CarBodyStateManager"

    const-string v2, "CarAudioManager is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6095
    .end local v0    # "level":I
    :goto_4
    goto :goto_5

    .line 6093
    :catch_2
    move-exception v0

    .line 6094
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarBodyStateManager"

    const-string v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6096
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6097
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-wide v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->oneTime:J

    iput-wide v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->lastTime:J

    goto/16 :goto_8

    .line 6050
    :pswitch_3
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 6051
    .local v0, "result":[Ljava/lang/Integer;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 6052
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onChangeEvent result:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6054
    :cond_c
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6055
    .local v3, "req":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 6056
    const-string v4, "CarBodyStateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID_RSEM_MEDIA_FUNCREQGETVOL---req = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6058
    :cond_d
    if-ne v3, v5, :cond_f

    .line 6060
    const/4 v4, 0x0

    .line 6061
    .local v4, "level":I
    :try_start_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 6062
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    move v4, v2

    goto :goto_6

    .line 6064
    :cond_e
    const-string v2, "CarBodyStateManager"

    const-string v5, "CarAudioManager is not connected"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6066
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$15;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v4}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->setIntProperty(III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 6069
    .end local v4    # "level":I
    goto :goto_7

    .line 6067
    :catch_3
    move-exception v1

    .line 6068
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarBodyStateManager"

    const-string v4, "Car is not connected"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6072
    .end local v0    # "result":[Ljava/lang/Integer;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "req":I
    :cond_f
    :goto_7
    nop

    .line 6147
    :cond_10
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x50045
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 6152
    return-void
.end method
