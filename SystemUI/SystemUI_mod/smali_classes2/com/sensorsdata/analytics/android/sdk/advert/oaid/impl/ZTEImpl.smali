.class public Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;
.super Ljava/lang/Object;
.source "ZTEImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl$ZTEInterface;
    }
.end annotation


# static fields
.field private static final ID_PACKAGE:Ljava/lang/String; = "com.mdid.msa"

.field private static final TAG:Ljava/lang/String; = "SA.ZTEImpl"

.field private static final ZTE_MANAGER:Ljava/lang/String; = "android.app.ZteDeviceIdentifyManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    .line 46
    return-void
.end method

.method private getOAID29(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "oaid":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->startMsaklServer(Ljava/lang/String;Landroid/content/Context;)V

    .line 108
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.mdid.msa"

    const-string v4, "com.mdid.msa.service.MsaIdService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v3, "com.bun.msa.action.bindto.service"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v3, "com.bun.msa.param.pkgname"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl$ZTEInterface;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-direct {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl$ZTEInterface;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl$ZTEInterface;->getOAID()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 115
    :try_start_1
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-virtual {p1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :goto_0
    goto :goto_1

    .line 116
    :catch_0
    move-exception v3

    .line 117
    .local v3, "th":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "SA.ZTEImpl"

    invoke-static {v4, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .end local v3    # "th":Ljava/lang/Throwable;
    goto :goto_0

    .line 124
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    goto :goto_2

    .line 120
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-object v0

    .line 122
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "SA.ZTEImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_2
    return-object v0
.end method

.method private static getOAID30(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 52
    :try_start_0
    const-string v0, "android.app.ZteDeviceIdentifyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    move-object v3, v2

    .local v3, "declaredConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v2, :cond_0

    .line 54
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, "newInstance":Ljava/lang/Object;
    const-string v5, "getOAID"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 59
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "newInstance":Ljava/lang/Object;
    .end local v3    # "declaredConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "th":Ljava/lang/Throwable;
    const-string v1, "SA.ZTEImpl"

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static startMsaklServer(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mdid.msa"

    const-string v2, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "com.bun.msa.action.start.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "com.bun.msa.param.pkgname"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :try_start_0
    const-string v1, "com.bun.msa.param.runinset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "SA.ZTEImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public bindZTEServiceGetOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->getOAID29(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->getOAID30(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRomOAID()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->bindZTEServiceGetOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupported()Z
    .locals 3

    .line 80
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.mdid.msa"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "SA.ZTEImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v1    # "t":Ljava/lang/Throwable;
    return v0
.end method
