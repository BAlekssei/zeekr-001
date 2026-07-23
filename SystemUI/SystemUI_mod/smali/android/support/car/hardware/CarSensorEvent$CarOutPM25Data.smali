.class public Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;
.super Ljava/lang/Object;
.source "CarSensorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/car/hardware/CarSensorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarOutPM25Data"
.end annotation


# instance fields
.field public pm25:I

.field public timestamp:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1462
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/car/hardware/CarSensorEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/car/hardware/CarSensorEvent$1;

    .line 1454
    invoke-direct {p0}, Landroid/support/car/hardware/CarSensorEvent$CarOutPM25Data;-><init>()V

    return-void
.end method
