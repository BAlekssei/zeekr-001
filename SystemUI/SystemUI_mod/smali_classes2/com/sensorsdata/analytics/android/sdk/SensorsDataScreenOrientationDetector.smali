.class public Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "SensorsDataScreenOrientationDetector.java"


# instance fields
.field private mCurrentOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getOrientation()Ljava/lang/String;
    .locals 2

    .line 31
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_2
    :goto_0
    const-string v0, "landscape"

    return-object v0

    .line 32
    :cond_3
    :goto_1
    const-string v0, "portrait"

    return-object v0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .line 41
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 42
    return-void

    .line 46
    :cond_0
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_4

    const/16 v1, 0x13b

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    const/16 v2, 0x87

    if-le p1, v0, :cond_2

    if-ge p1, v2, :cond_2

    .line 49
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    goto :goto_1

    .line 50
    :cond_2
    const/16 v0, 0xe1

    if-le p1, v2, :cond_3

    if-ge p1, v0, :cond_3

    .line 51
    const/16 v0, 0xb4

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    goto :goto_1

    .line 52
    :cond_3
    if-le p1, v0, :cond_5

    if-ge p1, v1, :cond_5

    .line 53
    const/16 v0, 0x10e

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    goto :goto_1

    .line 47
    :cond_4
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->mCurrentOrientation:I

    .line 55
    :cond_5
    :goto_1
    return-void
.end method
