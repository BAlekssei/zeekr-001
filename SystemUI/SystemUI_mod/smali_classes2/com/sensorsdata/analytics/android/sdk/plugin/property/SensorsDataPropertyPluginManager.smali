.class public final Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;
.super Ljava/lang/Object;
.source "SensorsDataPropertyPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SAPropertyPluginManager"


# instance fields
.field private final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->plugins:Ljava/util/Map;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager$1;

    .line 40
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;-><init>()V

    return-void
.end method

.method private filter(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .param p3, "properties"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 122
    .local v0, "filterPlugins":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;>;"
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    .line 124
    .local v2, "plugin":Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->getEventTypeFilter()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->isMatchEventType(Ljava/util/Set;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->getEventNameFilter()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->isMatchEventName(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->getPropertyKeyFilter()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->isMatchPropertyKey(Ljava/util/Set;Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v2    # "plugin":Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager$1;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    return-object v0
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;
    .locals 1

    .line 49
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager$SingleHolder;->access$100()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;

    move-result-object v0

    return-object v0
.end method

.method private getPluginType(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)Ljava/lang/String;
    .locals 1
    .param p1, "plugin"    # Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    .line 107
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isMatchEventName(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 1
    .param p2, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 154
    .local p1, "eventNameFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 155
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isMatchEventType(Ljava/util/Set;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Z
    .locals 2
    .param p2, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;",
            ">;",
            "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;",
            ")Z"
        }
    .end annotation

    .line 193
    .local p1, "eventTypeFilter":Ljava/util/Set;, "Ljava/util/Set<Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne p2, v1, :cond_1

    .line 195
    return v0

    .line 199
    :cond_1
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->ALL:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    return v0

    .line 202
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMatchPropertyKey(Ljava/util/Set;Lorg/json/JSONObject;)Z
    .locals 5
    .param p2, "properties"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .line 169
    .local p1, "propertyKeyFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 173
    return v1

    .line 175
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 176
    .local v3, "propertyKey":Ljava/lang/String;
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    return v0

    .line 179
    .end local v3    # "propertyKey":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 181
    :cond_3
    return v1

    .line 170
    :cond_4
    :goto_1
    return v0
.end method

.method private properties(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 212
    .local p1, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez p1, :cond_0

    .line 214
    return-object v0

    .line 216
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    .line 217
    .local v2, "plugin":Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->properties()Ljava/util/Map;

    move-result-object v3

    .line 218
    .local v3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    goto :goto_0

    .line 221
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 223
    .local v4, "pluginProperties":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyTypes(Lorg/json/JSONObject;)V

    .line 224
    invoke-static {v4, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_1

    .line 225
    :catch_0
    move-exception v5

    .line 226
    .local v5, "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 228
    .end local v2    # "plugin":Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
    .end local v3    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "pluginProperties":Lorg/json/JSONObject;
    .end local v5    # "e":Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException;
    :goto_1
    goto :goto_0

    .line 229
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final getPropertiesByPlugin(Ljava/lang/Class;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 239
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    return-object v0

    .line 241
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "pluginType":Ljava/lang/String;
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    .line 244
    .local v2, "plugin":Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->properties()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 248
    .end local v2    # "plugin":Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
    :cond_1
    return-object v0
.end method

.method public final properties(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .param p3, "properties"    # Lorg/json/JSONObject;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    .local v0, "startPropertiesTime":J
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->filter(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->properties(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v5, "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 92
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 93
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "SA.SAPropertyPluginManager"

    const-string v7, "Event [%s] error is happened when matching property-plugins, e=%s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p1, v8, v3

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .end local v5    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .line 96
    .local v5, "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v6, "SA.SAPropertyPluginManager"

    const-string v7, "Event [%s] spend [%sms] on matching property-plugins"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v5
.end method

.method public final registerPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V
    .locals 5
    .param p1, "plugin"    # Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    .line 62
    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->getPluginType(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "propertyType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->start()V

    goto :goto_0

    .line 69
    :cond_1
    const-string v1, "SA.SAPropertyPluginManager"

    const-string v2, "plugin [ %s ] has exist!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "propertyType":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SA.SAPropertyPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register property plugin exception! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
