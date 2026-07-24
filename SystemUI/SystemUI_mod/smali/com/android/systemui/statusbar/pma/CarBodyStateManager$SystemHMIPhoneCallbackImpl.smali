.class public Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;
.super Landroid/app/systemHMI/ISystemHMICallback$Stub;
.source "CarBodyStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/CarBodyStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemHMIPhoneCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    .line 6240
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

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

    .line 6294
    const-string v0, "Phone"

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

    .line 6290
    return-void
.end method

.method public onReceive(Ljava/lang/String;)Z
    .locals 7
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6244
    const/4 v0, 0x0

    .line 6245
    .local v0, "payloadObject":Lorg/json/JSONObject;
    const-string v1, ""

    .line 6248
    .local v1, "msgId":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6249
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 6250
    const-string v3, "payload"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6251
    const-string v3, "payload"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, v3

    .line 6252
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

    .line 6254
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

    .line 6259
    :goto_0
    goto :goto_1

    .line 6257
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 6258
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

    .line 6261
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x66d62e94

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v3, "PHONE_ON_VOLUME_LEVEL_CONTROL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    goto :goto_6

    .line 6263
    :cond_3
    const-string v2, "CarBodyStateManager"

    const-string v3, "PHONE_ON_VOLUME_LEVEL_CONTROL received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6265
    if-eqz v0, :cond_5

    .line 6266
    :try_start_1
    const-string v2, "VolumeLevel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 6267
    .local v2, "current_level":I
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_ON_VOLUME_LEVEL_CONTROL VolumeLevel = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAudioManager = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6268
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6269
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_3

    .line 6271
    :cond_4
    const-string v3, "CarBodyStateManager"

    const-string v4, "CarAudioManager is not connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6273
    .end local v2    # "current_level":I
    :goto_3
    goto :goto_4

    .line 6276
    :catch_1
    move-exception v2

    goto :goto_5

    .line 6274
    :cond_5
    const-string v2, "CarBodyStateManager"

    const-string v3, " callback phone PHONE_ON_VOLUME_LEVEL_CONTROL failed payload is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6278
    :goto_4
    goto :goto_6

    .line 6276
    :goto_5
    nop

    .line 6277
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callback update phone PHONE_ON_VOLUME_LEVEL_CONTROL json error "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6279
    .end local v2    # "e":Lorg/json/JSONException;
    nop

    .line 6285
    :goto_6
    return v5
.end method
