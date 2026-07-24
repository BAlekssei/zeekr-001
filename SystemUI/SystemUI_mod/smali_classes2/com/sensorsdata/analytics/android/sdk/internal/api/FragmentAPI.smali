.class public Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;
.super Ljava/lang/Object;
.source "FragmentAPI.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/internal/api/IFragmentAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentAPI"


# instance fields
.field private mAutoTrackFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoTrackIgnoredFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackFragmentAppViewScreen:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public enableAutoTrackFragment(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 53
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "canonicalName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "canonicalName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 68
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public enableAutoTrackFragments(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 72
    .local p1, "fragmentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    .line 82
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 83
    .local v1, "fragment":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "canonicalName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "fragment":Ljava/lang/Class;
    :cond_2
    goto :goto_0

    .line 90
    .end local v2    # "canonicalName":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 73
    :cond_4
    :goto_2
    return-void
.end method

.method public ignoreAutoTrackFragment(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 159
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    .line 167
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "canonicalName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "canonicalName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 174
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public ignoreAutoTrackFragments(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 135
    .local p1, "fragmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_4

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    .line 143
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 144
    .local v1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "canonicalName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "canonicalName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 153
    :cond_3
    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 154
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 136
    :cond_4
    :goto_2
    return-void
.end method

.method public isFragmentAutoTrackAppViewScreen(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 95
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 96
    return v0

    .line 99
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mTrackFragmentAppViewScreen:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 105
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "canonicalName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackFragments:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 111
    .end local v2    # "canonicalName":Ljava/lang/String;
    :cond_2
    const-class v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 112
    return v0

    .line 115
    :cond_3
    const-class v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreenAndAppClick;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 116
    return v0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "canonicalName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 122
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, v2

    return v1

    .line 127
    .end local v0    # "canonicalName":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 101
    :cond_6
    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method public isTrackFragmentAppViewScreenEnabled()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mTrackFragmentAppViewScreen:Z

    return v0
.end method

.method public resumeIgnoredAutoTrackFragment(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 200
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "canonicalName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "canonicalName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 211
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 201
    :cond_2
    :goto_1
    return-void
.end method

.method public resumeIgnoredAutoTrackFragments(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 179
    .local p1, "fragmentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_2

    .line 184
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 185
    .local v1, "fragment":Ljava/lang/Class;
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "canonicalName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mAutoTrackIgnoredFragments:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "fragment":Ljava/lang/Class;
    .end local v2    # "canonicalName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 194
    :cond_2
    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 195
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 181
    :cond_3
    :goto_2
    return-void
.end method

.method public trackFragmentAppViewScreen()V
    .locals 1

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/api/FragmentAPI;->mTrackFragmentAppViewScreen:Z

    .line 43
    return-void
.end method
