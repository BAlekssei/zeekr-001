.class final Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;
.super Ljava/util/LinkedList;
.source "AopUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;
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

    .line 66
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 67
    const-string v0, "android##widget"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v0, "android##support##v7##widget"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v0, "android##support##design##widget"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v0, "android##support##text##emoji##widget"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "androidx##appcompat##widget"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "androidx##emoji##widget"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v0, "androidx##cardview##widget"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v0, "com##google##android##material"

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil$1;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method
