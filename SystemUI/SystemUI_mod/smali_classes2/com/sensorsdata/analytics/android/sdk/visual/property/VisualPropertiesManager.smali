.class public Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;
.super Ljava/lang/Object;
.source "VisualPropertiesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;,
        Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;,
        Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final PROPERTY_TYPE_NUMBER:Ljava/lang/String; = "NUMBER"

.field private static final TAG:Ljava/lang/String; = "SA.VP.VisualPropertiesManager"


# instance fields
.field private mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

.field private mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

.field private mRequestHelper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

.field private mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

.field private mVisualPropertiesH5Helper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    .line 64
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    .line 65
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mRequestHelper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    .line 66
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualPropertiesH5Helper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$1;

    .line 52
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;
    .locals 1

    .line 70
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$SingletonHolder;->access$000()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    return-object v0
.end method

.method private mergeVisualProperty(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;Ljava/lang/String;)V
    .locals 5
    .param p2, "event"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    .param p3, "srcObject"    # Lorg/json/JSONObject;
    .param p4, "clickViewNode"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .param p5, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;",
            ">;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;",
            "Lorg/json/JSONObject;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 360
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 361
    .local v0, "h5HashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;

    .line 362
    .local v2, "visualProperty":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;
    iget-boolean v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->isH5:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->webViewElementPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->webViewElementPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    :cond_0
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mergeAppVisualProperty(Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V

    .line 367
    .end local v2    # "visualProperty":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;
    :goto_1
    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualPropertiesH5Helper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    invoke-virtual {v1, p3, v0, p5}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->mergeJSVisualProperties(Lorg/json/JSONObject;Ljava/util/HashSet;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0    # "h5HashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    goto :goto_2

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public checkAppIdAndProject()Z
    .locals 11

    .line 324
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "serverUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 326
    const-string v1, "SA.VP.VisualPropertiesManager"

    const-string v3, "serverUrl is empty and return"

    invoke-static {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return v2

    .line 330
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 331
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "project"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "project":Ljava/lang/String;
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 333
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "appId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    if-nez v6, :cond_2

    .line 340
    const-string v6, "SA.VP.VisualPropertiesManager"

    const-string v7, "VisualConfig is null and return"

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return v2

    .line 344
    :cond_2
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v6, v6, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->appId:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v6, :cond_3

    .line 345
    const-string v6, "SA.VP.VisualPropertiesManager"

    const-string v9, "app_id is not equals: current app_id is %s, config app_id is %s "

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    iget-object v10, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v10, v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->appId:Ljava/lang/String;

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return v2

    .line 350
    :cond_3
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v6, v6, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->project:Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 351
    const-string v6, "SA.VP.VisualPropertiesManager"

    const-string v9, "project is not equals: current project is %s, config project is %s "

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    iget-object v10, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v10, v10, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->project:Ljava/lang/String;

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return v2

    .line 354
    :cond_4
    return v8

    .line 335
    :cond_5
    :goto_0
    const-string v6, "SA.VP.VisualPropertiesManager"

    const-string v7, "project or app_id is empty and return"

    invoke-static {v6, v7}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return v2
.end method

.method public getMatchEventConfigList(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p2, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;
    .param p3, "screenName"    # Ljava/lang/String;
    .param p4, "elementPath"    # Ljava/lang/String;
    .param p5, "elementPosition"    # Ljava/lang/String;
    .param p6, "elementContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;",
            ">;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;",
            ">;"
        }
    .end annotation

    .line 281
    .local p1, "propertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;

    .line 285
    .local v2, "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->getVisualEventType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    goto :goto_0

    .line 290
    :cond_0
    iget-object v3, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->event:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;

    .line 291
    .local v3, "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->screenName:Ljava/lang/String;

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 292
    goto :goto_0

    .line 295
    :cond_1
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;

    if-eq p2, v4, :cond_2

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->WEB_CLICK:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;

    if-ne p2, v4, :cond_5

    .line 297
    :cond_2
    iget-object v4, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPath:Ljava/lang/String;

    invoke-static {v4, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v4, :cond_3

    .line 298
    const-string v4, "SA.VP.VisualPropertiesManager"

    const-string v8, "event element_path is not match: current element_path is %s, config element_path is %s "

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p4, v7, v6

    iget-object v6, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPath:Ljava/lang/String;

    aput-object v6, v7, v5

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    goto :goto_0

    .line 303
    :cond_3
    iget-boolean v4, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementPosition:Z

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPosition:Ljava/lang/String;

    invoke-static {v4, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 304
    const-string v4, "SA.VP.VisualPropertiesManager"

    const-string v8, "event element_position is not match: current element_position is %s, config element_position is %s "

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p5, v7, v6

    iget-object v6, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPosition:Ljava/lang/String;

    aput-object v6, v7, v5

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    goto :goto_0

    .line 309
    :cond_4
    iget-boolean v4, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementContent:Z

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementContent:Ljava/lang/String;

    invoke-static {v4, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 310
    const-string v4, "SA.VP.VisualPropertiesManager"

    const-string v8, "event element_content is not match: current element_content is %s, config element_content is %s "

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p6, v7, v6

    iget-object v6, v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementContent:Ljava/lang/String;

    aput-object v6, v7, v5

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    goto/16 :goto_0

    .line 314
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v2    # "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    .end local v3    # "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    goto/16 :goto_0

    .line 318
    :cond_6
    goto :goto_1

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 319
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    return-object v0
.end method

.method public getVisualConfigVersion()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->version:Ljava/lang/String;

    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisualPropertiesCache()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    return-object v0
.end method

.method public getVisualPropertiesH5Helper()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualPropertiesH5Helper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    return-object v0
.end method

.method public mergeAppVisualProperty(Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    .locals 9
    .param p1, "visualProperty"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;
    .param p2, "event"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    .param p3, "srcObject"    # Lorg/json/JSONObject;
    .param p4, "clickViewNode"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    .line 380
    :try_start_0
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "SA.VP.VisualPropertiesManager"

    const-string v1, "config visual property name is empty"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void

    .line 386
    :cond_0
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    const-string v0, "SA.VP.VisualPropertiesManager"

    const-string v1, "config visual property elementPath is empty"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPosition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->limitElementPosition:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 394
    iget-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->elementPath:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    .line 396
    const-string v1, "SA.VP.VisualPropertiesManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visualProperty elementPosition replace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 400
    :cond_2
    const/4 v1, 0x0

    move-object v2, v1

    .line 402
    .local v2, "propertyElementContent":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;

    move-result-object v4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    iget-object v6, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    iget-object v7, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    iget-object v8, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewTreeStatusObservable;->getViewNode(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v4

    .line 403
    .local v4, "viewTreeNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    if-eqz v4, :cond_5

    iget-object v5, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    iget-object v6, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz v5, :cond_5

    .line 405
    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 406
    const/4 v5, 0x0

    .line 407
    .local v5, "targetView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 408
    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v6

    move-object v5, v6

    .line 410
    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 412
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;Z)Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v6

    .line 417
    .end local v4    # "viewTreeNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;
    .end local v5    # "targetView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_5
    goto :goto_1

    .line 415
    :catch_0
    move-exception v4

    .line 416
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 418
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_5

    .line 425
    :cond_6
    const-string v4, "SA.VP.VisualPropertiesManager"

    const-string v5, "find property target view success, property element_path: %s,element_position: %s,element_content: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    aput-object v7, v6, v0

    iget-object v7, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v4, 0x0

    .line 428
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v5, :cond_a

    .line 429
    nop

    .line 431
    .local v1, "pattern":Ljava/util/regex/Pattern;
    :try_start_3
    iget-object v5, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    const/16 v6, 0x28

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    move-object v1, v5

    .line 432
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 433
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 434
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 435
    const-string v6, "SA.VP.VisualPropertiesManager"

    const-string v7, "propertyValue is: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    goto :goto_2

    .line 437
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_7
    const-string v0, "SA.VP.VisualPropertiesManager"

    const-string v3, "matcher not find continue"

    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v0, :cond_8

    .line 439
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    iget-object v3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->type:Ljava/lang/String;

    iget-object v7, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    invoke-interface {v0, v3, v6, v2, v7}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onParsePropertyContentFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 441
    :cond_8
    return-void

    .line 443
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v3, :cond_9

    .line 445
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    iget-object v5, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->type:Ljava/lang/String;

    iget-object v7, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->regular:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v2, v7}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onParsePropertyContentFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_9
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 448
    return-void

    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_a
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 454
    const-string v0, "NUMBER"

    iget-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v0, :cond_c

    .line 456
    if-eqz v4, :cond_b

    .line 457
    :try_start_5
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 459
    :catch_2
    move-exception v0

    .line 460
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v1, :cond_b

    .line 461
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onOtherError(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_3
    goto :goto_4

    .line 466
    :cond_c
    :try_start_7
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    invoke-virtual {p3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 471
    goto :goto_4

    .line 467
    :catch_3
    move-exception v0

    .line 468
    .local v0, "e":Lorg/json/JSONException;
    :try_start_8
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v1, :cond_d

    .line 469
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onOtherError(Ljava/lang/String;)V

    .line 476
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "propertyElementContent":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_d
    :goto_4
    goto :goto_6

    .line 419
    .restart local v2    # "propertyElementContent":Ljava/lang/String;
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v0, :cond_f

    .line 420
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    iget-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;->elementPosition:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onFindPropertyElementFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 422
    :cond_f
    return-void

    .line 474
    .end local v2    # "propertyElementContent":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method public mergeVisualProperties(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V
    .locals 21
    .param p1, "eventType"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;
    .param p2, "srcObject"    # Lorg/json/JSONObject;
    .param p3, "viewNode"    # Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;

    move-object/from16 v8, p0

    .line 180
    move-object/from16 v9, p3

    :try_start_0
    const-string v0, "$screen_name"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p2

    :try_start_1
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "screenName":Ljava/lang/String;
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    invoke-static/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->access$200(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v9}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onStart(Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;)V

    .line 185
    :cond_0
    const-string v1, "SA.VP.VisualPropertiesManager"

    const-string v2, "mergeVisualProperties eventType: %s, screenName:%s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->getVisualEventType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    const-string v1, "SA.VP.VisualPropertiesManager"

    const-string v2, "screenName is empty and return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void

    .line 192
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    const-string v1, "SA.VP.VisualPropertiesManager"

    const-string v2, "you should call \'enableVisualizedAutoTrack(true)\' first"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onSwitchClose()V

    .line 197
    :cond_2
    return-void

    .line 200
    :cond_3
    const/4 v1, 0x0

    .line 201
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v9, :cond_4

    .line 202
    invoke-virtual/range {p3 .. p3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getView()Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 203
    .local v2, "view":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 204
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getActivityFromContext(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    move-object v1, v3

    .line 207
    .end local v2    # "view":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_4
    if-nez v1, :cond_5

    .line 208
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v1, v2

    .line 210
    .end local v1    # "activity":Landroid/app/Activity;
    .local v11, "activity":Landroid/app/Activity;
    :cond_5
    move-object v11, v1

    if-eqz v11, :cond_15

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isVisualizedAutoTrackActivity(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_4

    .line 219
    :cond_6
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    if-nez v1, :cond_8

    .line 220
    const-string v1, "SA.VP.VisualPropertiesManager"

    const-string v2, "visual properties is empty and return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v1, :cond_7

    .line 222
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    const-string v2, "\u672c\u5730\u7f13\u5b58\u65e0\u81ea\u5b9a\u4e49\u5c5e\u6027\u914d\u7f6e"

    invoke-interface {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onCheckVisualConfigFailure(Ljava/lang/String;)V

    .line 224
    :cond_7
    return-void

    .line 227
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->checkAppIdAndProject()Z

    move-result v1

    if-nez v1, :cond_a

    .line 228
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v1, :cond_9

    .line 229
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    const-string v2, "\u672c\u5730\u7f13\u5b58\u7684 AppId \u6216 Project \u4e0e\u5f53\u524d\u9879\u76ee\u4e0d\u4e00\u81f4"

    invoke-interface {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onCheckVisualConfigFailure(Ljava/lang/String;)V

    .line 231
    :cond_9
    return-void

    .line 234
    :cond_a
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->events:Ljava/util/List;

    move-object v12, v1

    .line 235
    .local v12, "propertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    if-eqz v12, :cond_13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_3

    .line 243
    :cond_b
    const/4 v1, 0x0

    .line 244
    .local v1, "elementPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 245
    .local v2, "elementPosition":Ljava/lang/String;
    const/4 v3, 0x0

    .line 246
    .local v3, "elementContent":Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 247
    invoke-virtual/range {p3 .. p3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 248
    invoke-virtual/range {p3 .. p3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 249
    invoke-virtual/range {p3 .. p3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 251
    .end local v1    # "elementPath":Ljava/lang/String;
    .end local v2    # "elementPosition":Ljava/lang/String;
    .end local v3    # "elementContent":Ljava/lang/String;
    .local v13, "elementPath":Ljava/lang/String;
    .local v14, "elementPosition":Ljava/lang/String;
    .local v15, "elementContent":Ljava/lang/String;
    :cond_c
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object v1, v8

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v0

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-virtual/range {v1 .. v7}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getMatchEventConfigList(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    .line 252
    .local v7, "eventConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 253
    const-string v1, "SA.VP.VisualPropertiesManager"

    const-string v2, "event config is empty and return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v1, :cond_d

    .line 255
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onCheckEventConfigFailure()V

    .line 257
    :cond_d
    return-void

    .line 260
    :cond_e
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;

    move-object v5, v1

    .line 262
    .local v5, "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    iget-object v1, v5, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->event:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;

    move-object v4, v1

    .line 264
    .local v4, "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    if-eqz v4, :cond_f

    iget-boolean v1, v4, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;->isH5:Z

    if-eqz v1, :cond_f

    .line 265
    goto :goto_0

    .line 267
    :cond_f
    iget-object v1, v5, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->properties:Ljava/util/List;

    move-object v3, v1

    .line 268
    .local v3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    .line 269
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_1

    .line 272
    :cond_10
    iget-object v2, v5, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventName:Ljava/lang/String;

    move-object v1, v8

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v17, v3

    move-object v3, v4

    .end local v3    # "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    .local v17, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    move-object/from16 v18, v4

    move-object v4, v10

    .end local v4    # "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    .local v18, "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    move-object/from16 v19, v5

    move-object v5, v9

    .end local v5    # "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    .local v19, "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    move-object/from16 v20, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mergeVisualProperty(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/visual/model/ViewNode;Ljava/lang/String;)V

    .line 273
    .end local v17    # "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    .end local v18    # "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    .end local v19    # "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    goto :goto_2

    .line 269
    .restart local v3    # "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    .restart local v4    # "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    .restart local v5    # "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    :cond_11
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .end local v3    # "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    .end local v4    # "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    .end local v5    # "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    .restart local v17    # "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    .restart local v18    # "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    .restart local v19    # "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    :goto_1
    const-string v1, "SA.VP.VisualPropertiesManager"

    const-string v2, "properties is empty "

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    nop

    .line 260
    .end local v17    # "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualProperty;>;"
    .end local v18    # "event":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualEvent;
    .end local v19    # "visualPropertiesConfig":Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    :goto_2
    move-object/from16 v6, v20

    goto :goto_0

    .line 276
    .end local v0    # "screenName":Ljava/lang/String;
    .end local v7    # "eventConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    .end local v11    # "activity":Landroid/app/Activity;
    .end local v12    # "propertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    .end local v13    # "elementPath":Ljava/lang/String;
    .end local v14    # "elementPosition":Ljava/lang/String;
    .end local v15    # "elementContent":Ljava/lang/String;
    :cond_12
    goto :goto_6

    .line 236
    .restart local v0    # "screenName":Ljava/lang/String;
    .restart local v11    # "activity":Landroid/app/Activity;
    .restart local v12    # "propertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    :cond_13
    :goto_3
    const-string v1, "SA.VP.VisualPropertiesManager"

    const-string v2, "propertiesConfigs is empty"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v1, :cond_14

    .line 238
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    const-string v2, "propertiesConfigs is empty"

    invoke-interface {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onOtherError(Ljava/lang/String;)V

    .line 240
    :cond_14
    return-void

    .line 211
    .end local v12    # "propertiesConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;>;"
    :cond_15
    :goto_4
    const-string v1, "SA.VP.VisualPropertiesManager"

    const-string v2, "activity is null or not in white list and return"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    if-eqz v1, :cond_16

    .line 213
    iget-object v1, v8, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    const-string v2, "activity is null or not in white list and return"

    invoke-interface {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;->onOtherError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :cond_16
    return-void

    .line 274
    .end local v0    # "screenName":Ljava/lang/String;
    .end local v11    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v10, p2

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method public registerCollectLogListener(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    .line 146
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    .line 147
    return-void
.end method

.method public requestVisualConfig()V
    .locals 2

    .line 96
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->requestVisualConfig(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public requestVisualConfig(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorsDataAPI"    # Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 79
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mRequestHelper:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualConfigVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$1;

    invoke-direct {v2, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->requestVisualConfig(Landroid/content/Context;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$IApiCallback;)V

    .line 91
    goto :goto_2

    .line 89
    :catch_0
    move-exception v0

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    const-string v0, "SA.VP.VisualPropertiesManager"

    const-string v1, "Close network request"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 89
    :goto_1
    nop

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public save2Cache(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->save2Cache(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mConfigCache:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesCache;->getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mVisualConfig:Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    .line 120
    return-void
.end method

.method public unRegisterCollectLogListener()V
    .locals 1

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->mCollectLogListener:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;

    .line 151
    return-void
.end method
