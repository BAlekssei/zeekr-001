.class public Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;
.super Ljava/lang/Object;
.source "HuaweiImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.HuaweiImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private final mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    .line 45
    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .locals 6

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pps_oaid"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "oaid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "SA.HuaweiImpl"

    const-string v2, "Get oaid from global settings"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object v0

    .line 79
    .end local v0    # "oaid":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "SA.HuaweiImpl"

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->isSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const-string v0, "SA.HuaweiImpl"

    const-string v2, "Huawei Advertising ID not available"

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v1

    .line 85
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    move-object v2, v1

    .line 89
    .local v2, "oaid":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-direct {v3, v4, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;-><init>(Landroid/os/IBinder;Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$1;)V

    move-object v1, v3

    .line 91
    .local v1, "anInterface":Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;->getOAID()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 95
    .end local v2    # "oaid":Ljava/lang/String;
    .local v1, "oaid":Ljava/lang/String;
    move-object v2, v1

    .end local v1    # "oaid":Ljava/lang/String;
    .restart local v2    # "oaid":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 93
    :catch_1
    move-exception v1

    .line 94
    .local v1, "t":Ljava/lang/Throwable;
    const-string v3, "SA.HuaweiImpl"

    invoke-static {v3, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object v2
.end method

.method public isSupported()Z
    .locals 4

    .line 49
    const/4 v0, 0x0

    move v1, v0

    .line 51
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 52
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.huawei.hwid"

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    const-string v0, "com.huawei.hwid"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mPackageName:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    .line 64
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    move v1, v0

    goto :goto_1

    .line 55
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v3, "com.huawei.hwid.tv"

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 56
    const-string v0, "com.huawei.hwid.tv"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mPackageName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const-string v3, "com.huawei.hms"

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mPackageName:Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    nop

    .end local v1    # "ret":Z
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "ret":Z
    :cond_2
    goto :goto_0

    .line 64
    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    :goto_1
    goto :goto_2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "SA.HuaweiImpl"

    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return v1
.end method
