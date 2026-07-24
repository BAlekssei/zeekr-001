.class public Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;
.super Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;
.source "UserIdentityPersistent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    const-string v0, "user_ids"

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent$1;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;-><init>(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;)V

    .line 41
    return-void
.end method
