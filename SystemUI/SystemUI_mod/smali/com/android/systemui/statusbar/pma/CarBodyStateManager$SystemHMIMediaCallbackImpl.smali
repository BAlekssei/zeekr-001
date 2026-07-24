.class public Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;
.super Landroid/app/systemHMI/ISystemHMICallback$Stub;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemHMIMediaCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 6298
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Landroid/app/systemHMI/ISystemHMICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomainId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6413
    const-string v0, "Media"

    return-object v0
.end method

.method public getState(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6409
    return-void
.end method

.method public onReceive(Ljava/lang/String;)Z
    .locals 9
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6302
    const/4 v0, 0x0

    .line 6303
    .local v0, "payloadObject":Lorg/json/JSONObject;
    const-string v1, ""

    .line 6306
    .local v1, "msgId":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6307
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 6308
    const-string v3, "payload"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6309
    const-string v3, "payload"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, v3

    .line 6310
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback payload is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " message id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6312
    :cond_0
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback payload is null message id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6317
    :goto_0
    goto :goto_1

    .line 6315
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 6316
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback onReceive json error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6319
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x511a83ec

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_4

    const v4, -0x3319ce98

    if-eq v3, v4, :cond_3

    const v4, 0x25b86ab8

    if-eq v3, v4, :cond_2

    const v4, 0x55d565a9

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v3, "MEDIA_UPDATE_OUT_VOLUME_LEVEL_CONTROL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :cond_2
    const-string v3, "MEDIA_UPDATE_VOLUME_LEVEL_CONTROL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v6

    goto :goto_2

    :cond_3
    const-string v3, "MEDIA_REQUEST_VOLUME_LEVEL_CONTROL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v7

    goto :goto_2

    :cond_4
    const-string v3, "MEDIA_OPEN_BT_SETTINGS_CONTROL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v5

    :cond_5
    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    .line 6393
    :pswitch_0
    const-string v2, "CarBodyStateManager"

    const-string v3, "MEDIA_OPEN_BLUETOOTH_SETTINGS_CONTROL received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6394
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6395
    .local v2, "bluetooth":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.geely.pma.settings"

    const-string v5, "com.geely.pma.settings.SettingsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6396
    .local v3, "setting":Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6397
    const-string v4, "ecarx.intent.action.ECARX_BLUETOOTH_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6398
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6399
    goto/16 :goto_c

    .line 6369
    .end local v2    # "bluetooth":Landroid/content/Intent;
    .end local v3    # "setting":Landroid/content/ComponentName;
    :pswitch_1
    const-string v2, "CarBodyStateManager"

    const-string v3, "MEDIA_UPDATE_OUT_VOLUME_LEVEL_CONTROL received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6371
    if-eqz v0, :cond_9

    .line 6372
    :try_start_1
    const-string v2, "VolumeLevel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 6373
    .local v2, "current_level":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7202(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 6374
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 6375
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    move-result-object v3

    const/16 v4, 0x73

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 6376
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$LocalsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6377
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MEDIA_UPDATE_OUT_VOLUME_LEVEL_CONTROL mHMIOccVolumeLister != null "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;

    move-result-object v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " current_level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6378
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 6379
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIOccVolumeLister;->onHMIOccVolumeChange(I)V

    .line 6381
    .end local v3    # "msg":Landroid/os/Message;
    :cond_7
    goto :goto_4

    .line 6382
    :cond_8
    const-string v3, "CarBodyStateManager"

    const-string v4, "CarAudioManager is not connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6384
    .end local v2    # "current_level":I
    :goto_4
    goto :goto_5

    .line 6387
    :catch_1
    move-exception v2

    goto :goto_6

    .line 6385
    :cond_9
    const-string v2, "CarBodyStateManager"

    const-string v3, " callback MEDIA_UPDATE_OUT_VOLUME_LEVEL_CONTROL failed payload is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6389
    :goto_5
    goto/16 :goto_c

    .line 6387
    :goto_6
    nop

    .line 6388
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback update MEDIA_UPDATE_OUT_VOLUME_LEVEL_CONTROL json error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6390
    .end local v2    # "e":Lorg/json/JSONException;
    goto/16 :goto_c

    .line 6346
    :pswitch_2
    const-string v2, "CarBodyStateManager"

    const-string v3, "MEDIA_UPDATE_VOLUME_LEVEL_CONTROL received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6348
    if-eqz v0, :cond_d

    .line 6349
    :try_start_2
    const-string v2, "VolumeLevel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 6350
    .local v2, "current_level":I
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MEDIA_UPDATE_VOLUME_LEVEL_CONTROL VolumeLevel = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mAudioManager = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6351
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 6352
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5, v2, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 6353
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_UPDATE_VOLUME_LEVEL_CONTROL mHMIMusicVolumeLister != null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;

    move-result-object v5

    if-eqz v5, :cond_a

    goto :goto_7

    :cond_a
    move v6, v7

    :goto_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " current_level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6354
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 6355
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$7400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$HMIMusicVolumeLister;->onHMIVolumeChange(I)V

    goto :goto_8

    .line 6358
    :cond_b
    const-string v3, "CarBodyStateManager"

    const-string v4, "CarAudioManager is not connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6360
    .end local v2    # "current_level":I
    :cond_c
    :goto_8
    goto :goto_9

    .line 6363
    :catch_2
    move-exception v2

    goto :goto_a

    .line 6361
    :cond_d
    const-string v2, "CarBodyStateManager"

    const-string v3, " callback phone MEDIA_UPDATE_VOLUME_LEVEL_CONTROL failed payload is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6365
    :goto_9
    goto/16 :goto_c

    .line 6363
    :goto_a
    nop

    .line 6364
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback update phone MEDIA_UPDATE_VOLUME_LEVEL_CONTROL json error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6366
    .end local v2    # "e":Lorg/json/JSONException;
    goto/16 :goto_c

    .line 6322
    :pswitch_3
    const/4 v2, 0x0

    .line 6323
    .local v2, "current_level":I
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 6324
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    move v2, v3

    .line 6326
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 6327
    .local v3, "volume":Lorg/json/JSONObject;
    const-string v4, "domain"

    const-string v5, "Media"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6328
    const-string v4, "id"

    const-string v5, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6329
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 6330
    .local v4, "payload":Lorg/json/JSONObject;
    const-string v5, "VolumeLevel"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6331
    const-string v5, "payload"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6332
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 6333
    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/systemHMI/SystemHMIManager;->set(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 6334
    const-string v5, "CarBodyStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY set json success jsonObject="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 6336
    :cond_e
    const-string v5, "CarBodyStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY set json failed jsonObject="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 6342
    .end local v2    # "current_level":I
    .end local v3    # "volume":Lorg/json/JSONObject;
    .end local v4    # "payload":Lorg/json/JSONObject;
    :cond_f
    :goto_b
    goto :goto_c

    .line 6340
    :catch_3
    move-exception v2

    .line 6341
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_UPDATE_VOLUME_LEVEL_NOTIFY json error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6343
    .end local v2    # "e":Lorg/json/JSONException;
    nop

    .line 6404
    :goto_c
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
