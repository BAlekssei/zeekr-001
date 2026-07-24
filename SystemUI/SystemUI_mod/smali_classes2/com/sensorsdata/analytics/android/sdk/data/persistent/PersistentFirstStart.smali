.class public Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;
.super Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;
.source "PersistentFirstStart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    const-string v0, "first_start"

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart$1;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;-><init>(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;)V

    .line 40
    return-void
.end method
