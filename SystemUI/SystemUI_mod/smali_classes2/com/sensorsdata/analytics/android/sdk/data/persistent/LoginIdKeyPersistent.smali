.class public Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;
.super Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;
.source "LoginIdKeyPersistent.java"


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

    .line 24
    const-string v0, "login_id_key"

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent$1;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;-><init>(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity$PersistentSerializer;)V

    .line 40
    return-void
.end method
