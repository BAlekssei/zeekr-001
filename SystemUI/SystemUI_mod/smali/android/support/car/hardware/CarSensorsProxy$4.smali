.class Landroid/support/car/hardware/CarSensorsProxy$4;
.super Landroid/os/Handler;
.source "CarSensorsProxy.java"


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
.method constructor <init>(Landroid/support/car/hardware/CarSensorsProxy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/car/hardware/CarSensorsProxy;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 158
    iput-object p1, p0, Landroid/support/car/hardware/CarSensorsProxy$4;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 177
    const-string v0, "CarSensorsProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected msg dispatched. msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 163
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 165
    .local v0, "sensorType":I
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy$4;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy$4;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v2}, Landroid/support/car/hardware/CarSensorsProxy;->access$1200(Landroid/support/car/hardware/CarSensorsProxy;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 167
    .local v2, "listenersCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/car/hardware/CarSensorEvent;

    .line 169
    .local v1, "event":Landroid/support/car/hardware/CarSensorEvent;
    if-eqz v1, :cond_1

    .line 171
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    .line 172
    .local v4, "listener":Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;
    iget-object v5, p0, Landroid/support/car/hardware/CarSensorsProxy$4;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v5}, Landroid/support/car/hardware/CarSensorsProxy;->access$1300(Landroid/support/car/hardware/CarSensorsProxy;)Landroid/support/car/hardware/CarSensorManager;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;->onSensorChanged(Landroid/support/car/hardware/CarSensorManager;Landroid/support/car/hardware/CarSensorEvent;)V

    .line 173
    .end local v4    # "listener":Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;
    goto :goto_0

    .line 180
    .end local v0    # "sensorType":I
    .end local v1    # "event":Landroid/support/car/hardware/CarSensorEvent;
    .end local v2    # "listenersCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;>;"
    :cond_1
    :goto_1
    return-void

    .line 167
    .restart local v0    # "sensorType":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
