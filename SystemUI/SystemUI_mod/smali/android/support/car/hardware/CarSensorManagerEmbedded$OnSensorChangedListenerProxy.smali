.class Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;
.super Ljava/lang/Object;
.source "CarSensorManagerEmbedded.java"

# interfaces
.implements Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/car/hardware/CarSensorManagerEmbedded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSensorChangedListenerProxy"
.end annotation


# instance fields
.field public final listener:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

.field public final manager:Landroid/support/car/hardware/CarSensorManager;

.field public final sensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;ILandroid/support/car/hardware/CarSensorManager;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;
    .param p2, "sensor"    # I
    .param p3, "manager"    # Landroid/support/car/hardware/CarSensorManager;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->sensors:Ljava/util/Set;

    .line 207
    iput-object p1, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->listener:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    .line 208
    iget-object v0, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->sensors:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    iput-object p3, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->manager:Landroid/support/car/hardware/CarSensorManager;

    .line 210
    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/car/hardware/CarSensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/car/hardware/CarSensorEvent;

    .line 214
    invoke-static {p1}, Landroid/support/car/hardware/CarSensorManagerEmbedded;->access$000(Landroid/car/hardware/CarSensorEvent;)Landroid/support/car/hardware/CarSensorEvent;

    move-result-object v0

    .line 215
    .local v0, "newEvent":Landroid/support/car/hardware/CarSensorEvent;
    iget-object v1, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->listener:Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;

    iget-object v2, p0, Landroid/support/car/hardware/CarSensorManagerEmbedded$OnSensorChangedListenerProxy;->manager:Landroid/support/car/hardware/CarSensorManager;

    invoke-interface {v1, v2, v0}, Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;->onSensorChanged(Landroid/support/car/hardware/CarSensorManager;Landroid/support/car/hardware/CarSensorEvent;)V

    .line 216
    return-void
.end method
