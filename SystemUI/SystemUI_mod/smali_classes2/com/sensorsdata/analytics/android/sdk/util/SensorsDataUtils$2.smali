.class final Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils$2;
.super Ljava/util/ArrayList;
.source "SensorsDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    const-string v0, "9774d56d682e549c"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils$2;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v0, "0123456789abcdef"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils$2;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v0, "0000000000000000"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils$2;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method
