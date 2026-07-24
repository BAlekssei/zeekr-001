.class public Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;
.super Ljava/lang/Object;
.source "SAContextManager.java"


# instance fields
.field private isAppStartSuccess:Z

.field private mAndroidId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private setupDeviceInfo()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;

    move-result-object v0

    const-class v1, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->getPropertiesByPlugin(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    .line 162
    :cond_1
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mEventListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mEventListenerList:Ljava/util/List;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 71
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public addKeyIfExist(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->setupDeviceInfo()V

    .line 97
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 103
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mAndroidId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mAndroidId:Ljava/lang/String;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mAndroidId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventListenerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mEventListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getPresetProperties()Lorg/json/JSONObject;
    .locals 5

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 125
    .local v0, "properties":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->setupDeviceInfo()V

    .line 126
    const-string v1, "$app_version"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$app_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "$lib"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v1, "$lib_version"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$lib_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v1, "$manufacturer"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$manufacturer"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v1, "$model"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$model"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v1, "$brand"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$brand"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "$os"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$os"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "$os_version"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$os_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "$screen_height"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$screen_height"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v1, "$screen_width"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$screen_width"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "networkType":Ljava/lang/String;
    const-string v2, "$wifi"

    const-string v3, "WIFI"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 138
    const-string v2, "$network_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v2, "$carrier"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v4, "$carrier"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "$app_id"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v4, "$app_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "$timezone_offset"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v4, "$timezone_offset"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$anonymization_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const-string v2, "$anonymization_id"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v4, "$anonymization_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v3, "$device_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const-string v2, "$device_id"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v4, "$device_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_1
    const-string v2, "$app_name"

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mDeviceInfo:Ljava/util/Map;

    const-string v4, "$app_name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v1    # "networkType":Ljava/lang/String;
    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public isAppStartSuccess()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->isAppStartSuccess:Z

    return v0
.end method

.method public removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mEventListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->mEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 86
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setAppStartSuccess(Z)V
    .locals 0
    .param p1, "appStartSuccess"    # Z

    .line 169
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/util/SAContextManager;->isAppStartSuccess:Z

    .line 170
    return-void
.end method
