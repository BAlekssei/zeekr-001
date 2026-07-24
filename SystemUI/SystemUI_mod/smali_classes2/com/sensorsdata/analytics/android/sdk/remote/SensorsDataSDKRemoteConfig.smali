.class public Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;
.super Ljava/lang/Object;
.source "SensorsDataSDKRemoteConfig.java"


# static fields
.field static final REMOTE_EVENT_TYPE_NO_USE:I = -0x1


# instance fields
.field private autoTrackMode:I

.field private disableDebugMode:Z

.field private disableSDK:Z

.field private effectMode:I

.field private eventBlacklist:Lorg/json/JSONArray;

.field private mAutoTrackEventType:I

.field private mSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

.field private newVersion:Ljava/lang/String;

.field private oldVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableDebugMode:Z

    .line 69
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableSDK:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    .line 71
    return-void
.end method


# virtual methods
.method getAutoTrackEventType()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    return v0
.end method

.method getAutoTrackMode()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    return v0
.end method

.method public getEffectMode()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->effectMode:I

    return v0
.end method

.method public getEventBlacklist()Lorg/json/JSONArray;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->eventBlacklist:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getNewVersion()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->newVersion:Ljava/lang/String;

    return-object v0
.end method

.method getOldVersion()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->oldVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    return-object v0
.end method

.method isAutoTrackEventTypeIgnored(I)Z
    .locals 4
    .param p1, "eventType"    # I

    .line 139
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 140
    return v1

    .line 143
    :cond_0
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 144
    return v2

    .line 147
    :cond_1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    or-int/2addr v0, p1

    iget v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    if-eq v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method isDisableDebugMode()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableDebugMode:Z

    return v0
.end method

.method isDisableSDK()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableSDK:Z

    return v0
.end method

.method public setAutoTrackMode(I)V
    .locals 2
    .param p1, "autoTrackMode"    # I

    .line 110
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    .line 112
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 118
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    .line 121
    :cond_1
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 122
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    .line 125
    :cond_2
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 126
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    .line 129
    :cond_3
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 130
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    .line 132
    :cond_4
    return-void

    .line 113
    :cond_5
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mAutoTrackEventType:I

    .line 114
    return-void
.end method

.method public setDisableDebugMode(Z)V
    .locals 0
    .param p1, "disableDebugMode"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableDebugMode:Z

    .line 87
    return-void
.end method

.method public setDisableSDK(Z)V
    .locals 0
    .param p1, "disableSDK"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableSDK:Z

    .line 95
    return-void
.end method

.method public setEffectMode(I)V
    .locals 0
    .param p1, "effectMode"    # I

    .line 191
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->effectMode:I

    .line 192
    return-void
.end method

.method public setEventBlacklist(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "eventArray"    # Lorg/json/JSONArray;

    .line 179
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->eventBlacklist:Lorg/json/JSONArray;

    .line 180
    return-void
.end method

.method public setNewVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVersion"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->newVersion:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setOldVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldVersion"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->oldVersion:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSecretKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)V
    .locals 0
    .param p1, "mSecretKey"    # Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 102
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->mSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 103
    return-void
.end method

.method toJson()Lorg/json/JSONObject;
    .locals 4

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 153
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "v"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->oldVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v1, "configObject":Lorg/json/JSONObject;
    const-string v2, "disableDebugMode"

    iget-boolean v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableDebugMode:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 156
    const-string v2, "autoTrackMode"

    iget v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v2, "disableSDK"

    iget-boolean v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableSDK:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 158
    const-string v2, "event_blacklist"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->eventBlacklist:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v2, "nv"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->newVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v2, "effect_mode"

    iget v3, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->effectMode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    const-string v2, "configs"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "configObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->oldVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", disableDebugMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableDebugMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disableSDK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->disableSDK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoTrackMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->autoTrackMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event_blacklist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->eventBlacklist:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->newVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", effect_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->effectMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
