.class public Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;
.super Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;
.source "PersistentSuperProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    const-string v0, "super_properties"

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties$1;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;-><init>(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;)V

    .line 49
    return-void
.end method
