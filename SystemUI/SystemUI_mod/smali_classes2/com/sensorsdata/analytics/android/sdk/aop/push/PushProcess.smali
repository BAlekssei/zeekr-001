.class public Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;
.super Ljava/lang/Object;
.source "PushProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "sensors.push"

.field private static final GT_PUSH_MSG:I = 0x1

.field private static INSTANCE:Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess; = null

.field private static final SA_PUSH_ID:Ljava/lang/String; = "SA_PUSH_ID"

.field private static final TAG:Ljava/lang/String; = "SA.NotificationProcessor"


# instance fields
.field private final customizeEnable:Z

.field private final mGeTuiPushInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIntentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingIntent2Ids:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPushFile:Ljava/io/File;

.field private final mPushHandler:Landroid/os/Handler;

.field private final mSAIntentId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final myPid:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "sensors.push"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushFile:Ljava/io/File;

    .line 68
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mSAIntentId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->myPid:I

    .line 70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->customizeEnable:Z

    .line 71
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPendingIntent2Ids:Ljava/util/WeakHashMap;

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    .line 73
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SA.PushThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$1;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    .line 48
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;Landroid/app/PendingIntent;Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;
    .param p1, "x1"    # Landroid/app/PendingIntent;
    .param p2, "x2"    # Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->checkAndStoreNotificationInfo(Landroid/app/PendingIntent;Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->getNotificationInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method private checkAndStoreNotificationInfo(Landroid/app/PendingIntent;Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "info"    # Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;

    .line 206
    if-nez p1, :cond_0

    .line 207
    const-string v0, "SA.NotificationProcessor"

    const-string v1, "pendingIntent is null"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 211
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPendingIntent2Ids:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    .local v0, "intentId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->storeNotificationInfo(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "intentId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;
    .locals 2

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;

    .line 101
    :cond_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNotificationInfo(Landroid/app/Notification;)Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    .locals 6
    .param p1, "notification"    # Landroid/app/Notification;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "push":Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 260
    :try_start_0
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "content":Ljava/lang/String;
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, v3

    .line 263
    const-string v3, "SA.NotificationProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationInfo: title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "content":Ljava/lang/String;
    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private getNotificationInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->initAndCleanDir()V

    .line 274
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushFile:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .local v1, "inFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    return-object v0

    .line 278
    :cond_0
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    return-object v0

    .line 282
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->decryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "decryptJson":Ljava/lang/String;
    const-string v4, "SA.NotificationProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cache local notification info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;->fromJson(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 285
    .end local v1    # "inFile":Ljava/io/File;
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "decryptJson":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private declared-synchronized initAndCleanDir()V
    .locals 10

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 242
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 244
    .local v1, "currentTime":J
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 245
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 246
    const-string v6, "SA.NotificationProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clean file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "currentTime":J
    :cond_2
    goto :goto_1

    .line 237
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 237
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;
    throw v0
.end method

.method private isHooked(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 198
    :try_start_0
    const-string v0, "SA_PUSH_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private storeNotificationInfo(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "push"    # Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    .param p2, "intentId"    # Ljava/lang/String;

    .line 221
    const-string v0, "SA.NotificationProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeNotificationInfo: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actionInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->initAndCleanDir()V

    .line 224
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushFile:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v0, "toFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "SA.NotificationProcessor"

    const-string v2, "toFile exists"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 229
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->encryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "secretContent":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/FileUtils;->writeToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0    # "toFile":Ljava/io/File;
    .end local v1    # "secretContent":Ljava/lang/String;
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private trackCustomizeClick(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 292
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->customizeEnable:Z

    if-nez v0, :cond_0

    .line 293
    return-void

    .line 296
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->isHooked(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    const-string v0, "SA_PUSH_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "id":Ljava/lang/String;
    const-string v1, "SA_PUSH_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    const-string v1, "SA.NotificationProcessor"

    const-string v2, "intent tag is null"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$3;

    invoke-direct {v2, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$3;-><init>(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0    # "id":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public hookIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 105
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->customizeEnable:Z

    if-eqz v0, :cond_1

    .line 107
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->isHooked(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "SA_PUSH_ID"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->myPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mSAIntentId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public hookPendingIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 117
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->customizeEnable:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "SA_PUSH_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "pushId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPendingIntent2Ids:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v0    # "pushId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onNotificationClick(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 124
    if-nez p2, :cond_0

    .line 125
    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mLastIntentRef:Ljava/lang/ref/WeakReference;

    .line 129
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Intent;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_4

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mLastIntentRef:Ljava/lang/ref/WeakReference;

    .line 131
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->customizeEnable:Z

    if-eqz v1, :cond_2

    .line 132
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->trackCustomizeClick(Landroid/content/Intent;)V

    .line 135
    :cond_2
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 136
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackJPushOpenActivity(Landroid/content/Intent;)V

    .line 138
    :cond_3
    const-string v1, "SA.NotificationProcessor"

    const-string v2, "onNotificationClick"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Intent;>;"
    :cond_4
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onNotify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .line 146
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->customizeEnable:Z

    if-eqz v0, :cond_1

    .line 148
    :try_start_0
    iget-object v0, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "SA.NotificationProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify, tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->getNotificationInfo(Landroid/app/Notification;)Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;

    move-result-object v0

    .line 151
    .local v0, "push":Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$2;

    invoke-direct {v2, p0, p3, v0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;Landroid/app/Notification;Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "push":Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    :cond_0
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method trackGTClickDelayed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 168
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 169
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 170
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p2, p3, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 173
    const-string v1, "SA.NotificationProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageDelayed,msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method trackReceiveMessageData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sfDate"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mPushHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    const-string v0, "SA.NotificationProcessor"

    const-string v1, "remove GeTui Push Message"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;

    .line 185
    .local v0, "push":Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;->content:Ljava/lang/String;

    iget-wide v3, v0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;->time:J

    invoke-static {v1, v2, p1, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->trackGeTuiNotificationClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess;->mGeTuiPushInfoMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "SA.NotificationProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onGeTuiReceiveMessage:msg id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "push":Lcom/sensorsdata/analytics/android/sdk/aop/push/PushProcess$NotificationInfo;
    :cond_1
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
