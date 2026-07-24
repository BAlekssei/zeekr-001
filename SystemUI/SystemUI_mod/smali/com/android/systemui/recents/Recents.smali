.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static final RECENTS_ACTIVITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

.field private static sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private static sTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;


# instance fields
.field private mDraggingInRecentsCurrentUser:I

.field private mHandler:Landroid/os/Handler;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;

.field private final mOnConnectRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field private mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

.field private final mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mUserToSystemServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    .line 97
    sget-object v0, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    const-string v1, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Lcom/android/systemui/recents/Recents$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$1;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 146
    new-instance v0, Lcom/android/systemui/recents/Recents$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$2;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/Recents;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/Recents;
    .param p1, "x1"    # Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    .line 87
    iput-object p1, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object p1
.end method

.method static synthetic access$100()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/Recents;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/Recents;

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/Recents;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/Recents;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/Recents;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/Recents;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/Recents;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/Recents;

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->runAndFlushOnConnectRunnables()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/RecentsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/Recents;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    return-object v0
.end method

.method public static getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .line 195
    sget-object v0, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;
    .locals 1

    .line 199
    sget-object v0, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    return-object v0
.end method

.method private static getMetricsCounterForResizeMode(I)Ljava/lang/String;
    .locals 1
    .param p0, "resizeMode"    # I

    .line 544
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 551
    const-string/jumbo v0, "window_enter_incompatible"

    return-object v0

    .line 549
    :pswitch_0
    const-string/jumbo v0, "window_enter_supported"

    return-object v0

    .line 546
    :cond_0
    const-string/jumbo v0, "window_enter_unsupported"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .line 191
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public static getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .locals 1

    .line 186
    sget-object v0, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method private isUserSetup()Z
    .locals 3

    .line 884
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 885
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "user_setup_complete"

    .line 886
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    .line 885
    :cond_0
    return v2
.end method

