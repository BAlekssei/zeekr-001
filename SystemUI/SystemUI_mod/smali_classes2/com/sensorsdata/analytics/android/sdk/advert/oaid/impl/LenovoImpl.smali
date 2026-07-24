.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;
.super Ljava/lang/Object;
.source "LenovoImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.LenovoImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    .line 41
    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .locals 6

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zui.deviceidservice"

    const-string v2, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/4 v1, 0x0

    move-object v2, v1

    .line 60
    .local v2, "oaid":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-direct {v3, v4, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;-><init>(Landroid/os/IBinder;Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$1;)V

    move-object v1, v3

    .line 62
    .local v1, "anInterface":Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;->getOAID()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 63
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "anInterface":Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;
    :cond_0
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "th":Ljava/lang/Throwable;
    const-string v3, "SA.LenovoImpl"

    invoke-static {v3, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return-object v2
.end method

.method public isSupported()Z
    .locals 3

    .line 46
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.zui.deviceidservice"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 48
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "SA.LenovoImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return v0
.end method
