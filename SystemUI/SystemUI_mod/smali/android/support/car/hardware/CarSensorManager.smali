.class public abstract Landroid/support/car/hardware/CarSensorManager;
.super Ljava/lang/Object;
.source "CarSensorManager.java"

# interfaces
.implements Landroid/support/car/CarManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/car/CarNotConnectedException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getLatestSensorEvent(I)Landroid/support/car/hardware/CarSensorEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/car/CarNotConnectedException;
        }
    .end annotation
.end method

.method public abstract removeListener(Landroid/support/car/hardware/CarSensorManager$OnSensorChangedListener;I)V
.end method
