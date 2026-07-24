.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"

# interfaces
.implements Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingEventCallback;


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

    .line 4640
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 8
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 4643
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 4903
    :sswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4904
    .local v0, "batteryTemp":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4905
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: batteryTemp is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4907
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryTemp(ZI)V

    .line 4908
    goto/16 :goto_0

    .line 4911
    .end local v0    # "batteryTemp":I
    :sswitch_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4912
    .local v0, "buttonState":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4913
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: batteryTemp is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4915
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryPreheatingButton(ZI)V

    .line 4916
    goto/16 :goto_0

    .line 4887
    .end local v0    # "buttonState":I
    :sswitch_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4888
    .local v0, "sentryMode":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4889
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: sentryMode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4891
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateSentryMode(ZI)V

    .line 4892
    goto/16 :goto_0

    .line 4879
    .end local v0    # "sentryMode":I
    :sswitch_3
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4880
    .local v0, "sceneMode":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4881
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: sceneMode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4883
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateSceneMode(ZI)V

    .line 4884
    goto/16 :goto_0

    .line 4861
    .end local v0    # "sceneMode":I
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isSupportElectricDoor:Z

    if-nez v0, :cond_4

    .line 4862
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4863
    const-string v0, "CarBodyStateManager"

    const-string v1, "onCarSettingChanged not Support Electric Door"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4867
    :cond_4
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    .line 4868
    .local v0, "doorArea":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4869
    .local v4, "doorPos":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4870
    const-string v5, "CarBodyStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCarSettingChanged: doorPos is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", doorArea = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4873
    :cond_5
    if-ne v0, v1, :cond_23

    .line 4874
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePassengerDoorPos(ZI)V

    goto/16 :goto_0

    .line 4752
    .end local v0    # "doorArea":I
    .end local v4    # "doorPos":I
    :sswitch_5
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4753
    .local v0, "mbatteryIconColor":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4754
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: the mbatteryIconColor is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4756
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryIconColor(ZI)V

    .line 4757
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryColor(I)V

    .line 4758
    goto/16 :goto_0

    .line 4744
    .end local v0    # "mbatteryIconColor":I
    :sswitch_6
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4745
    .local v0, "mBatteryFailure":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4746
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: the mBatteryFailure is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4748
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryFailure(ZI)V

    .line 4749
    goto/16 :goto_0

    .line 4726
    .end local v0    # "mBatteryFailure":I
    :sswitch_7
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    .line 4727
    .local v0, "mStateArea":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4729
    .local v3, "mBatteryState":I
    if-ne v0, v2, :cond_9

    .line 4730
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4731
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged: AC BATTERY_STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryStateAC(ZI)V

    goto/16 :goto_0

    .line 4734
    :cond_9
    if-ne v0, v1, :cond_23

    .line 4735
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4736
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged: DC BATTERY_STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryStateDC(ZI)V

    goto/16 :goto_0

    .line 4702
    .end local v0    # "mStateArea":I
    .end local v3    # "mBatteryState":I
    :sswitch_8
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4703
    .local v0, "mDvrState":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4704
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: the dvr state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4706
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDvrState(ZI)V

    .line 4707
    goto/16 :goto_0

    .line 4775
    .end local v0    # "mDvrState":I
    :sswitch_9
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4776
    .local v0, "restMode":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4777
    const-string v1, "CarBodyStateManager"

    const-string v2, "ID_SETTING_FUNC_PARK_COMFORT_MODE_TIMER"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4779
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateParkComfortModeView()V

    .line 4780
    goto/16 :goto_0

    .line 4895
    .end local v0    # "restMode":I
    :sswitch_a
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4896
    .local v0, "locationMode":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4897
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: locationMode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4899
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateLocationMode(ZI)V

    .line 4900
    goto/16 :goto_0

    .line 4665
    .end local v0    # "locationMode":I
    :sswitch_b
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4666
    .local v0, "mPDCStatus":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4667
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the pdc status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4669
    :cond_e
    packed-switch v0, :pswitch_data_0

    .line 4676
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePDCStatusInternal(ZZ)V

    .line 4679
    goto/16 :goto_0

    .line 4673
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePDCStatusInternal(ZZ)V

    .line 4674
    goto/16 :goto_0

    .line 4789
    .end local v0    # "mPDCStatus":I
    :sswitch_c
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4790
    .local v0, "restModeLeftTime":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4791
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID_SETTING_FUNC_PCM_TIMER restModeLeftTime: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4793
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateParkComfortModeLeftTime()V

    .line 4794
    goto/16 :goto_0

    .line 4796
    .end local v0    # "restModeLeftTime":I
    :sswitch_d
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 4797
    .local v0, "estimatedTime":F
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4798
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: Estimated time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4800
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateEstimatedTime(ZF)V

    .line 4801
    goto/16 :goto_0

    .line 4811
    .end local v0    # "estimatedTime":F
    :sswitch_e
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 4812
    .local v0, "disChargeSocLevel":F
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4813
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarSettingChanged: dis charge soc level is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4815
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDisChargeSOCLevel(F)V

    .line 4816
    goto/16 :goto_0

    .line 4818
    .end local v0    # "disChargeSocLevel":F
    :sswitch_f
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4819
    .local v0, "V2VStatus":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4820
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: V2VStatus is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4822
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateV2VStatus(ZI)V

    .line 4823
    goto/16 :goto_0

    .line 4825
    .end local v0    # "V2VStatus":I
    :sswitch_10
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4826
    .local v0, "V2LStatus":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4827
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: V2LStatus is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4829
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateV2LStatus(ZI)V

    .line 4830
    goto/16 :goto_0

    .line 4782
    .end local v0    # "V2LStatus":I
    :sswitch_11
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4783
    .local v0, "usgMode":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4784
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID_SETTING_AVAILABLE_USGMODE usgMode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4786
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateParkComfortModeView()V

    .line 4787
    goto/16 :goto_0

    .line 4682
    .end local v0    # "usgMode":I
    :sswitch_12
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4683
    .local v0, "mDate":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4684
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarSettingChanged: the date format is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4687
    :cond_15
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDateFormat:I

    if-eq v1, v0, :cond_23

    .line 4688
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDateFormatUnit(I)V

    goto/16 :goto_0

    .line 4832
    .end local v0    # "mDate":I
    :sswitch_13
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4833
    const-string v0, "CarBodyStateManager"

    const-string v1, "CarSettingYfveManager.ID_SETTING_DAY_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4836
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_23

    .line 4837
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4838
    const-string v0, "CarBodyStateManager"

    const-string v1, "CarSettingYfveManager.ID_SETTING_DAY_MODE IS AUTO MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDayNightMode()V

    goto/16 :goto_0

    .line 4761
    :sswitch_14
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4762
    .local v0, "status":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4763
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarSettingChanged: ID_WPC_FUNC_CHARGE_STATES mode is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4765
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 4766
    goto/16 :goto_0

    .line 4768
    .end local v0    # "status":I
    :sswitch_15
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4769
    .local v0, "mode":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4770
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarSettingChanged: ID_WPC_FUNC_WORK_MODE mode is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4772
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 4773
    goto/16 :goto_0

    .line 4693
    .end local v0    # "mode":I
    :sswitch_16
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4694
    .local v0, "mTime":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4695
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarSettingChanged: the date format is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4698
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatemTimeFormatUnit(I)V

    .line 4699
    goto/16 :goto_0

    .line 4718
    .end local v0    # "mTime":I
    :sswitch_17
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4719
    .local v0, "mDCState":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4720
    const-string v1, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarSettingChanged: DC state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePlugStateDC(ZI)V

    .line 4723
    goto/16 :goto_0

    .line 4710
    .end local v0    # "mDCState":I
    :sswitch_18
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4711
    .local v0, "mACState":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4712
    const-string v1, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarSettingChanged: AC state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePlugStateAC(ZI)V

    .line 4715
    goto/16 :goto_0

    .line 4804
    .end local v0    # "mACState":I
    :sswitch_19
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 4805
    .local v0, "chargeSocLevel":F
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4806
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: charge soc level is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4808
    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeSOCLevel(ZF)V

    .line 4809
    goto/16 :goto_0

    .line 4654
    .end local v0    # "chargeSocLevel":F
    :sswitch_1a
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4655
    .local v0, "mUnitDistance":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4656
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarSettingChanged: the driver distance units is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4659
    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mUnitDis:I

    if-eq v1, v0, :cond_23

    .line 4660
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatemUnitDriverDis(I)V

    goto/16 :goto_0

    .line 4645
    .end local v0    # "mUnitDistance":I
    :sswitch_1b
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4646
    .local v0, "isCelsius":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4647
    const-string v1, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCarSettingChanged: the Outside temp unit is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4649
    :cond_1f
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->isCelsius:Z

    if-nez v0, :cond_20

    move v3, v2

    nop

    :cond_20
    if-eq v1, v3, :cond_23

    .line 4650
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateOutsideTempUnit(ZI)V

    goto :goto_0

    .line 4845
    .end local v0    # "isCelsius":I
    :sswitch_1c
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    .line 4846
    .local v0, "stateArea":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4847
    .local v1, "managerCapVal":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 4848
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCarSettingChanged: managerCapVal is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", stateArea = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4850
    :cond_21
    const/16 v3, 0x8

    if-ne v0, v3, :cond_22

    .line 4851
    sput-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isACCapCallback:Z

    .line 4852
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeACCap(ZI)V

    goto :goto_0

    .line 4854
    :cond_22
    const/16 v3, 0x80

    if-ne v0, v3, :cond_23

    .line 4855
    sput-boolean v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->isDCCapCallback:Z

    .line 4856
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$10;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateChargeDCCap(ZI)V

    .line 4920
    .end local v0    # "stateArea":I
    .end local v1    # "managerCapVal":I
    :cond_23
    :goto_0
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x4003 -> :sswitch_1c
        0x401a -> :sswitch_1b
        0x401c -> :sswitch_1a
        0x6002 -> :sswitch_19
        0x6006 -> :sswitch_18
        0x6007 -> :sswitch_17
        0x600d -> :sswitch_16
        0x601a -> :sswitch_15
        0x601b -> :sswitch_14
        0x601d -> :sswitch_13
        0x6020 -> :sswitch_12
        0x60ff -> :sswitch_11
        0x6117 -> :sswitch_10
        0x6118 -> :sswitch_f
        0x611c -> :sswitch_e
        0x6120 -> :sswitch_d
        0x6126 -> :sswitch_c
        0x6133 -> :sswitch_b
        0x6138 -> :sswitch_a
        0x7026 -> :sswitch_9
        0x7027 -> :sswitch_8
        0x7028 -> :sswitch_7
        0x7029 -> :sswitch_6
        0x7030 -> :sswitch_5
        0x8013 -> :sswitch_4
        0x9013 -> :sswitch_3
        0xa901 -> :sswitch_2
        0xee45 -> :sswitch_1
        0xee71 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 4925
    return-void
.end method