.method public static synthetic lambda$toggleRecentApps$0(Lcom/android/systemui/recents/Recents;)V
    .locals 3

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewToggle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Recents"

    const-string v2, "Cannot send toggle recents through proxy service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$toggleRecentApps$1(Lcom/android/systemui/recents/Recents;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "toggleRecents"    # Ljava/lang/Runnable;

    .line 365
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method public static logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "resizeMode"    # I

    .line 536
    if-nez p2, :cond_0

    .line 537
    const/16 v0, 0x187

    .line 538
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 540
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/recents/Recents;->getMetricsCounterForResizeMode(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 541
    return-void
.end method

.method private postToSystemUser(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "onConnectRunnable"    # Ljava/lang/Runnable;

    .line 847
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    if-nez v0, :cond_1

    .line 849
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 850
    .local v0, "systemUserServiceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/recents/RecentsSystemUserService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 851
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 853
    .local v1, "bound":Z
    const v2, 0x8cdc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 854
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    sget-object v5, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 855
    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 853
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 856
    if-nez v1, :cond_0

    .line 858
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/recents/Recents$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/Recents$11;-><init>(Lcom/android/systemui/recents/Recents;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 865
    .end local v0    # "systemUserServiceIntent":Landroid/content/Intent;
    .end local v1    # "bound":Z
    :cond_0
    goto :goto_0

    .line 866
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->runAndFlushOnConnectRunnables()V

    .line 868
    :goto_0
    return-void
.end method

.method private registerWithSystemUser()V
    .locals 2

    .line 828
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 829
    .local v0, "processUser":I
    new-instance v1, Lcom/android/systemui/recents/Recents$10;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/Recents$10;-><init>(Lcom/android/systemui/recents/Recents;I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 840
    return-void
.end method

.method private runAndFlushOnConnectRunnables()V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 875
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 876
    .end local v1    # "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 878
    return-void
.end method


# virtual methods
.method public appTransitionFinished()V
    .locals 3

    .line 625
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-nez v0, :cond_0

    .line 627
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 630
    :cond_0
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 5

    .line 436
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 442
    return-void

    .line 445
    :cond_1
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 446
    .local v0, "currentUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    goto :goto_1

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v1, :cond_4

    .line 450
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 451
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v1

    .line 452
    .local v1, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v1, :cond_3

    .line 454
    :try_start_0
    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->cancelPreloadingRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :goto_0
    goto :goto_1

    .line 455
    .restart local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :catch_0
    move-exception v2

    .line 456
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Recents"

    const-string v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 459
    :cond_3
    const-string v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_4
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 891
    const-string v0, "Recents"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method public getSystemUserCallbacks()Landroid/os/IBinder;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    return-object v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 6
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    .line 308
    .local v0, "overviewProxy":Lcom/android/systemui/shared/recents/IOverviewProxy;
    if-eqz v0, :cond_1

    .line 310
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewHidden(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Recents"

    const-string v3, "Failed to send overview hide event to launcher."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 318
    .local v1, "currentUser":I
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZ)V

    goto :goto_1

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_4

    .line 322
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 323
    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v2

    .line 324
    .local v2, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v2, :cond_3

    .line 326
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->hideRecents(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 329
    .end local v2    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :goto_0
    goto :goto_1

    .line 327
    .restart local v2    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :catch_1
    move-exception v3

    .line 328
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Recents"

    const-string v5, "Callback failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 331
    :cond_3
    const-string v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v2    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_4
    :goto_1
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onBootCompleted()V

    .line 249
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 781
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    .line 782
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    .line 687
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 688
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    .line 689
    .local v1, "processUser":I
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 690
    new-instance v2, Lcom/android/systemui/recents/Recents$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/Recents$4;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 701
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .line 741
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 742
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    new-instance v1, Lcom/android/systemui/recents/Recents$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$7;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 755
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    .line 775
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    .line 776
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    .line 758
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 759
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    new-instance v1, Lcom/android/systemui/recents/Recents$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$8;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 771
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .line 660
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 661
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    .line 662
    .local v1, "processUser":I
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v3, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->applicationContext:Landroid/content/Context;

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsImpl;->onVisibilityChanged(Landroid/content/Context;Z)V

    goto :goto_0

    .line 665
    :cond_0
    new-instance v2, Lcom/android/systemui/recents/Recents$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/Recents$3;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 681
    :goto_0
    iget-boolean v2, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-nez v2, :cond_1

    .line 682
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    .line 684
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    .line 707
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 708
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v2, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->applicationContext:Landroid/content/Context;

    iget v3, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->taskId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->onStartScreenPinning(Landroid/content/Context;I)V

    goto :goto_0

    .line 711
    :cond_0
    new-instance v1, Lcom/android/systemui/recents/Recents$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$5;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 722
    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    .line 806
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 807
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;->waitingForTransitionStart:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    goto :goto_0

    .line 810
    :cond_0
    new-instance v1, Lcom/android/systemui/recents/Recents$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$9;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 822
    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ShowUserToastEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ShowUserToastEvent;

    .line 785
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 786
    .local v0, "currentUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget v2, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    iget v3, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->onShowCurrentUserToast(II)V

    goto :goto_1

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v1, :cond_2

    .line 790
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 791
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v1

    .line 792
    .local v1, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v1, :cond_1

    .line 794
    :try_start_0
    iget v2, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    iget v3, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showCurrentUserToast(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v2

    .line 796
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Recents"

    const-string v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 799
    .restart local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_1
    const-string v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_2
    :goto_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    .line 725
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 726
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    new-instance v1, Lcom/android/systemui/recents/Recents$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$6;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 738
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 636
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 637
    .local v0, "currentUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    goto :goto_1

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v1, :cond_2

    .line 641
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 642
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v1

    .line 643
    .local v1, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v1, :cond_1

    .line 645
    :try_start_0
    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onConfigurationChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :goto_0
    goto :goto_1

    .line 646
    .restart local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :catch_0
    move-exception v2

    .line 647
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Recents"

    const-string v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 650
    :cond_1
    const-string v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_2
    :goto_1
    return-void
.end method

.method public onDraggingInRecents(F)V
    .locals 4
    .param p1, "distanceFromTop"    # F

    .line 557
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecents(F)V

    goto :goto_1

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 562
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 564
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_1

    .line 566
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onDraggingInRecents(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v0    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :goto_0
    goto :goto_1

    .line 567
    .restart local v0    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Recents"

    const-string v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 571
    :cond_1
    const-string v1, "Recents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No SystemUI callbacks found for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v0    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_2
    :goto_1
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 4
    .param p1, "velocity"    # F

    .line 580
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecentsEnded(F)V

    goto :goto_1

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 585
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 587
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_1

    .line 589
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onDraggingInRecentsEnded(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v0    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :goto_0
    goto :goto_1

    .line 590
    .restart local v0    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Recents"

    const-string v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 594
    :cond_1
    const-string v1, "Recents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No SystemUI callbacks found for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v0    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_2
    :goto_1
    return-void
.end method

.method public preloadRecentApps()V
    .locals 5

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 409
    return-void

    .line 412
    :cond_1
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v0

    .line 413
    .local v0, "currentUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    goto :goto_1

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v1, :cond_4

    .line 417
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 418
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v1

    .line 419
    .local v1, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v1, :cond_3

    .line 421
    :try_start_0
    invoke-interface {v1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->preloadRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :goto_0
    goto :goto_1

    .line 422
    .restart local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Recents"

    const-string v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 426
    :cond_3
    const-string v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_4
    :goto_1
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 7
    .param p1, "triggeredFromAltTab"    # Z

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    .line 263
    .local v0, "overviewProxy":Lcom/android/systemui/shared/recents/IOverviewProxy;
    if-eqz v0, :cond_1

    .line 265
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    return-void

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Recents"

    const-string v3, "Failed to send overview show event to launcher."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-string v2, "recentapps"

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    .line 273
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v1

    .line 274
    .local v1, "recentsGrowTarget":I
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v2

    .line 275
    .local v2, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 276
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3, p1, v5, v4, v1}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZI)V

    goto :goto_1

    .line 279
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_4

    .line 280
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 281
    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v3

    .line 282
    .local v3, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v3, :cond_3

    .line 284
    :try_start_1
    invoke-interface {v3, p1, v5, v4, v1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showRecents(ZZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    .end local v3    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :goto_0
    goto :goto_1

    .line 286
    .restart local v3    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :catch_1
    move-exception v4

    .line 287
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Recents"

    const-string v6, "Callback failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 290
    :cond_3
    const-string v4, "Recents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SystemUI callbacks found for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v3    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_4
    :goto_1
    return-void
.end method

.method public splitPrimaryTask(IILandroid/graphics/Rect;I)Z
    .locals 11
    .param p1, "dragMode"    # I
    .param p2, "stackCreateMode"    # I
    .param p3, "initialBounds"    # Landroid/graphics/Rect;
    .param p4, "metricsDockAction"    # I

    .line 470
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 471
    return v1

    .line 474
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 475
    .local v0, "realSize":Landroid/graphics/Point;
    if-nez p3, :cond_1

    .line 476
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 477
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 478
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p3, v2

    .line 481
    :cond_1
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v2

    .line 483
    .local v2, "currentUser":I
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 484
    .local v3, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_2

    .line 485
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v4

    goto :goto_0

    .line 486
    :cond_2
    move v4, v1

    .line 487
    .local v4, "activityType":I
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v5

    .line 488
    .local v5, "screenPinningActive":Z
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v6, :cond_4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v7

    .line 490
    .local v6, "isRunningTaskInHomeOrRecentsStack":Z
    :goto_2
    if-eqz v3, :cond_b

    if-nez v6, :cond_b

    if-nez v5, :cond_b

    .line 491
    iget-object v8, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v9, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    invoke-static {v8, v9, v10}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 492
    iget-boolean v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-eqz v8, :cond_a

    .line 493
    const/4 v1, -0x1

    if-eq p4, v1, :cond_5

    .line 494
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 495
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    .line 494
    invoke-static {v1, p4, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 497
    :cond_5
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 498
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v1, v8, p1, p2, p3}, Lcom/android/systemui/recents/RecentsImpl;->splitPrimaryTask(IIILandroid/graphics/Rect;)V

    goto :goto_4

    .line 501
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v1, :cond_8

    .line 502
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 503
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v1

    .line 504
    .local v1, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v1, :cond_7

    .line 506
    :try_start_0
    iget v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-interface {v1, v8, p1, p2, p3}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->splitPrimaryTask(IIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 508
    :catch_0
    move-exception v8

    .line 509
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "Recents"

    const-string v10, "Callback failed"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_4

    .line 512
    .restart local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_7
    const-string v8, "Recents"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No SystemUI callbacks found for user: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_8
    :goto_4
    iput v2, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 518
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v1}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 521
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v8, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    invoke-direct {v8}, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;-><init>()V

    invoke-virtual {v1, v8}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 524
    :cond_9
    return v7

    .line 526
    :cond_a
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;

    const v9, 0x7f110223

    invoke-direct {v8, v9, v1}, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 528
    return v1

    .line 531
    :cond_b
    return v1
.end method

.method public start()V
    .locals 8

    .line 204
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 206
    const v2, 0x7f06017c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 207
    .local v1, "defaultTaskBarBackgroundColor":I
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 208
    const v3, 0x7f060180

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 209
    .local v2, "defaultTaskViewBackgroundColor":I
    new-instance v3, Lcom/android/systemui/recents/RecentsDebugFlags;

    invoke-direct {v3}, Lcom/android/systemui/recents/RecentsDebugFlags;-><init>()V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    .line 210
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 211
    new-instance v3, Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 212
    new-instance v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 214
    const v5, 0x7f0b0016

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 215
    const v6, 0x7f0b0015

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 216
    const v7, 0x7f0b006d

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    .line 217
    sget-object v3, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->setDefaultColors(II)V

    .line 218
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 219
    new-instance v3, Lcom/android/systemui/recents/RecentsImpl;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/RecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    .line 220
    const-class v3, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/OverviewProxyService;

    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 223
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 224
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 225
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 230
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v3

    .line 231
    .local v3, "processUser":I
    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    const-class v4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 235
    new-instance v4, Lcom/android/systemui/recents/RecentsSystemUser;

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/recents/RecentsSystemUser;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    goto :goto_0

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V

    .line 241
    :goto_0
    const-class v4, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v4, p0}, Lcom/android/systemui/recents/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 243
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "trust"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/trust/TrustManager;

    iput-object v4, p0, Lcom/android/systemui/recents/Recents;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 244
    return-void
.end method

.method public toggleRecentApps()V
    .locals 9

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    .line 350
    .local v0, "overviewProxy":Lcom/android/systemui/shared/recents/IOverviewProxy;
    if-eqz v0, :cond_2

    .line 351
    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$Recents$DlCOGSzKaukLbmOv4Q6W4NFOOjI;

    .local v1, "toggleRecents":Ljava/lang/Runnable;
    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$Recents$DlCOGSzKaukLbmOv4Q6W4NFOOjI;-><init>(Lcom/android/systemui/recents/Recents;)V

    .line 361
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 362
    .local v2, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    new-instance v4, Lcom/android/systemui/recents/-$$Lambda$Recents$cEpHOgaIXIHB4gNs5mP7QroqZ4o;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/recents/-$$Lambda$Recents$cEpHOgaIXIHB4gNs5mP7QroqZ4o;-><init>(Lcom/android/systemui/recents/Recents;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    .line 370
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 372
    :goto_0
    return-void

    .line 375
    .end local v1    # "toggleRecents":Ljava/lang/Runnable;
    .end local v2    # "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    :cond_2
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v1

    .line 376
    .local v1, "growTarget":I
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v2

    .line 377
    .local v2, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    goto :goto_2

    .line 380
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_5

    .line 381
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 382
    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v3

    .line 383
    .local v3, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v3, :cond_4

    .line 385
    :try_start_0
    invoke-interface {v3, v1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->toggleRecents(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v3    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :goto_1
    goto :goto_2

    .line 386
    .restart local v3    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :catch_0
    move-exception v4

    .line 387
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Recents"

    const-string v6, "Callback failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 390
    :cond_4
    const-string v4, "Recents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SystemUI callbacks found for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v3    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_5
    :goto_2
    return-void
.end method
