.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"

# interfaces
.implements Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;


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

    .line 5096
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 8
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 5100
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5101
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCarHVACEventCallback  onChangeEvent , value.getPropertyId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5104
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    .line 5336
    :sswitch_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5337
    .local v0, "isAuto":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5338
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCarSettingChanged: ID_YFVE_HVAC_FUNCCO2AUTOVENTDISPLAY_DATA is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5340
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAQICO2AutoStateInternal(ZI)V

    .end local v0    # "isAuto":I
    goto/16 :goto_5

    .line 5279
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateShift:I

    if-gtz v0, :cond_2c

    .line 5280
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5281
    .local v0, "shift":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    const/16 v3, 0x9

    if-le v2, v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    if-gt v2, v3, :cond_2c

    if-ne v0, v5, :cond_2c

    .line 5282
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v2

    if-ne v0, v5, :cond_4

    const/16 v3, 0xa

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_0
    iput v3, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    .line 5283
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID_YFVE_HVAC_FAN_SPEED_MODE mLastClimateShift"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mLastClimateShift:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5284
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateAVAI:I

    if-ne v2, v5, :cond_5

    .line 5285
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v6, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateClimateShift(ZI)V

    goto/16 :goto_5

    .line 5287
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2, v5, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateClimateShift(ZI)V

    goto/16 :goto_5

    .line 5322
    .end local v0    # "shift":I
    :sswitch_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5323
    .local v0, "co2Level":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropStatus()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2TimeOut:I

    .line 5324
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5325
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCarSettingChanged: ID_YFVE_HVAC_FUNCCCMINTCO2LVL_DATA is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5327
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mAQICO2TimeOut:I

    if-ne v1, v5, :cond_7

    .line 5328
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAQICO2LevelInternal(ZI)V

    goto/16 :goto_5

    .line 5330
    :cond_7
    const-string v1, "CarBodyStateManager"

    const-string v2, "co2 timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5331
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v5, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAQICO2LevelInternal(ZI)V

    .line 5333
    goto/16 :goto_5

    .line 5303
    .end local v0    # "co2Level":I
    :sswitch_3
    const/4 v0, 0x0

    .line 5304
    .local v0, "isECOOn":Z
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 5305
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropStatus()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOAvai:I

    .line 5306
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5307
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECO Availability = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOAvai:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5309
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOAvai:I

    if-ne v1, v5, :cond_9

    .line 5310
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5311
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOStatus:Z

    .line 5312
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOStatus:Z

    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateClimateECOStatu(ZZ)V

    goto/16 :goto_5

    .line 5313
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOAvai:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    .line 5314
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOStatus:Z

    invoke-virtual {v1, v6, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateClimateECOStatu(ZZ)V

    goto/16 :goto_5

    .line 5315
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mECOAvai:I

    if-ne v1, v3, :cond_2c

    .line 5316
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v5, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateClimateECOStatu(ZZ)V

    goto/16 :goto_5

    .line 5191
    .end local v0    # "isECOOn":Z
    :sswitch_4
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    if-ne v0, v5, :cond_11

    .line 5192
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropStatus()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    .line 5193
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5194
    .local v0, "shift":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5195
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Seat Driver Ventilation Shift Availability = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v7}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Ventilation Shift value = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5197
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    if-ne v1, v5, :cond_c

    .line 5198
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5602(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    goto :goto_1

    .line 5199
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    if-ne v1, v3, :cond_d

    .line 5201
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5602(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5203
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5502(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    goto :goto_1

    .line 5204
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftVentilationAvai:I

    if-ne v1, v4, :cond_e

    .line 5206
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5602(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5208
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5502(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5210
    :cond_e
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5211
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentDriverHeat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",currentDriverVent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDriveVentilationHeatChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5215
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5216
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5702(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z

    .line 5217
    return-void

    .line 5219
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDriverHeatOrVentilationShift(ZII)V

    goto/16 :goto_5

    .line 5221
    .end local v0    # "shift":I
    :cond_11
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    if-ne v0, v4, :cond_2c

    .line 5222
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropStatus()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    .line 5223
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5224
    .restart local v0    # "shift":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 5225
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Seat Passenger Ventilation Shift Availability = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v7}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Ventilation Shift value = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5227
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    if-ne v1, v5, :cond_13

    .line 5228
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5902(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    goto :goto_2

    .line 5229
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    if-ne v1, v3, :cond_14

    .line 5231
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5902(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5233
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5802(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    goto :goto_2

    .line 5234
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightVentilationAvai:I

    if-ne v1, v4, :cond_15

    .line 5236
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5902(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5238
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5802(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5240
    :cond_15
    :goto_2
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5241
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPassengerHeat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",currentPassengerVent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isPassengerVentilationHeatChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5245
    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5246
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6002(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z

    .line 5247
    return-void

    .line 5249
    :cond_17
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePassengerHeatOrVentilationShift(ZII)V

    goto/16 :goto_5

    .line 5254
    .end local v0    # "shift":I
    :sswitch_5
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5255
    const-string v0, "CarBodyStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCarHVACEventCallback  onChangeEvent : sync status= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    :cond_18
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    if-ne v0, v2, :cond_2c

    .line 5258
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v5

    .line 5259
    .local v0, "isSync":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateTempSyncState(ZZ)V

    .line 5260
    .end local v0    # "isSync":Z
    goto/16 :goto_5

    .line 5126
    :sswitch_6
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    if-ne v0, v5, :cond_1f

    .line 5127
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropStatus()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    .line 5128
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5129
    .local v0, "shift":I
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5130
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Seat Driver Heat Shift Availability = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v7}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  Shift value = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5132
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    if-ne v1, v5, :cond_1a

    .line 5133
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5502(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    goto :goto_3

    .line 5134
    :cond_1a
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    if-ne v1, v3, :cond_1b

    .line 5136
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5502(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5138
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5602(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    goto :goto_3

    .line 5139
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatLeftTempAvai:I

    if-ne v1, v4, :cond_1c

    .line 5141
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5502(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5143
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5602(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5145
    :cond_1c
    :goto_3
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 5146
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentDriverHeat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",currentDriverVent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDriveVentilationHeatChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5150
    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 5151
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5702(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z

    .line 5152
    return-void

    .line 5154
    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDriverHeatOrVentilationShift(ZII)V

    goto/16 :goto_5

    .line 5156
    .end local v0    # "shift":I
    :cond_1f
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    if-ne v0, v4, :cond_2c

    .line 5157
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropStatus()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    .line 5158
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5159
    .restart local v0    # "shift":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5160
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5161
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 5162
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get Seat Passenger Heat Shift Availability = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v7}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v7

    iget v7, v7, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Shift value = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5164
    :cond_20
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    if-ne v1, v5, :cond_21

    .line 5165
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5802(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    goto :goto_4

    .line 5166
    :cond_21
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    if-ne v1, v3, :cond_22

    .line 5168
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5802(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5170
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5902(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    goto :goto_4

    .line 5171
    :cond_22
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mSeatRightTempAvai:I

    if-ne v1, v4, :cond_23

    .line 5173
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5802(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5175
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5902(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5177
    :cond_23
    :goto_4
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 5178
    const-string v1, "CarBodyStateManager.HEAT_VENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPassengerHeat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",currentPassengerVent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isPassengerVentilationHeatChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/LogUitlForPMA;->LOG(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5182
    :cond_24
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 5183
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$6002(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;Z)Z

    .line 5184
    return-void

    .line 5186
    :cond_25
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePassengerHeatOrVentilationShift(ZII)V

    goto/16 :goto_5

    .line 5264
    .end local v0    # "shift":I
    :sswitch_7
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2c

    .line 5265
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropStatus()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateAVAI:I

    .line 5266
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5267
    const-string v0, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Climate Shift Availability = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateAVAI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPreClimateAVAI:I

    if-ne v0, v5, :cond_27

    .line 5270
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5271
    .restart local v0    # "shift":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateClimateShift(ZI)V

    goto/16 :goto_5

    .line 5273
    .end local v0    # "shift":I
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateClimateShift(ZI)V

    goto/16 :goto_5

    .line 5293
    :sswitch_8
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5294
    .local v0, "isOn":Z
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5295
    const-string v1, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOn= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5297
    :cond_28
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 5299
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAcPowerChange(ZZ)V

    goto/16 :goto_5

    .line 5107
    .end local v0    # "isOn":Z
    :sswitch_9
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 5108
    .local v0, "temp":F
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    if-ne v1, v5, :cond_2a

    .line 5109
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropStatus()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDriverTempAVAI:I

    .line 5110
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5111
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID_ZONED_TEMP_SETPOINT mCarHVACEventCallback, driverTemp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mDriverTempAVAI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mDriverTempAVAI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5113
    :cond_29
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDriverTemp(ZF)V

    goto :goto_5

    .line 5114
    :cond_2a
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    if-ne v1, v4, :cond_2c

    .line 5115
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropStatus()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerTempAVAI:I

    .line 5116
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 5117
    const-string v1, "CarBodyStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID_ZONED_TEMP_SETPOINT mCarHVACEventCallback, passengerTemp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mPassengerTempAVAI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$CarBodyStateData;->mPassengerTempAVAI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    :cond_2b
    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$13;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updatePassengerTemp(ZF)V

    .line 5343
    .end local v0    # "temp":F
    :cond_2c
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4001 -> :sswitch_9
        0x4003 -> :sswitch_8
        0x4004 -> :sswitch_7
        0x4008 -> :sswitch_6
        0x400d -> :sswitch_5
        0x4010 -> :sswitch_4
        0x4015 -> :sswitch_3
        0x5501 -> :sswitch_2
        0x5503 -> :sswitch_1
        0x5504 -> :sswitch_0
    .end sparse-switch
.end method

.method public onErrorEvent(II)V
    .locals 3
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 5347
    const/16 v0, 0x4001

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4008

    if-eq p1, v0, :cond_3

    const/16 v0, 0x400d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4010

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5372
    :pswitch_0
    goto :goto_0

    .line 5374
    :pswitch_1
    goto :goto_0

    .line 5363
    :cond_0
    if-ne p2, v2, :cond_1

    goto :goto_0

    .line 5365
    :cond_1
    goto :goto_0

    .line 5370
    :cond_2
    goto :goto_0

    .line 5356
    :cond_3
    if-ne p2, v2, :cond_4

    goto :goto_0

    .line 5358
    :cond_4
    goto :goto_0

    .line 5349
    :cond_5
    if-ne p2, v2, :cond_6

    goto :goto_0

    .line 5351
    :cond_6
    nop

    .line 5378
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
