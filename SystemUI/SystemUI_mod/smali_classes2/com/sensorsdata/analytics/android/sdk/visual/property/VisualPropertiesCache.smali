.class public Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;
.super Ljava/lang/Object;
.source "VisualPropertiesCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.VP.VisualPropertiesCache"


# instance fields
.field private mPersistentVisualConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "visual_properties"

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->mPersistentVisualConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    .line 48
    return-void
.end method

.method private doOnSaveCache(Ljava/lang/String;)V
    .locals 5
    .param p1, "config"    # Ljava/lang/String;

    .line 130
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getCurrentWebView()Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 135
    .local v2, "view":Landroid/view/View;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesH5Helper()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    move-result-object v3

    const-string v4, "updateH5VisualConfig"

    invoke-virtual {v3, v2, v4, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->sendToWeb(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 139
    .end local v0    # "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    goto :goto_2

    .line 132
    .restart local v0    # "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_2
    :goto_1
    return-void

    .line 137
    .end local v0    # "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public getH5JsonArrayFromCache(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 17
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "webViewElementPath"    # Ljava/lang/String;

    .line 143
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->mPersistentVisualConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 144
    .local v2, "persistentVisualConfig":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 145
    return-object v3

    .line 148
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "object":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 150
    .local v4, "array":Lorg/json/JSONArray;
    const-string v5, "events"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 151
    .local v5, "jsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 152
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 153
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 154
    .local v8, "visualPropertiesObject":Lorg/json/JSONObject;
    if-nez v8, :cond_2

    .line 155
    nop

    .line 152
    move-object/from16 v11, p1

    .end local v8    # "visualPropertiesObject":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    move-object/from16 v6, p2

    goto :goto_3

    .line 157
    .restart local v8    # "visualPropertiesObject":Lorg/json/JSONObject;
    :cond_2
    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;

    invoke-direct {v9}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;-><init>()V

    .line 158
    .local v9, "propertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    const-string v10, "event_name"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventName:Ljava/lang/String;

    .line 159
    iget-object v10, v9, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v11, p1

    :try_start_1
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 160
    goto :goto_1

    .line 162
    :cond_3
    const-string v10, "properties"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 163
    .local v10, "properties":Lorg/json/JSONArray;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 164
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 165
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 166
    .local v13, "propertyObject":Lorg/json/JSONObject;
    new-instance v14, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;

    invoke-direct {v14}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;-><init>()V

    .line 167
    .local v14, "visualProperty":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;
    const-string v15, "webview_element_path"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->webViewElementPath:Ljava/lang/String;

    .line 168
    iget-object v15, v14, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->webViewElementPath:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v6, p2

    :try_start_2
    invoke-static {v15, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 169
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    .end local v13    # "propertyObject":Lorg/json/JSONObject;
    .end local v14    # "visualProperty":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 178
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v8    # "visualPropertiesObject":Lorg/json/JSONObject;
    .end local v9    # "propertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    .end local v10    # "properties":Lorg/json/JSONArray;
    .end local v12    # "j":I
    :catch_0
    move-exception v0

    goto :goto_5

    .line 176
    :catch_1
    move-exception v0

    goto :goto_7

    .line 152
    .restart local v0    # "object":Lorg/json/JSONObject;
    .restart local v4    # "array":Lorg/json/JSONArray;
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :catch_2
    move-exception v0

    goto :goto_4

    .line 176
    :catch_3
    move-exception v0

    goto :goto_6

    .line 174
    .restart local v0    # "object":Lorg/json/JSONObject;
    .restart local v4    # "array":Lorg/json/JSONArray;
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_5
    move-object/from16 v11, p1

    move-object/from16 v6, p2

    return-object v4

    .line 180
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :cond_6
    move-object/from16 v11, p1

    move-object/from16 v6, p2

    goto :goto_8

    .line 178
    :catch_4
    move-exception v0

    move-object/from16 v11, p1

    :goto_4
    move-object/from16 v6, p2

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_9

    .line 176
    :catch_5
    move-exception v0

    move-object/from16 v11, p1

    :goto_6
    move-object/from16 v6, p2

    .line 177
    .local v0, "e":Lorg/json/JSONException;
    :goto_7
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 180
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_8
    nop

    .line 181
    :goto_9
    return-object v3
.end method

.method public getVisualCache()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->mPersistentVisualConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    .locals 17

    .line 61
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->mPersistentVisualConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "persistentVisualConfig":Ljava/lang/String;
    const-string v0, "SA.VP.VisualPropertiesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local visual config is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 64
    return-object v3

    .line 67
    :cond_0
    :try_start_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;-><init>()V

    .line 68
    .local v0, "config":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v4, "object":Lorg/json/JSONObject;
    const-string v5, "app_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->appId:Ljava/lang/String;

    .line 70
    const-string v5, "os"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->os:Ljava/lang/String;

    .line 71
    const-string v5, "project"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->project:Ljava/lang/String;

    .line 72
    const-string v5, "version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->version:Ljava/lang/String;

    .line 73
    const-string v5, "events"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 75
    .local v5, "jsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 76
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v6, "visualPropertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 78
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 79
    .local v9, "visualPropertiesObject":Lorg/json/JSONObject;
    if-nez v9, :cond_1

    .line 80
    goto/16 :goto_2

    .line 82
    :cond_1
    new-instance v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;

    invoke-direct {v10}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;-><init>()V

    .line 83
    .local v10, "propertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    const-string v11, "event_name"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventName:Ljava/lang/String;

    .line 84
    const-string v11, "event_type"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventType:Ljava/lang/String;

    .line 86
    const-string v11, "event"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 87
    .local v11, "eventObject":Lorg/json/JSONObject;
    if-eqz v11, :cond_2

    .line 88
    new-instance v12, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;

    invoke-direct {v12}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;-><init>()V

    .line 89
    .local v12, "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    const-string v13, "element_path"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPath:Ljava/lang/String;

    .line 90
    const-string v13, "element_position"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPosition:Ljava/lang/String;

    .line 91
    const-string v13, "element_content"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementContent:Ljava/lang/String;

    .line 92
    const-string v13, "screen_name"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->screenName:Ljava/lang/String;

    .line 93
    const-string v13, "limit_element_position"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementPosition:Z

    .line 94
    const-string v13, "limit_element_content"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementContent:Z

    .line 95
    const-string v13, "h5"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->isH5:Z

    .line 96
    iput-object v12, v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->event:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;

    .line 99
    .end local v12    # "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v12, "visualProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    const-string v13, "properties"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 101
    .local v13, "properties":Lorg/json/JSONArray;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 102
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 103
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 104
    .local v15, "propertyObject":Lorg/json/JSONObject;
    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;

    invoke-direct {v7}, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;-><init>()V

    .line 105
    .local v7, "visualProperty":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;
    const-string v3, "element_path"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    .line 106
    const-string v3, "element_position"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    .line 107
    const-string v3, "screen_name"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->screenName:Ljava/lang/String;

    .line 108
    const-string v3, "name"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    .line 109
    const-string v3, "regular"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    .line 110
    const-string v3, "h5"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->isH5:Z

    .line 111
    const-string v3, "type"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->type:Ljava/lang/String;

    .line 112
    const-string v3, "webview_element_path"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->webViewElementPath:Ljava/lang/String;

    .line 113
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v7    # "visualProperty":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;
    .end local v15    # "propertyObject":Lorg/json/JSONObject;
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 115
    .end local v14    # "j":I
    :cond_3
    iput-object v12, v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->properties:Ljava/util/List;

    .line 117
    :cond_4
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v9    # "visualPropertiesObject":Lorg/json/JSONObject;
    .end local v10    # "propertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    .end local v11    # "eventObject":Lorg/json/JSONObject;
    .end local v12    # "visualProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    .end local v13    # "properties":Lorg/json/JSONArray;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 119
    .end local v8    # "i":I
    :cond_5
    iput-object v6, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->events:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v6    # "visualPropertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    :cond_6
    return-object v0

    .line 122
    .end local v0    # "config":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 125
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public save2Cache(Ljava/lang/String;)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .line 51
    const-string v0, "SA.VP.VisualPropertiesCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save2Cache config is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->mPersistentVisualConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;->commit(Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->doOnSaveCache(Ljava/lang/String;)V

    .line 54
    return-void
.end method
