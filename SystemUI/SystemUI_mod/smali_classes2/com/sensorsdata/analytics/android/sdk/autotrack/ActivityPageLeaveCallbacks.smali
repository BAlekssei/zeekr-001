.class public Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;
.super Ljava/lang/Object;
.source "ActivityPageLeaveCallbacks.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;
.implements Lcom/sensorsdata/analytics/android/sdk/SensorsDataExceptionHandler$SAExceptionListener;


# static fields
.field private static final START_TIME:Ljava/lang/String; = "sa_start_time"


# instance fields
.field private final DIALOG_ACTIVITY:Ljava/lang/String;

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

.field private final mResumedActivities:Ljava/util/HashMap;
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

    .line 53
    .local p1, "ignoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    .line 50
    const-string v0, "com.sensorsdata.sf.ui.view.DialogActivity"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->DIALOG_ACTIVITY:Ljava/lang/String;

    .line 54
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mIgnoreList:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mIsEmpty:Z

    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mIsEmpty:Z

    .line 60
    :goto_0
    return-void
.end method

.method private ignorePage(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "fragment"    # Ljava/lang/Object;

    .line 176
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mIsEmpty:Z

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mIgnoreList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private trackActivityStart(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 142
    :try_start_0
    const-string v0, "com.sensorsdata.sf.ui.view.DialogActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    .local v0, "properties":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "url":Ljava/lang/String;
    const-string v2, "$url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/autotrack/utils/AutoTrackUtils;->getLastScreenUrl()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "referrer":Ljava/lang/String;
    const-string v3, "$referrer"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    const-string v3, "$referrer"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_1
    const-string v3, "sa_start_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 153
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/utils/AutoTrackUtils;->setLastScreenUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "properties":Lorg/json/JSONObject;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "referrer":Ljava/lang/String;
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 158
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private trackAppPageLeave(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "properties"    # Lorg/json/JSONObject;

    .line 162
    :try_start_0
    const-string v0, "sa_start_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 163
    .local v0, "resumeTime":J
    const-string v2, "sa_start_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->duration(JJ)D

    move-result-wide v2

    .line 165
    .local v2, "duration":D
    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    const-string v4, "event_duration"

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 169
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v4

    const-string v5, "$AppPageLeave"

    invoke-virtual {v4, v5, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInternal(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "resumeTime":J
    .end local v2    # "duration":D
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 115
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 83
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 85
    .local v1, "properties":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, "$referrer"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "referrer":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "sa_start_time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 87
    .local v3, "startTime":J
    :goto_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->buildTitleAndScreenName(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v1, v5

    .line 88
    const-string v5, "sa_start_time"

    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "url":Ljava/lang/String;
    const-string v6, "$url"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 92
    const-string v6, "$referrer"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_2
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->trackAppPageLeave(Lorg/json/JSONObject;)V

    .line 95
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "hashCode":I
    .end local v1    # "properties":Lorg/json/JSONObject;
    .end local v2    # "referrer":Ljava/lang/String;
    .end local v3    # "startTime":J
    .end local v5    # "url":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 74
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->ignorePage(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->trackActivityStart(Landroid/app/Activity;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 105
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 70
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 110
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 120
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    .local v0, "keyCodes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 128
    .local v1, "hashCode":I
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->mResumedActivities:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 129
    .local v2, "properties":Lorg/json/JSONObject;
    if-nez v2, :cond_0

    .line 130
    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/autotrack/ActivityPageLeaveCallbacks;->trackAppPageLeave(Lorg/json/JSONObject;)V

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "hashCode":I
    .end local v2    # "properties":Lorg/json/JSONObject;
    goto :goto_0

    .line 137
    .end local v0    # "keyCodes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "exception":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 138
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
