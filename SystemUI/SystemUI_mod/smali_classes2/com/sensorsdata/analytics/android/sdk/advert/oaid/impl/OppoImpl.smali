.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;
.super Ljava/lang/Object;
.source "OppoImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.OppoImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

.field private mSign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    .line 48
    return-void
.end method

.method private getSerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;-><init>(Landroid/os/IBinder;)V

    .line 103
    .local v0, "anInterface":Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;
    const-string v1, "OUID"

    invoke-virtual {v0, p1, p2, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;->getSerID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private realGetOUID()Ljava/lang/String;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "pkgName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mSign:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 84
    .local v1, "signatures":[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 85
    .local v3, "byteArray":[B
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 86
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 87
    .local v5, "digest":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v6, "sb":Ljava/lang/StringBuilder;
    array-length v7, v5

    :goto_0
    if-ge v2, v7, :cond_0

    aget-byte v8, v5, v2

    .line 89
    .local v8, "b":B
    and-int/lit16 v9, v8, 0xff

    or-int/lit16 v9, v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .end local v8    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mSign:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mSign:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->getSerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 94
    .end local v1    # "signatures":[Landroid/content/pm/Signature;
    .end local v3    # "byteArray":[B
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "digest":[B
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mSign:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->getSerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "SA.OppoImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v1    # "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .locals 5

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.heytap.openid"

    const-string v3, "com.heytap.openid.IdentifyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "oaid":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->realGetOUID()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 69
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "th":Ljava/lang/Throwable;
    const-string v3, "SA.OppoImpl"

    invoke-static {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .end local v2    # "th":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method

.method public isSupported()Z
    .locals 3

    .line 53
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.heytap.openid"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 55
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "SA.OppoImpl"

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return v0
.end method
