.class public Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;
.super Ljava/lang/Object;
.source "CarSensorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/car/hardware/CarSensorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarInAqiLevel"
.end annotation


# instance fields
.field public availability:I

.field public level:I

.field public timestamp:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2089
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/car/hardware/CarSensorEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/car/hardware/CarSensorEvent$1;

    .line 2080
    invoke-direct {p0}, Landroid/support/car/hardware/CarSensorEvent$CarInAqiLevel;-><init>()V

    return-void
.end method
