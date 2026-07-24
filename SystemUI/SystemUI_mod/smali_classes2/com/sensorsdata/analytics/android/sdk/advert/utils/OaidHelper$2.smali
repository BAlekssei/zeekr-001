.class final Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$2;
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

    .line 57
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 59
    const-string v0, "msaoaidsec"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$2;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v0, "nllvm1632808251147706677"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$2;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v0, "nllvm1630571663641560568"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$2;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v0, "nllvm1623827671"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$2;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
