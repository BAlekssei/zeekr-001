.class Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;
.super Landroid/app/systemHMI/ISystemHMICallback$Stub;
.source "StatusBarForPMA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/pma/StatusBarForPMA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    .line 562
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

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

    .line 646
    const-string v0, "Global"

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

    .line 642
    return-void
.end method

.method public onReceive(Ljava/lang/String;)Z
    .locals 11
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 566
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 567
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "domain"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "domain":Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .local v3, "id":Ljava/lang/String;
    const-string v4, "payload"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 570
    .local v4, "payload":Lorg/json/JSONObject;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 571
    const-string v5, "StatusBarForPMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive-> jsonString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7ebfa886

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-eq v6, v7, :cond_4

    const v7, -0x45411ccb

    if-eq v6, v7, :cond_3

    const v7, 0xbc40fb3

    if-eq v6, v7, :cond_2

    const v7, 0x26ebc088

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "CSD_FULLSCREEN_CHARGING_STATUS_CHANGED_CALLBACK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v0

    goto :goto_0

    :cond_2
    const-string v6, "PLAY_VR_SOURCE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    const-string v6, "SystemHMI"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v9

    goto :goto_0

    :cond_4
    const-string v6, "CSD_CHARGING_STATUS_CHANGED_CALLBACK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v5, v8

    :cond_5
    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 616
    :pswitch_0
    const-string v5, "StatusBarForPMA"

    const-string v6, "onReceive: SystemHMI"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v5, "diag_req_value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 618
    .local v5, "event":Ljava/lang/String;
    const-string v6, "ascii"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 619
    .local v6, "value":[B
    array-length v7, v6

    if-eqz v7, :cond_9

    .line 620
    aget-byte v7, v6, v0

    const/4 v10, 0x5

    if-ne v7, v10, :cond_6

    .line 621
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$800(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V

    goto :goto_1

    .line 622
    :cond_6
    aget-byte v7, v6, v0

    if-ne v7, v9, :cond_9

    .line 623
    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$900(Lcom/android/systemui/statusbar/pma/StatusBarForPMA;[B)V

    goto :goto_1

    .line 611
    .end local v5    # "event":Ljava/lang/String;
    .end local v6    # "value":[B
    :pswitch_1
    const-string/jumbo v5, "vr_Status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 612
    .local v5, "action":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;->this$0:Lcom/android/systemui/statusbar/pma/StatusBarForPMA;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->sendBroadcastToVRApp(I)V

    .line 613
    goto :goto_1

    .line 593
    .end local v5    # "action":I
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 594
    const-string v5, "StatusBarForPMA"

    const-string v6, "onReceive: CSD_CHARGING_STATUS_CHANGED_CALLBACK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_7
    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 597
    .local v5, "charging_status":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$700()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$2;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$2;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    goto :goto_1

    .line 575
    .end local v5    # "charging_status":I
    :pswitch_3
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 576
    const-string v5, "StatusBarForPMA"

    const-string v6, "onReceive: CSD_FULLSCREEN_CHARGING_STATUS_CHANGED_CALLBACK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_8
    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 579
    .local v5, "charging_full_status":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$700()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$1;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6$1;-><init>(Lcom/android/systemui/statusbar/pma/StatusBarForPMA$6;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    nop

    .line 630
    .end local v5    # "charging_full_status":I
    :cond_9
    :goto_1
    return v8

    .line 631
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "payload":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/systemui/statusbar/pma/StatusBarForPMA;->access$000()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 633
    const-string v2, "StatusBarForPMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
