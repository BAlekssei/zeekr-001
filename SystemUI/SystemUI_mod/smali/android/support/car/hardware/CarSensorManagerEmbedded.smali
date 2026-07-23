.class public Landroid/support/car/hardware/CarSensorManagerEmbedded;
.super Landroid/support/car/hardware/CarSensorManager;
.source "CarSensorManagerEmbedded.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;
    }
.end annotation


# instance fields
.field private final mCarSensorsProxy:Landroid/support/car/hardware/CarSensorsProxy;

.field private final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mManager:Landroid/car/hardware/CarSensorManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 1
    .param p1, "manager"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Landroid/support/car/hardware/CarSensorManager;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mListeners:Ljava/util/LinkedList;

    .line 43
    move-object v0, p1

    check-cast v0, Landroid/car/hardware/CarSensorManager;

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mManager:Landroid/car/hardware/CarSensorManager;

    .line 44
    new-instance v0, Landroid/support/car/hardware/CarSensorsProxy;

    invoke-direct {v0, p0, p2}, Landroid/support/car/hardware/CarSensorsProxy;-><init>(Landroid/support/car/hardware/CarSensorManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mCarSensorsProxy:Landroid/support/car/hardware/CarSensorsProxy;

    .line 45
    return-void
.end method

.method static synthetic access$000(Landroid/car/hardware/CarSensorEvent;)Landroid/support/car/hardware/CarSensorEvent;
    .locals 1
    .param p0, "x0"    # Landroid/car/hardware/CarSensorEvent;

    .line 35
    invoke-static {p0}, Landroid/support/car/hardware/CarSensorManagerEmbedded;->convert(Landroid/car/hardware/CarSensorEvent;)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v0

    return-object v0
.end method

.method private static convert(Landroid/car/hardware/CarSensorEvent;)Landroid/support/car/hardware/CarSensorEvent;
    .locals 9
    .param p0, "event"    # Landroid/car/hardware/CarSensorEvent;

    .line 184
    if-nez p0, :cond_0

    .line 185
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    new-instance v0, Landroid/support/car/hardware/CarSensorEvent;

    iget v2, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    iget-wide v3, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iget-object v5, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v6, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    iget-object v7, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    iget v8, p0, Landroid/car/hardware/CarSensorEvent;->availability:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/support/car/hardware/CarSensorEvent;-><init>(IJ[F[I[JI)V

    return-object v0
.end method

.method private findListenerLocked(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;)Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;
    .locals 3
    .param p1, "listener"    # Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    .line 175
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;

    .line 176
    .local v1, "proxy":Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;
    iget-object v2, v1, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->listener:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    if-ne v2, p1, :cond_0

    .line 177
    return-object v1

    .line 179
    .end local v1    # "proxy":Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;
    :cond_0
    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSensorProxied(I)Z
    .locals 2
    .param p1, "sensorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/car/CarNotConnectedException;
        }
    .end annotation

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mManager:Landroid/car/hardware/CarSensorManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/CarSensorManager;->isSensorSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mCarSensorsProxy:Landroid/support/car/hardware/CarSensorsProxy;

    .line 87
    invoke-virtual {v0, p1}, Landroid/support/car/hardware/CarSensorsProxy;->isSensorSupported(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/car/CarNotConnectedException;
    new-instance v1, Landroid/support/car/CarNotConnectedException;

    invoke-direct {v1, v0}, Landroid/support/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z
    .locals 3
    .param p1, "listener"    # Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;
    .param p2, "sensorType"    # I
    .param p3, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/car/CarNotConnectedException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p2}, Landroid/support/car/hardware/CarSensorManagerEmbedded;->isSensorProxied(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mCarSensorsProxy:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/car/hardware/CarSensorsProxy;->registerSensorListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    move-result v0

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 100
    .local v0, "proxy":Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/car/hardware/CarSensorManagerEmbedded;->findListenerLocked(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;)Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;

    move-result-object v1

    move-object v0, v1

    .line 102
    if-nez v0, :cond_1

    .line 103
    new-instance v1, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;

    invoke-direct {v1, p1, p2, p0}, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;-><init>(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;ILandroid/support/car/hardware/CarSensorManager;)V

    move-object v0, v1

    .line 104
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, v0, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->sensors:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mManager:Landroid/car/hardware/CarSensorManager;

    invoke-virtual {v1, v0, p2, p3}, Landroid/car/hardware/CarSensorManager;->registerListener(Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z

    move-result v1
    :try_end_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Landroid/car/CarNotConnectedException;
    new-instance v2, Landroid/support/car/CarNotConnectedException;

    invoke-direct {v2, v1}, Landroid/support/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 108
    .end local v1    # "e":Landroid/car/CarNotConnectedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/car/CarNotConnectedException;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Landroid/support/car/hardware/CarSensorManagerEmbedded;->isSensorProxied(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mCarSensorsProxy:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-virtual {v0, p1}, Landroid/support/car/hardware/CarSensorsProxy;->getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mManager:Landroid/car/hardware/CarSensorManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/CarSensorManager;->getLatestSensorEvent(I)Landroid/car/hardware/CarSensorEvent;

    move-result-object v0

    invoke-static {v0}, Landroid/support/car/hardware/CarSensorManagerEmbedded;->convert(Landroid/car/hardware/CarSensorEvent;)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/car/CarNotConnectedException;
    new-instance v1, Landroid/support/car/CarNotConnectedException;

    invoke-direct {v1, v0}, Landroid/support/car/CarNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public onCarDisconnected()V
    .locals 0

    .line 172
    return-void
.end method

.method public removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;
    .param p2, "sensorType"    # I

    .line 132
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mCarSensorsProxy:Landroid/support/car/hardware/CarSensorsProxy;

    invoke-virtual {v0, p1, p2}, Landroid/support/car/hardware/CarSensorsProxy;->unregisterSensorListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "proxy":Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;
    monitor-enter p0

    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/car/hardware/CarSensorManagerEmbedded;->findListenerLocked(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;)Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;

    move-result-object v1

    move-object v0, v1

    .line 136
    if-nez v0, :cond_0

    .line 137
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    iget-object v1, v0, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->sensors:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, v0, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->sensors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded;->mManager:Landroid/car/hardware/CarSensorManager;

    invoke-virtual {v1, v0, p2}, Landroid/car/hardware/CarSensorManager;->unregisterListener(Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;I)V

    .line 145
    return-void

    .line 143
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
