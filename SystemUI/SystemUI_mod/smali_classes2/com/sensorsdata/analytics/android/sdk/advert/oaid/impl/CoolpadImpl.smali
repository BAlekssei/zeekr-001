.class public Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;
.super Ljava/lang/Object;
.source "CoolpadImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.CoolpadImpl"


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;->context:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;->service:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    .line 39
    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .locals 5

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coolpad.deviceidsupport"

    const-string v3, "com.coolpad.deviceidsupport.DeviceIdService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, "oaid":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;->service:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-direct {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;-><init>(Landroid/os/IBinder;)V

    .line 60
    .local v2, "anInterface":Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;->getOAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 61
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;->service:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "anInterface":Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl$CoolpadInterface;
    :cond_0
    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "SA.CoolpadImpl"

    invoke-static {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method

.method public isSupported()Z
    .locals 3

    .line 44
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.coolpad.deviceidsupport"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 46
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "SA.CoolpadImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return v0
.end method
