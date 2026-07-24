.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;
.super Ljava/lang/Object;
.source "AsusImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.AsusImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    .line 42
    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .locals 6

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.msa.action.ACCESS_DID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.asus.msa.SupplementaryDID"

    const-string v3, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "oaid":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-direct {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;-><init>(Landroid/os/IBinder;)V

    .line 64
    .local v3, "anInterface":Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;->getOAID()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 65
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v3    # "anInterface":Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;
    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, "th":Ljava/lang/Throwable;
    const-string v4, "SA.AsusImpl"

    invoke-static {v4, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v3    # "th":Ljava/lang/Throwable;
    :goto_0
    return-object v2
.end method

.method public isSupported()Z
    .locals 3

    .line 47
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.asus.msa.SupplementaryDID"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 49
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "SA.AsusImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return v0
.end method
