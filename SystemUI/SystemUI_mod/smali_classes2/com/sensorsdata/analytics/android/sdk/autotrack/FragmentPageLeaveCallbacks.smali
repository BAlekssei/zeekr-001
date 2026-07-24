.class public Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;
.super Ljava/lang/Object;
.source "FragmentPageLeaveCallbacks.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;
.implements Lcom/sensorsdata/analytics/android/sdk/autotrack/SAFragmentLifecycleCallbacks;


# static fields
.field private static final START_TIME:Ljava/lang/String; = "sa_start_time"


# instance fields
.field private mIgnoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mIsEmpty:Z

.field private final mResumedFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 51
    .local p1, "ignoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    .line 52
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mIgnoreList:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mIsEmpty:Z

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mIsEmpty:Z

    .line 58
    :goto_0
    return-void
.end method

.method private ignorePage(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "fragment"    # Ljava/lang/Object;

    .line 197
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mIsEmpty:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mIgnoreList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private trackAppPageLeave(Ljava/lang/Object;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 123
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 124
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 126
    .local v1, "properties":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "sa_start_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 127
    .local v2, "startTime":J
    :goto_0
    if-nez v1, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string v4, "$referrer"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "referrer":Ljava/lang/String;
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v5

    .line 130
    const/4 v5, 0x0

    invoke-static {v1, p1, v5}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 131
    const-string v5, "sa_start_time"

    invoke-virtual {v1, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "url":Ljava/lang/String;
    const-string v6, "$url"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 135
    const-string v6, "$referrer"

    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_2
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->trackPageLeaveEvent(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "hashCode":I
    .end local v1    # "properties":Lorg/json/JSONObject;
    .end local v2    # "startTime":J
    .end local v4    # "referrer":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private trackFragmentStart(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 147
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v0, "properties":Lorg/json/JSONObject;
    const-string v1, "sa_start_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 149
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "url":Ljava/lang/String;
    const-string v2, "$url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/autotrack/utils/AutoTrackUtils;->getLastScreenUrl()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "referrer":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    const-string v3, "$referrer"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getScreenNameAndTitleFromFragment(Lorg/json/JSONObject;Ljava/lang/Object;Landroid/app/Activity;)V

    .line 156
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/utils/AutoTrackUtils;->setLastScreenUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "properties":Lorg/json/JSONObject;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "referrer":Ljava/lang/String;
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 161
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private trackPageLeaveEvent(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 183
    :try_start_0
    const-string v0, "sa_start_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 184
    .local v0, "resumeTime":J
    const-string v2, "sa_start_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->duration(JJ)D

    move-result-wide v2

    .line 186
    .local v2, "duration":D
    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    const-string v4, "event_duration"

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 190
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v4

    const-string v5, "$AppPageLeave"

    invoke-virtual {v4, v5, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "resumeTime":J
    .end local v2    # "duration":D
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


# virtual methods
.method public onCreate(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public onHiddenChanged(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "hidden"    # Z

    .line 101
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->ignorePage(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragmentVisible(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->trackFragmentStart(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->trackAppPageLeave(Ljava/lang/Object;)V

    .line 108
    :cond_1
    :goto_0
    return-void
.end method

.method public onPause(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 85
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 86
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->trackAppPageLeave(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "hashCode":I
    :cond_0
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onResume(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 77
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->ignorePage(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragmentVisible(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->trackFragmentStart(Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public onStop(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public onViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 68
    return-void
.end method

.method public setUserVisibleHint(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "isVisibleToUser"    # Z

    .line 112
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->ignorePage(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SAFragmentUtils;->isFragmentVisible(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->trackFragmentStart(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->trackAppPageLeave(Ljava/lang/Object;)V

    .line 119
    :cond_1
    :goto_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 167
    .local v0, "keyCodes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 169
    .local v1, "hashCode":I
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->mResumedFragments:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 170
    .local v2, "properties":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 171
    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/autotrack/FragmentPageLeaveCallbacks;->trackPageLeaveEvent(Lorg/json/JSONObject;)V

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1    # "hashCode":I
    .end local v2    # "properties":Lorg/json/JSONObject;
    goto :goto_0

    .line 178
    .end local v0    # "keyCodes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "exception":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 179
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
