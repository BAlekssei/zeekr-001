.class final Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$1;
.super Ljava/util/LinkedList;
.source "OaidHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 53
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$1;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v0, "00000000000000000000000000000000"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$1;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
