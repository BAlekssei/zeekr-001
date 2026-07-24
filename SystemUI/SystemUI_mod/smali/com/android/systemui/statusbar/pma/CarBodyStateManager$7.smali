.class Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;
.super Landroid/support/car/CarConnectionCallback;
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

    .line 3877
    iput-object p1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-direct {p0}, Landroid/support/car/CarConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/support/car/Car;)V
    .locals 8
    .param p1, "car"    # Landroid/support/car/Car;

    .line 3880
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3881
    const-string v0, "CarBodyStateManager"

    const-string v1, "onConnected: star"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    :cond_0
    const/4 v0, 0x1

    .line 3885
    .local v0, "bootAnimnning":Z
    const/4 v1, 0x0

    .line 3886
    .local v1, "bootIn30sec":Z
    const/4 v2, 0x0

    .line 3888
    .local v2, "userUnlocked":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/os/UserManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3889
    const/4 v2, 0x1

    .line 3890
    const-string v3, "CarBodyStateManager"

    const-string v4, "onConnected: userUnlocked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    :cond_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string/jumbo v4, "service.bootanim.exit"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 3894
    const/4 v0, 0x0

    .line 3895
    const-string v4, "CarBodyStateManager"

    const-string v5, "onConnected: no in boot animnning"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 3901
    const/4 v1, 0x1

    .line 3902
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3903
    const-string v4, "CarBodyStateManager"

    const-string v5, "onConnected: System elapsedRealtime <= 30 sec"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_0

    .line 3910
    :cond_4
    const-string v4, "CarBodyStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConnected: no launcher app in normal mode.  bootAnimnning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " bootIn30sec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " userUnlocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " elapsedRealtime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3912
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3910
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3908
    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)I

    move-result v5

    const/16 v6, 0xbb8

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;II)V

    .line 3915
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 3916
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 3917
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$1900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 3918
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 3919
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 3920
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->updateDayNightMode()V

    .line 3921
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 3922
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v4}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)V

    .line 3924
    iget-object v4, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const-string v5, "persist.ota.status"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 3925
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3926
    const-string v3, "CarBodyStateManager"

    const-string v4, "onConnected: end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    :cond_6
    return-void
.end method

.method public onDisconnected(Landroid/support/car/Car;)V
    .locals 3
    .param p1, "car"    # Landroid/support/car/Car;

    .line 3933
    invoke-static {}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3934
    const-string v0, "CarBodyStateManager"

    const-string v1, "onDisconnected:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;I)V

    .line 3937
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/hvac/CarHvacManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3939
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/hvac/CarHvacManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->unregisterCallback(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3942
    goto :goto_0

    .line 3940
    :catch_0
    move-exception v0

    .line 3941
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3945
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3947
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const v2, 0x60000002

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3948
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const v2, 0x60000001

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3949
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const v2, 0x60000003

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3950
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const v2, 0x60000004

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3951
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const v2, 0x60000012

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3952
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const v2, 0x60000013

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3953
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const v2, 0x6000002c

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3954
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const v2, 0x60000007

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3955
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const v2, 0x60000009

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3956
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 3957
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2800(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/car/hardware/CarSensorManager;->removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3960
    goto :goto_1

    .line 3958
    :catch_1
    move-exception v0

    .line 3959
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3963
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/setting/CarSettingYfveManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3965
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$2900(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/setting/CarSettingYfveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3000(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingEventCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/setting/CarSettingYfveManager;->unregisterCallback(Landroid/car/hardware/setting/CarSettingYfveManager$CarSettingEventCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3968
    goto :goto_2

    .line 3966
    :catch_2
    move-exception v0

    .line 3967
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3971
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3972
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3100(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3200(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/car/hardware/rsem/CarRSEMYfveManager$CarRSEMYfveCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/rsem/CarRSEMYfveManager;->unregisterCallback(Landroid/car/hardware/rsem/CarRSEMYfveManager$CarRSEMYfveCallback;)V

    .line 3974
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3300(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIPhoneCallbackImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/systemHMI/SystemHMIManager;->unsubscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    .line 3975
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3500(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIMediaCallbackImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/systemHMI/SystemHMIManager;->unsubscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    .line 3976
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3600(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMINAVICallbackImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/systemHMI/SystemHMIManager;->unsubscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    .line 3977
    iget-object v0, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3400(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Landroid/app/systemHMI/SystemHMIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pma/CarBodyStateManager$7;->this$0:Lcom/android/systemui/statusbar/pma/CarBodyStateManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/pma/CarBodyStateManager;->access$3700(Lcom/android/systemui/statusbar/pma/CarBodyStateManager;)Lcom/android/systemui/statusbar/pma/CarBodyStateManager$SystemHMIGLOBALCallbackImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/systemHMI/SystemHMIManager;->unsubscribe(Landroid/app/systemHMI/ISystemHMICallback;)Z

    .line 3979
    return-void
.end method
