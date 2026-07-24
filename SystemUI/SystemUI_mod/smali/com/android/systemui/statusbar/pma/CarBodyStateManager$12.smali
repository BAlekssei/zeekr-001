.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;
.super Ljava/lang/Object;
.source "CarBodyStateManager.java"

# interfaces
.implements Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;


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

    .line 4958
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/support/car/hardware/CarSensorManager;Landroid/support/car/hardware/CarSensorEvent;)V
    .locals 9
    .param p1, "manager"    # Landroid/support/car/hardware/CarSensorManager;
    .param p2, "event"    # Landroid/support/car/hardware/CarSensorEvent;

    .line 4962
    const/16 v0, -0xbb8

    .line 4963
    .local v0, "isAQILevel":I
    const/4 v1, 0x4

    .line 4965
    .local v1, "mAQIAVAI":I
    iget v2, p2, Landroid/support/car/hardware/CarSensorEvent;->sensorType:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_15

    const/4 v5, 0x7

    if-eq v2, v5, :cond_13

    const v5, 0x60000009

    if-eq v2, v5, :cond_11

    const v5, 0x6000002c

    const/4 v6, 0x1

    if-eq v2, v5, :cond_f

    const/4 v4, 0x3

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v7, 0x4

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_4

    .line 5037
    :pswitch_0
    invoke-virtual {p2, v5}, Landroid/support/car/hardware/CarSensorEvent;->getCarInAqiLevel(Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;)Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;

    move-result-object v2

    iget v1, v2, Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;->availability:I

    .line 5038
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5039
    const-string v2, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSensorChanged: mAQIAVAI = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    :cond_0
    if-ne v1, v6, :cond_1

    .line 5042
    invoke-virtual {p2, v5}, Landroid/support/car/hardware/CarSensorEvent;->getCarInAqiLevel(Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;)Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;

    move-result-object v2

    iget v0, v2, Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;->level:I

    goto :goto_0

    .line 5043
    :cond_1
    if-ne v1, v3, :cond_2

    .line 5044
    const/4 v0, 0x4

    goto :goto_0

    .line 5045
    :cond_2
    if-ne v1, v7, :cond_3

    .line 5046
    const/4 v0, -0x1

    .line 5048
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5049
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSensorChanged: isAQILevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5051
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v2, v6, v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateAQILevelInternal(ZI)V

    .line 5052
    goto/16 :goto_4

    .line 5016
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {p2, v5}, Landroid/support/car/hardware/CarSensorEvent;->getCarInPM25State(Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;)Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;

    move-result-object v3

    iget v3, v3, Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;->availability:I

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5002(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 5017
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5018
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSensorChanged: inPm25AVAI = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v8}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    :cond_5
    const/4 v2, 0x2

    .line 5021
    .local v2, "inPm25State":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 5022
    invoke-virtual {p2, v5}, Landroid/support/car/hardware/CarSensorEvent;->getCarInPM25State(Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;)Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;

    move-result-object v3

    iget v2, v3, Landroid/support/car/hardware/CarSensorEvent$CarInPM25State;->state:I

    goto :goto_1

    .line 5023
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 5025
    const/4 v2, 0x0

    goto :goto_1

    .line 5026
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    if-ne v3, v7, :cond_8

    .line 5028
    const/4 v2, -0x1

    .line 5030
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5031
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged: pm25 state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5033
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 5035
    goto/16 :goto_4

    .line 4985
    .end local v2    # "inPm25State":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {p2, v5}, Landroid/support/car/hardware/CarSensorEvent;->getCarOutTempData(Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;)Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;

    move-result-object v7

    iget v7, v7, Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;->availability:I

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4702(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 4986
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v2

    if-ne v2, v6, :cond_b

    .line 4987
    invoke-virtual {p2, v5}, Landroid/support/car/hardware/CarSensorEvent;->getCarOutTempData(Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;)Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;

    move-result-object v2

    iget v2, v2, Landroid/support/car/hardware/CarSensorEvent$CarOutTempData;->temp:F

    .line 4988
    .local v2, "outsideTemp":F
    float-to-double v3, v2

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_a

    float-to-double v3, v2

    const-wide/high16 v5, -0x3fea000000000000L    # -5.5

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_a

    .line 4989
    const/4 v3, 0x1

    .line 4990
    .local v3, "isRoadSlip":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    goto :goto_3

    .line 4992
    .end local v3    # "isRoadSlip":I
    :cond_a
    const/4 v3, 0x0

    .line 4993
    .restart local v3    # "isRoadSlip":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    goto :goto_3

    .line 4995
    .end local v2    # "outsideTemp":F
    .end local v3    # "isRoadSlip":I
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v2

    if-eq v2, v4, :cond_d

    iget-object v2, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v2

    if-ne v2, v3, :cond_c

    goto :goto_2

    .line 5000
    :cond_c
    const v2, -0x3ac48000    # -3000.0f

    .line 5001
    .restart local v2    # "outsideTemp":F
    const/4 v3, 0x0

    .line 5002
    .restart local v3    # "isRoadSlip":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    goto :goto_3

    .line 4996
    .end local v2    # "outsideTemp":F
    .end local v3    # "isRoadSlip":I
    :cond_d
    :goto_2
    const/high16 v2, -0x3b060000    # -2000.0f

    .line 4997
    .restart local v2    # "outsideTemp":F
    const/4 v3, 0x0

    .line 4998
    .restart local v3    # "isRoadSlip":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 5004
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;F)V

    .line 5005
    goto/16 :goto_4

    .line 4968
    .end local v2    # "outsideTemp":F
    .end local v3    # "isRoadSlip":I
    :pswitch_3
    invoke-virtual {p2, v5}, Landroid/support/car/hardware/CarSensorEvent;->getCarInPM25Data(Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;)Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;

    move-result-object v2

    iget v2, v2, Landroid/support/car/hardware/CarSensorEvent$CarInPM25Data;->pm25:I

    .line 4969
    .local v2, "newPm25Value":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    if-eq v3, v2, :cond_17

    .line 4970
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4302(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 4971
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4972
    const-string v3, "CarBodyStateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged: pm25Value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4974
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    goto/16 :goto_4

    .line 4978
    .end local v2    # "newPm25Value":I
    :pswitch_4
    invoke-virtual {p2, v5}, Landroid/support/car/hardware/CarSensorEvent;->getCarOutPM25Data(Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;)Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;

    move-result-object v2

    iget v2, v2, Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;->pm25:I

    .line 4979
    .local v2, "newAqi":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v3

    if-eq v3, v2, :cond_17

    .line 4980
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4502(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)I

    .line 4981
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$4600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    goto/16 :goto_4

    .line 5055
    .end local v2    # "newAqi":I
    :cond_f
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5056
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged: BATTERY_LEVEL = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    :cond_10
    iget-object v2, p2, Landroid/support/car/hardware/CarSensorEvent;->floatValues:[F

    aget v2, v2, v4

    .line 5059
    .local v2, "mBatteryLevel":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v3, v6, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateBatteryLevel(ZF)V

    .line 5060
    goto/16 :goto_4

    .line 5062
    .end local v2    # "mBatteryLevel":F
    :cond_11
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5063
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged: ENDURANCE_MILEAGE = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5065
    :cond_12
    iget-object v2, p2, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aget v2, v2, v4

    .line 5066
    .local v2, "enduranceMileage":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 5067
    goto :goto_4

    .line 5069
    .end local v2    # "enduranceMileage":I
    :cond_13
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5070
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged: SENSOR_TYPE_GEAR = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5072
    :cond_14
    iget-object v2, p2, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aget v2, v2, v4

    .line 5073
    .local v2, "gear":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 5074
    goto :goto_4

    .line 5076
    .end local v2    # "gear":I
    :cond_15
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5077
    const-string v2, "CarBodyStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged: SENSOR_TYPE_CAR_SPEED = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    :cond_16
    iget-object v2, p2, Landroid/support/car/hardware/CarSensorEvent;->intValues:[I

    aget v2, v2, v4

    .line 5080
    .local v2, "speed":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$12;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$5400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 5081
    nop

    .line 5085
    .end local v2    # "speed":I
    :cond_17
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x60000001
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60000012
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
