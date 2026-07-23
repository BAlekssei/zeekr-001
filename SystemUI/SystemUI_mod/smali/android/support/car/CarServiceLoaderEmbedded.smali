.class public Landroid/support/car/CarServiceLoaderEmbedded;
.super Landroid/support/car/CarServiceLoader;
.source "CarServiceLoaderEmbedded.java"


# instance fields
.field private final mEmbeddedCar:Landroid/car/Car;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carConnectionCallback"    # Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/support/car/CarServiceLoader;-><init>(Landroid/content/Context;Landroid/support/car/CarServiceLoader$CarConnectionCallbackProxy;Landroid/os/Handler;)V

    .line 35
    new-instance v0, Landroid/support/car/CarServiceLoaderEmbedded$1;

    invoke-direct {v0, p0}, Landroid/support/car/CarServiceLoaderEmbedded$1;-><init>(Landroid/support/car/CarServiceLoaderEmbedded;)V

    iput-object v0, p0, Landroid/support/car/CarServiceLoaderEmbedded;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 54
    iget-object v0, p0, Landroid/support/car/CarServiceLoaderEmbedded;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0, p3}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Landroid/support/car/CarServiceLoaderEmbedded;->mEmbeddedCar:Landroid/car/Car;

    .line 55
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroid/support/car/CarServiceLoaderEmbedded;->mEmbeddedCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    .line 60
    return-void
.end method

.method public getCarManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/car/CarNotConnectedException;
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/support/car/CarServiceLoaderEmbedded;->mEmbeddedCar:Landroid/car/Car;

    invoke-virtual {v0, p1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v0, "manager":Ljava/lang/Object;
    nop

    .line 85
    nop

    .line 88
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    return-object v1

    .line 92
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "app_focus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "sensor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "car_navigation_service"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 106
    return-object v0

    .line 104
    :pswitch_0
    new-instance v1, Landroid/support/car/hardware/CarSensorManagerEmbedded;

    invoke-virtual {p0}, Landroid/support/car/CarServiceLoaderEmbedded;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/support/car/hardware/CarSensorManagerEmbedded;-><init>(Ljava/lang/Object;Landroid/content/Context;)V

    return-object v1

    .line 102
    :pswitch_1
    new-instance v1, Landroid/support/car/navigation/CarNavigationStatusManagerEmbedded;

    invoke-direct {v1, v0}, Landroid/support/car/navigation/CarNavigationStatusManagerEmbedded;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 100
    :pswitch_2
    new-instance v1, Landroid/support/car/content/pm/CarPackageManagerEmbedded;

    invoke-direct {v1, v0}, Landroid/support/car/content/pm/CarPackageManagerEmbedded;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 98
    :pswitch_3
    new-instance v1, Landroid/support/car/CarAppFocusManagerEmbedded;

    invoke-direct {v1, v0}, Landroid/support/car/CarAppFocusManagerEmbedded;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 96
    :pswitch_4
    new-instance v1, Landroid/support/car/CarInfoManagerEmbedded;

    invoke-direct {v1, v0}, Landroid/support/car/CarInfoManagerEmbedded;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 94
    :pswitch_5
    new-instance v1, Landroid/support/car/media/CarAudioManagerEmbedded;

    invoke-direct {v1, v0}, Landroid/support/car/media/CarAudioManagerEmbedded;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 84
    .end local v0    # "manager":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/car/CarNotConnectedException;
    new-instance v1, Landroid/support/car/CarNotConnectedException;

    invoke-direct {v1, v0}, Landroid/support/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e7fee2b -> :sswitch_5
        -0x35ffac46 -> :sswitch_4
        -0x301acbba -> :sswitch_3
        0x3164ae -> :sswitch_2
        0x58d9bd6 -> :sswitch_1
        0x6d19553a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
