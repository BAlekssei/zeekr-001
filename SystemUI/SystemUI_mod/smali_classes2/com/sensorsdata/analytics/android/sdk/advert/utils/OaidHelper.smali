.class public Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;
.super Ljava/lang/Object;
.source "OaidHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$IdentifyListenerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.DeviceUtils"

.field private static jLibrary:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mBlackOAIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static mIdSupplier:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mIdentifyListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mLoadLibrary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMidSDKHelper:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mOAID:Ljava/lang/String;

.field private static mOidCertFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$1;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$1;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mBlackOAIDs:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$2;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$2;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mLoadLibrary:Ljava/util/List;

    .line 67
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->initSDKLibrary()V

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 38
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .line 38
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdSupplier:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 38
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    return-object p0
.end method

.method private static getMSAOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 99
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->initInvokeListener()V

    .line 100
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mMidSDKHelper:Ljava/lang/Class;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdentifyListener:Ljava/lang/Class;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdSupplier:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->getOAIDReflect(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :try_start_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string v0, "SA.DeviceUtils"

    const-string v1, "CountDownLatch await"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    return-object v0

    .line 107
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    return-object v0

    .line 101
    :cond_2
    :goto_1
    const-string v0, "SA.DeviceUtils"

    const-string v1, "OAID \u8bfb\u53d6\u7c7b\u521b\u5efa\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "SA.DeviceUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v0    # "ex":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 77
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    return-object v0

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->getMSAOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    .line 81
    const-string v0, "SA.DeviceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSA OAID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->getROMOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    .line 84
    const-string v0, "SA.DeviceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rom OAID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mBlackOAIDs:Ljava/util/List;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    :cond_2
    const-string v0, ""

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    .line 89
    :cond_3
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOAID:Ljava/lang/String;

    return-object v0
.end method

.method private static getOAIDReflect(Landroid/content/Context;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "retryCount"    # I

    .line 135
    if-nez p1, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    const v0, 0xf63e6

    .line 139
    .local v0, "INIT_ERROR_RESULT_DELAY":I
    const v1, 0xf63e2

    .line 141
    .local v1, "INIT_ERROR_RESULT_OK":I
    :try_start_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->initPemCert(Landroid/content/Context;)V

    .line 143
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->jLibrary:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 144
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->jLibrary:Ljava/lang/Class;

    const-string v6, "InitEntry"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 145
    .local v2, "initEntry":Ljava/lang/reflect/Method;
    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v2    # "initEntry":Ljava/lang/reflect/Method;
    :cond_1
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$IdentifyListenerHandler;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$IdentifyListenerHandler;-><init>()V

    .line 148
    .local v2, "handler":Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$IdentifyListenerHandler;
    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mMidSDKHelper:Ljava/lang/Class;

    const-string v7, "InitSdk"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    sget-object v10, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdentifyListener:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 149
    .local v6, "initSDK":Ljava/lang/reflect/Method;
    new-array v7, v8, [Ljava/lang/Object;

    aput-object p0, v7, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v9, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdentifyListener:Ljava/lang/Class;

    aput-object v9, v5, v4

    invoke-static {v8, v5, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v7, v11

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 150
    .local v3, "errCode":I
    const-string v4, "SA.DeviceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MdidSdkHelper ErrorCode : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const v4, 0xf63e6

    if-eq v3, v4, :cond_2

    const v4, 0xf63e2

    if-eq v3, v4, :cond_2

    .line 152
    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->getOAIDReflect(Landroid/content/Context;I)V

    .line 153
    if-nez p1, :cond_2

    .line 154
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 162
    :cond_2
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$3;

    invoke-direct {v5}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$3;-><init>()V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0    # "INIT_ERROR_RESULT_DELAY":I
    .end local v1    # "INIT_ERROR_RESULT_OK":I
    .end local v2    # "handler":Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper$IdentifyListenerHandler;
    .end local v3    # "errCode":I
    .end local v6    # "initSDK":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "SA.DeviceUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->getOAIDReflect(Landroid/content/Context;I)V

    .line 176
    if-nez p1, :cond_3

    .line 177
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 180
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void
.end method

.method private static getROMOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->create(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    move-result-object v0

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;->getRomOAID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initInvokeListener()V
    .locals 3

    .line 207
    :try_start_0
    const-string v0, "com.bun.miitmdid.core.MdidSdkHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mMidSDKHelper:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 211
    nop

    .line 214
    :try_start_1
    const-string v0, "com.bun.miitmdid.interfaces.IIdentifierListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdentifyListener:Ljava/lang/Class;

    .line 215
    const-string v0, "com.bun.miitmdid.interfaces.IdSupplier"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdSupplier:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 223
    :try_start_2
    const-string v0, "com.bun.supplier.IIdentifierListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdentifyListener:Ljava/lang/Class;

    .line 224
    const-string v0, "com.bun.supplier.IdSupplier"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdSupplier:Ljava/lang/Class;

    .line 225
    const-string v0, "com.bun.miitmdid.core.JLibrary"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->jLibrary:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 226
    return-void

    .line 227
    :catch_1
    move-exception v0

    .line 233
    :try_start_3
    const-string v0, "com.bun.miitmdid.core.IIdentifierListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdentifyListener:Ljava/lang/Class;

    .line 234
    const-string v0, "com.bun.miitmdid.supplier.IdSupplier"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mIdSupplier:Ljava/lang/Class;

    .line 235
    const-string v0, "com.bun.miitmdid.core.JLibrary"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->jLibrary:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 238
    goto :goto_0

    .line 236
    :catch_2
    move-exception v0

    .line 239
    :goto_0
    return-void

    .line 208
    :catch_3
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "SA.DeviceUtils"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private static initPemCert(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 259
    :try_start_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->loadPemFromAssetFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "oaidCert":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mMidSDKHelper:Ljava/lang/Class;

    const-string v2, "InitCert"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 262
    .local v1, "initCert":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "oaidCert":Ljava/lang/String;
    .end local v1    # "initCert":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SA.DeviceUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static initSDKLibrary()V
    .locals 3

    .line 242
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mLoadLibrary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    .local v1, "library":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_1

    .line 246
    :catch_0
    move-exception v2

    .line 249
    .end local v1    # "library":Ljava/lang/String;
    goto :goto_0

    .line 250
    :cond_0
    :goto_1
    return-void
.end method

.method private static loadPemFromAssetFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 277
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cert.pem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "defaultPemCert":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 280
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOidCertFilePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 282
    :try_start_1
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOidCertFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    .local v2, "is":Ljava/io/InputStream;
    :goto_0
    goto :goto_1

    .line 283
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .end local v2    # "e":Ljava/io/IOException;
    move-object v2, v3

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 289
    .local v2, "is":Ljava/io/InputStream;
    :goto_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 290
    .local v3, "in":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v4, "builder":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 293
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 296
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v5

    .line 297
    .end local v0    # "defaultPemCert":Ljava/lang/String;
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SA.DeviceUtils"

    const-string v2, "loadPemFromAssetFile failed"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, ""

    return-object v1
.end method

.method public static setOaidCertFilePath(Ljava/lang/String;)V
    .locals 0
    .param p0, "filePath"    # Ljava/lang/String;

    .line 309
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/OaidHelper;->mOidCertFilePath:Ljava/lang/String;

    .line 310
    return-void
.end method
