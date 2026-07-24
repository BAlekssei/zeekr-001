.class public Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;
.super Ljava/lang/Object;
.source "FragmentTrackHelper.java"


# static fields
.field private static final FRAGMENT_CALLBACKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFragmentCallbacks(Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;)V
    .locals 1
    .param p0, "fragmentLifecycleCallbacks"    # Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;

    .line 134
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public static onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 42
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;

    .line 47
    .local v1, "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;->onViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 51
    .end local v1    # "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public static removeFragmentCallbacks(Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;)V
    .locals 1
    .param p0, "fragmentLifecycleCallbacks"    # Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;

    .line 143
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public static trackFragmentPause(Ljava/lang/Object;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 78
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;

    .line 83
    .local v1, "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;->onPause(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 87
    .end local v1    # "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method public static trackFragmentResume(Ljava/lang/Object;)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 60
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;

    .line 65
    .local v1, "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;->onResume(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_1

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 69
    .end local v1    # "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public static trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "isVisibleToUser"    # Z

    .line 97
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;

    .line 102
    .local v1, "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;->setUserVisibleHint(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_1

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 106
    .end local v1    # "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 107
    :cond_1
    return-void
.end method

.method public static trackOnHiddenChanged(Ljava/lang/Object;Z)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "hidden"    # Z

    .line 116
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/autotrack/aop/FragmentTrackHelper;->FRAGMENT_CALLBACKS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;

    .line 121
    .local v1, "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;->onHiddenChanged(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_1

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 125
    .end local v1    # "fragmentCallbacks":Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method
