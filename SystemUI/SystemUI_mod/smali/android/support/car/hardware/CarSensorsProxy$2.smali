.class Landroid/support/car/hardware/CarSensorsProxy$2;
.super Ljava/lang/Object;
.source "CarSensorsProxy.java"

# interfaces
.implements Landroid/location/LocationListener;


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

    .line 101
    iput-object p1, p0, Landroid/support/car/hardware/CarSensorsProxy$2;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 104
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy$2;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy$2;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {v1, p1}, Landroid/support/car/hardware/CarSensorsProxy;->access$402(Landroid/support/car/hardware/CarSensorsProxy;Landroid/location/Location;)Landroid/location/Location;

    .line 106
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorsProxy$2;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/support/car/hardware/CarSensorsProxy;->access$502(Landroid/support/car/hardware/CarSensorsProxy;J)J

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorsProxy$2;->this$0:Landroid/support/car/hardware/CarSensorsProxy;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/support/car/hardware/CarSensorsProxy;->access$300(Landroid/support/car/hardware/CarSensorsProxy;I)V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 117
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 113
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 121
    return-void
.end method
