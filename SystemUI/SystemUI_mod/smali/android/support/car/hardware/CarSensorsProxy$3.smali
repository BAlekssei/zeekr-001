.class Landroid/support/car/hardware/CarSensorsProxy$3;
.super Ljava/lang/Object;
.source "CarSensorsProxy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/car/hardware/CarSensorsProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/car/hardware/CarSensorsProxy;


# direct methods
.method constructor <init>(Landroid/support/car/hardware/CarSensorsProxy;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/car/hardware/CarSensorsProxy;

    .line 124
    iput-object p1, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 155
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 127
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 128
    .local v0, "type":I
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    monitor-enter v1

    .line 129
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 147
    :try_start_0
    const-string v2, "CarSensorsProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected sensor event type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v1

    return-void

    .line 151
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 136
    :pswitch_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v6}, Landroid/support/car/hardware/CarSensorsProxy;->access$800(Landroid/support/car/hardware/CarSensorsProxy;)[F

    move-result-object v6

    invoke-static {v5, v4, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/support/car/hardware/CarSensorsProxy;->access$902(Landroid/support/car/hardware/CarSensorsProxy;J)J

    .line 138
    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v3, v2}, Landroid/support/car/hardware/CarSensorsProxy;->access$300(Landroid/support/car/hardware/CarSensorsProxy;I)V

    .line 139
    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v6}, Landroid/support/car/hardware/CarSensorsProxy;->access$1000(Landroid/support/car/hardware/CarSensorsProxy;)[F

    move-result-object v6

    invoke-static {v5, v4, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/support/car/hardware/CarSensorsProxy;->access$1102(Landroid/support/car/hardware/CarSensorsProxy;J)J

    .line 143
    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    const/16 v4, 0xe

    invoke-static {v3, v4}, Landroid/support/car/hardware/CarSensorsProxy;->access$300(Landroid/support/car/hardware/CarSensorsProxy;I)V

    .line 144
    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v3, v2}, Landroid/support/car/hardware/CarSensorsProxy;->access$300(Landroid/support/car/hardware/CarSensorsProxy;I)V

    .line 145
    goto :goto_0

    .line 131
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v5}, Landroid/support/car/hardware/CarSensorsProxy;->access$600(Landroid/support/car/hardware/CarSensorsProxy;)[F

    move-result-object v5

    invoke-static {v2, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/support/car/hardware/CarSensorsProxy;->access$702(Landroid/support/car/hardware/CarSensorsProxy;J)J

    .line 133
    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy$3;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    const/16 v3, 0x12

    invoke-static {v2, v3}, Landroid/support/car/hardware/CarSensorsProxy;->access$300(Landroid/support/car/hardware/CarSensorsProxy;I)V

    .line 134
    nop

    .line 151
    :goto_0
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
