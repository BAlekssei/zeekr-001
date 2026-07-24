.class public Lcom/sensorsdata/analytics/android/sdk/AppStateManager;
.super Ljava/lang/Object;
.source "AppStateManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.AppStateManager"

.field private static volatile mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;


# instance fields
.field private mCurrentFragmentName:Ljava/lang/String;

.field private mCurrentRootWindowsHashCode:I

.field private mForeGroundActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    .line 45
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentFragmentName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;
    .locals 2

    .line 48
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    return-object v0
.end method

.method private monitorViewTreeChange(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .line 187
    :try_start_0
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_tree_observer_listeners:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 191
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_tree_observer_listeners:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setForegroundActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method

.method private unRegisterViewTreeChange(Landroid/view/View;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;

    .line 169
    :try_start_0
    sget v0, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_tree_observer_listeners:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    move-result-object v0

    .line 171
    .local v0, "observable":Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 176
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 178
    sget v1, Lcom/sensorsdata/analytics/android/sdk/R$id;->sensors_analytics_tag_view_tree_observer_listeners:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "observable":Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;
    :cond_1
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public getCurrentRootWindowsHashCode()I
    .locals 3

    .line 89
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 91
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 93
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    .line 98
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    return v0
.end method

.method public getForegroundActivity()Landroid/app/Activity;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getFragmentScreenName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentFragmentName:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 103
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    .line 107
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 163
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->clearWebViewCache()V

    .line 164
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->clear()V

    .line 165
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 140
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 142
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->unRegisterViewTreeChange(Landroid/view/View;)V

    .line 146
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    .line 149
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 116
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "decorView":Landroid/view/View;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 120
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .line 123
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->monitorViewTreeChange(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "window":Landroid/view/Window;
    :cond_1
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    .line 136
    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 159
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 112
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 154
    return-void
.end method

.method public setFragmentScreenName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "fragmentScreenName"    # Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParentFragment"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    .local v0, "getParentFragmentMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 70
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "parentFragment":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 73
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentFragmentName:Ljava/lang/String;

    .line 74
    const-string v2, "SA.AppStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFragmentScreenName | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not nested fragment and set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    const-string v2, "SA.AppStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFragmentScreenName | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is nested fragment and ignored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "getParentFragmentMethod":Ljava/lang/reflect/Method;
    .end local v1    # "parentFragment":Ljava/lang/Object;
    :cond_1
    :goto_0
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 82
    :goto_1
    return-void
.end method
