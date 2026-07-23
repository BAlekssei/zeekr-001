.class Landroid/support/car/hardware/CarSensorsProxy$1;
.super Ljava/lang/Object;
.source "CarSensorsProxy.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


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

    .line 88
    iput-object p1, p0, Landroid/support/car/hardware/CarSensorsProxy$1;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 4
    .param p1, "event"    # I

    .line 91
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 92
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy$1;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy$1;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    iget-object v2, p0, Landroid/support/car/hardware/CarSensorsProxy$1;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v2}, Landroid/support/car/hardware/CarSensorsProxy;->access$100(Landroid/support/car/hardware/CarSensorsProxy;)Landroid/location/LocationManager;

    move-result-object v2

    iget-object v3, p0, Landroid/support/car/hardware/CarSensorsProxy$1;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v3}, Landroid/support/car/hardware/CarSensorsProxy;->access$000(Landroid/support/car/hardware/CarSensorsProxy;)Landroid/location/GpsStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/car/hardware/CarSensorsProxy;->access$002(Landroid/support/car/hardware/CarSensorsProxy;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    .line 94
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy$1;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/support/car/hardware/CarSensorsProxy;->access$202(Landroid/support/car/hardware/CarSensorsProxy;J)J

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy$1;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Landroid/support/car/hardware/CarSensorsProxy;->access$300(Landroid/support/car/hardware/CarSensorsProxy;I)V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 98
    :cond_0
    :goto_0
    return-void
.end method
