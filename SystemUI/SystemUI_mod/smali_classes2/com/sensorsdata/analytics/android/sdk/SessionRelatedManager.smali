.class public Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;
.super Ljava/lang/Object;
.source "SessionRelatedManager.java"


# static fields
.field private static volatile mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;


# instance fields
.field public final EVENT_SESSION_ID:Ljava/lang/String;

.field private final KEY_LAST_EVENT_TIME:Ljava/lang/String;

.field private final KEY_SESSION_ID:Ljava/lang/String;

.field private final KEY_START_TIME:Ljava/lang/String;

.field private final SESSION_LAST_INTERVAL_TIME:J

.field private final SESSION_START_INTERVAL_TIME:J

.field private final SHARED_PREF_SESSION_CUTDATA:Ljava/lang/String;

.field private mLastEventTime:J

.field private mSessionID:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "sensorsdata.session.cutdata"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->SHARED_PREF_SESSION_CUTDATA:Ljava/lang/String;

    .line 24
    const-string v0, "$event_session_id"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->EVENT_SESSION_ID:Ljava/lang/String;

    .line 25
    const-string v0, "sessionID"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->KEY_SESSION_ID:Ljava/lang/String;

    .line 26
    const-string v0, "startTime"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->KEY_START_TIME:Ljava/lang/String;

    .line 27
    const-string v0, "lastEventTime"

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->KEY_LAST_EVENT_TIME:Ljava/lang/String;

    .line 28
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->SESSION_LAST_INTERVAL_TIME:J

    .line 29
    const-wide/32 v0, 0x2932e00

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->SESSION_START_INTERVAL_TIME:J

    .line 57
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->deleteSessionData()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->readSessionData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private createSessionData(JZ)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "isSessionTypeByEvent"    # Z

    .line 113
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    .line 114
    if-eqz p3, :cond_0

    .line 115
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mStartTime:J

    .line 117
    :cond_0
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mLastEventTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mLastEventTime:J

    .line 118
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.session.cutdata"

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->getSessionDataPack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private deleteSessionData()V
    .locals 2

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mStartTime:J

    .line 105
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mLastEventTime:J

    .line 106
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.session.cutdata"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->remove(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;
    .locals 2

    .line 45
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;

    return-object v0
.end method

.method private getSessionDataPack()Ljava/lang/String;
    .locals 4

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "sessionID"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 175
    const-string v1, "lastEventTime"

    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mLastEventTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 180
    .end local v1    # "e":Lorg/json/JSONException;
    const-string v1, ""

    return-object v1
.end method

.method private handleSessionState(J)V
    .locals 4
    .param p1, "eventTime"    # J

    .line 149
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mLastEventTime:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mStartTime:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->updateSessionLastTime(J)V

    goto :goto_1

    .line 152
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->createSessionData(JZ)V

    .line 157
    :goto_1
    return-void
.end method

.method private readSessionData()V
    .locals 4

    .line 125
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.session.cutdata"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "sessionJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 128
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "sessionID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const-string v2, "sessionID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    .line 132
    :cond_1
    const-string v2, "startTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    const-string v2, "startTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mStartTime:J

    .line 135
    :cond_2
    const-string v2, "lastEventTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    const-string v2, "lastEventTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mLastEventTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 141
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private updateSessionLastTime(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .line 95
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mLastEventTime:J

    .line 96
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.session.cutdata"

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->getSessionDataPack()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public handleEventOfSession(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "property"    # Lorg/json/JSONObject;
    .param p3, "time"    # J

    .line 79
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->handleSessionState(J)V

    .line 82
    const-string v0, "$AppEnd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "$event_session_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    return-void

    .line 85
    :cond_1
    const-string v0, "$event_session_id"

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 89
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public refreshSessionByTimer(J)V
    .locals 4
    .param p1, "refreshTime"    # J

    .line 165
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->mLastEventTime:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/SessionRelatedManager;->createSessionData(JZ)V

    .line 168
    :cond_0
    return-void
.end method
