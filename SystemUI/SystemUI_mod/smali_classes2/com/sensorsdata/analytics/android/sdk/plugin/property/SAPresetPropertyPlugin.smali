.class public final Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;
.super Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
.source "SAPresetPropertyPlugin.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisableAndroidId:Z

.field private final mDisableTrackDeviceId:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "disableTrackDeviceId"    # Z
    .param p3, "disableAndroidId"    # Z

    .line 42
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    .line 44
    iput-boolean p2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mDisableTrackDeviceId:Z

    .line 45
    iput-boolean p3, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mDisableAndroidId:Z

    .line 46
    return-void
.end method


# virtual methods
.method public appendDynamicProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "dynamicProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public appendProperties(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDataCollectEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getHarmonyOSVersion()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "osVersion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    const-string v1, "$os"

    const-string v2, "HarmonyOS"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "$os_version"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_1
    const-string v1, "$os"

    const-string v2, "Android"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "$os_version"

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getOS()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_0
    const-string v1, "$lib"

    const-string v2, "Android"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "$lib_version"

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "$manufacturer"

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "$model"

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "$brand"

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "$app_version"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getDeviceSize(Landroid/content/Context;)[I

    move-result-object v1

    .line 69
    .local v1, "size":[I
    const-string v2, "$screen_width"

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v2, "$screen_height"

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "carrier":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    const-string v3, "$carrier"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->getZoneOffset()Ljava/lang/Integer;

    move-result-object v3

    .line 78
    .local v3, "zone_offset":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 79
    const-string v4, "$timezone_offset"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_3
    const-string v4, "$app_id"

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v4, "$app_name"

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "mAndroidId":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mDisableTrackDeviceId:Z

    if-nez v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 86
    iget-boolean v5, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPresetPropertyPlugin;->mDisableAndroidId:Z

    if-eqz v5, :cond_4

    .line 87
    const-string v5, "$anonymization_id"

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_4
    const-string v5, "$device_id"

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_5
    :goto_1
    return-void
.end method

.method public eventNameFilter(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "eventNameFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public eventTypeFilter(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "eventTypeFilter":Ljava/util/Set;, "Ljava/util/Set<Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;>;"
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_BIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public priority()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;
    .locals 1

    .line 119
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;->LOW:Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;

    return-object v0
.end method

.method public propertyKeyFilter(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "propertyKeyFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method
