.class public abstract Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;
.super Ljava/lang/Object;
.source "AbstractViewCrawler.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/visual/VTrack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;,
        Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$LifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final MESSAGE_SEND_STATE_FOR_EDITING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SA.AbstractViewCrawler"

.field public static final TYPE_HEAT_MAP:Ljava/lang/String; = "heat_map"

.field public static final TYPE_VISUAL:Ljava/lang/String; = "visual"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAppVersion:Ljava/lang/String;

.field private final mEditState:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;

.field private mFeatureCode:Ljava/lang/String;

.field private final mLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$LifecycleCallbacks;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMessageThreadHandler:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

.field private mPostUrl:Ljava/lang/String;

.field private mServiceRunning:Z

.field private mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resourcePackageName"    # Ljava/lang/String;
    .param p3, "featureCode"    # Ljava/lang/String;
    .param p4, "postUrl"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mServiceRunning:Z

    .line 87
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mActivity:Landroid/app/Activity;

    .line 88
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mFeatureCode:Ljava/lang/String;

    .line 89
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mEditState:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;

    .line 90
    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mType:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mEditState:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;->add(Landroid/app/Activity;)V

    .line 92
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$LifecycleCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$LifecycleCallbacks;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$1;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$LifecycleCallbacks;

    .line 94
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p4, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mPostUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 99
    .local v1, "app":Landroid/app/Application;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 100
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$LifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 104
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 105
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 106
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mAppVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mAppVersion:Ljava/lang/String;

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v0, Landroid/os/HandlerThread;

    const-class v2, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 113
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v8, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$1;)V

    iput-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mMessageThreadHandler:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    .line 116
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mMainThreadHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    .line 69
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mEditState:Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    .line 69
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    .line 69
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mFeatureCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    .line 69
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    .line 69
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    .line 69
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mPostUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;)Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;

    .line 69
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mMessageThreadHandler:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    return-object v0
.end method


# virtual methods
.method public isServiceRunning()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mServiceRunning:Z

    return v0
.end method

.method public startUpdates()V
    .locals 4

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mFeatureCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mPostUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 124
    .local v0, "app":Landroid/app/Application;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$LifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mMessageThreadHandler:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->start()V

    .line 128
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mMessageThreadHandler:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mMessageThreadHandler:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    .line 129
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    iput-boolean v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mServiceRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "app":Landroid/app/Application;
    :cond_1
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopUpdates(Z)V
    .locals 3
    .param p1, "clear"    # Z

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mFeatureCode:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mPostUrl:Ljava/lang/String;

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_1

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mMessageThreadHandler:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$ViewCrawlerHandler;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 146
    .local v0, "app":Landroid/app/Application;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 147
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mLifecycleCallbacks:Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler$LifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 149
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->mServiceRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "app":Landroid/app/Application;
    goto :goto_2

    .line 150
    :goto_1
    nop

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
