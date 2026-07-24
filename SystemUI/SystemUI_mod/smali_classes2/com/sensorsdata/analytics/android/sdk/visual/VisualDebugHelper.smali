.class public Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;
.super Ljava/lang/Object;
.source "VisualDebugHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.VP.VisualDebugHelper"


# instance fields
.field private mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

.field private mJsonArray:Lorg/json/JSONArray;

.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->object:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .line 37
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->handlerEvent(Lorg/json/JSONObject;)V

    return-void
.end method

.method private declared-synchronized handlerEvent(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    monitor-enter p0

    .line 78
    if-nez p1, :cond_0

    .line 79
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 83
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_1
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "eventName":Ljava/lang/String;
    const-string v1, "$AppClick"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "$WebClick"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    const-string v1, "SA.VP.VisualDebugHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 89
    monitor-exit p0

    return-void

    .line 92
    :cond_2
    :try_start_2
    const-string v1, "properties"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    .local v1, "propertyObject":Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 94
    monitor-exit p0

    return-void

    .line 97
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->checkAppIdAndProject()Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v2, :cond_4

    .line 98
    monitor-exit p0

    return-void

    .line 101
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 102
    .local v2, "visualConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    if-nez v2, :cond_5

    .line 103
    monitor-exit p0

    return-void

    .line 106
    :cond_5
    :try_start_5
    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->events:Ljava/util/List;

    .line 107
    .local v3, "propertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_7

    .line 112
    :cond_6
    const-string v4, "$AppClick"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 113
    const-string v4, "$screen_name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 114
    .local v11, "screenName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 115
    const-string v4, "SA.VP.VisualDebugHelper"

    const-string v5, "screenName is empty "

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 116
    monitor-exit p0

    return-void

    .line 118
    :cond_7
    :try_start_6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v4

    .line 120
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->getVisualEventType(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;

    move-result-object v6

    const-string v5, "$element_path"

    .line 121
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "$element_position"

    .line 122
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "$element_content"

    .line 123
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    move-object v5, v3

    move-object v7, v11

    invoke-virtual/range {v4 .. v10}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getMatchEventConfigList(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 124
    .local v4, "eventConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 125
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->object:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 126
    :try_start_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 128
    .local v7, "config":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    :try_start_8
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v8, "object":Lorg/json/JSONObject;
    invoke-static {p1, v8}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 130
    const-string v9, "event_name"

    iget-object v10, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    iget-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    if-nez v9, :cond_8

    .line 132
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    iput-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    .line 134
    :cond_8
    iget-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 137
    .end local v8    # "object":Lorg/json/JSONObject;
    goto :goto_1

    .line 135
    :catch_0
    move-exception v8

    .line 136
    .local v8, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-static {v8}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 138
    .end local v7    # "config":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 139
    :cond_9
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v6

    .line 141
    .end local v4    # "eventConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    .end local v11    # "screenName":Ljava/lang/String;
    :cond_a
    :goto_2
    goto/16 :goto_6

    :cond_b
    const-string v4, "$WebClick"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v4, :cond_10

    .line 143
    :try_start_b
    const-string v4, "sensorsdata_web_visual_eventName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 144
    .local v4, "array":Lorg/json/JSONArray;
    if-nez v4, :cond_c

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 146
    .local v5, "hashCode":I
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesH5Helper()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->getEventName(I)Lorg/json/JSONArray;

    move-result-object v6

    move-object v4, v6

    .line 147
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesH5Helper()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->clearCache(I)V

    .line 149
    .end local v5    # "hashCode":I
    :cond_c
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_f

    .line 150
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->object:Ljava/lang/Object;

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 151
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    :try_start_c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-ge v6, v7, :cond_e

    .line 153
    :try_start_d
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v7, "object":Lorg/json/JSONObject;
    invoke-static {p1, v7}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 155
    const-string v8, "event_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    if-nez v8, :cond_d

    .line 157
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    iput-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    .line 159
    :cond_d
    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 162
    .end local v7    # "object":Lorg/json/JSONObject;
    goto :goto_4

    .line 160
    :catch_1
    move-exception v7

    .line 161
    .local v7, "e":Ljava/lang/Exception;
    :try_start_e
    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 151
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 164
    .end local v6    # "i":I
    :cond_e
    monitor-exit v5

    goto :goto_5

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 168
    .end local v4    # "array":Lorg/json/JSONArray;
    :cond_f
    :goto_5
    goto :goto_6

    .line 166
    :catch_2
    move-exception v4

    .line 167
    .local v4, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 172
    .end local v0    # "eventName":Ljava/lang/String;
    .end local v1    # "propertyObject":Lorg/json/JSONObject;
    .end local v2    # "visualConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    .end local v3    # "propertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_6
    goto :goto_8

    .line 108
    .restart local v0    # "eventName":Ljava/lang/String;
    .restart local v1    # "propertyObject":Lorg/json/JSONObject;
    .restart local v2    # "visualConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    .restart local v3    # "propertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    :cond_11
    :goto_7
    const-string v4, "SA.VP.VisualDebugHelper"

    const-string v5, "propertiesConfigs is empty "

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 109
    monitor-exit p0

    return-void

    .line 77
    .end local v0    # "eventName":Ljava/lang/String;
    .end local v1    # "propertyObject":Lorg/json/JSONObject;
    .end local v2    # "visualConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    .end local v3    # "propertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    :catchall_2
    move-exception p1

    goto :goto_9

    .line 170
    .restart local p1    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    :try_start_11
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    monitor-exit p0

    return-void

    .line 77
    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    :goto_9
    monitor-exit p0

    .end local p0    # "this":Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;
    throw p1
.end method


# virtual methods
.method getDebugInfo()Ljava/lang/String;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "result":Ljava/lang/String;
    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    .line 180
    monitor-exit v0

    return-object v1

    .line 182
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    monitor-exit v0

    return-object v2

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startMonitor()V
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getSinglePool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 48
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    .line 60
    .end local v0    # "executorService":Ljava/util/concurrent/ExecutorService;
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method stopMonitor()V
    .locals 2

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
