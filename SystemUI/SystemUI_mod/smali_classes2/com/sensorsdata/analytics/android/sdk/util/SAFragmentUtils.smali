.class public Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;
.super Ljava/lang/Object;
.source "SAFragmentUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fragmentGetUserVisibleHint(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "fragment"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUserVisibleHint"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 67
    .local v1, "getUserVisibleHintMethod":Ljava/lang/reflect/Method;
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 68
    .end local v1    # "getUserVisibleHintMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 71
    return v0
.end method

.method public static fragmentIsHidden(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "fragment"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isHidden"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 83
    .local v1, "isHiddenMethod":Ljava/lang/reflect/Method;
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 84
    .end local v1    # "isHiddenMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 87
    return v0
.end method

.method public static fragmentIsResumed(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "fragment"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isResumed"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 145
    .local v1, "isResumedMethod":Ljava/lang/reflect/Method;
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 146
    .end local v1    # "isResumedMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 149
    return v0
.end method

.method public static isFragment(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 99
    return v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    .line 102
    .local v1, "supportFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 103
    .local v2, "androidXFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 105
    .local v3, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "android.app.Fragment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v4

    .line 110
    :goto_0
    :try_start_1
    const-string v4, "android.support.v4.app.Fragment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v4

    .line 113
    goto :goto_1

    .line 111
    :catch_1
    move-exception v4

    .line 116
    :goto_1
    :try_start_2
    const-string v4, "androidx.fragment.app.Fragment"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v4

    .line 119
    goto :goto_2

    .line 117
    :catch_2
    move-exception v4

    .line 121
    :goto_2
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 122
    return v0

    .line 125
    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    .line 130
    .end local v1    # "supportFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "androidXFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v1

    goto :goto_4

    .line 125
    .restart local v1    # "supportFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "androidXFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    .line 127
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v4, :cond_5

    .line 128
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 130
    .end local v1    # "supportFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "androidXFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    goto :goto_5

    .line 132
    :cond_5
    nop

    .line 133
    :goto_5
    return v0
.end method

.method public static isFragmentVisible(Ljava/lang/Object;)Z
    .locals 5
    .param p0, "fragment"    # Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "parentFragment":Ljava/lang/Object;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getParentFragment"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 36
    .local v2, "getParentFragmentMethod":Ljava/lang/reflect/Method;
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 39
    .end local v2    # "getParentFragmentMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 42
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 43
    :try_start_1
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsHidden(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    return v2

    .line 52
    :catch_1
    move-exception v2

    goto :goto_1

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsHidden(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsHidden(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_1

    .line 49
    return v2

    .line 54
    :cond_1
    goto :goto_2

    .line 52
    :goto_1
    nop

    .line 53
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 55
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return v1
.end method
