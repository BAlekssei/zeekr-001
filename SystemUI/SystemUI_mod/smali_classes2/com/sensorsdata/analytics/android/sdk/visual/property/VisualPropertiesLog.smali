.class public Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;
.super Ljava/lang/Object;
.source "VisualPropertiesLog.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

.field private mJSONArray:Lorg/json/JSONArray;

.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->object:Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized add2JsonArray(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->object:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mJSONArray:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mJSONArray:Lorg/json/JSONArray;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;
    throw p1
.end method


# virtual methods
.method public declared-synchronized getVisualPropertiesLog()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->object:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mJSONArray:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 38
    :cond_0
    const/4 v1, 0x0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 33
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;
    throw v0
.end method

.method public onCheckEventConfigFailure()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$300(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;)V

    .line 79
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->add2JsonArray(Lorg/json/JSONObject;)V

    .line 80
    return-void
.end method

.method public onCheckVisualConfigFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$200(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->add2JsonArray(Lorg/json/JSONObject;)V

    .line 74
    return-void
.end method

.method public onFindPropertyElementFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyElementPath"    # Ljava/lang/String;
    .param p3, "propertyElementPosition"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    const-string v1, "%s \u5c5e\u6027\u672a\u627e\u5230\u5c5e\u6027\u5143\u7d20\uff0c\u5c5e\u6027\u5143\u7d20\u8def\u5f84\u4e3a %s\uff0c\u5c5e\u6027\u5143\u7d20\u4f4d\u7f6e\u4e3a %s "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$400(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->add2JsonArray(Lorg/json/JSONObject;)V

    .line 86
    return-void
.end method

.method public onOtherError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$600(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->add2JsonArray(Lorg/json/JSONObject;)V

    .line 98
    return-void
.end method

.method public onParsePropertyContentFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyType"    # Ljava/lang/String;
    .param p3, "elementContent"    # Ljava/lang/String;
    .param p4, "regular"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    const-string v1, "%s \u5c5e\u6027\u6b63\u5219\u89e3\u6790\u5931\u8d25\uff0c\u5143\u7d20\u5185\u5bb9 %s, \u6b63\u5219\u8868\u8fbe\u5f0f\u4e3a %s,\u5c5e\u6027\u7c7b\u578b\u4e3a %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$500(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->add2JsonArray(Lorg/json/JSONObject;)V

    .line 92
    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    .locals 10
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "screenName"    # Ljava/lang/String;
    .param p3, "viewNode"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "elementPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 55
    .local v1, "elementPosition":Ljava/lang/String;
    const/4 v2, 0x0

    .line 56
    .local v2, "elementContent":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 57
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_0
    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    move-object v3, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    .line 62
    return-void
.end method

.method public onSwitchClose()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$000(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;)V

    .line 67
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->mBuilder:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;->access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->add2JsonArray(Lorg/json/JSONObject;)V

    .line 68
    return-void
.end method
