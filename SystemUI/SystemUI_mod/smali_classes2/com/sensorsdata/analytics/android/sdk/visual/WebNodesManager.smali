.class public Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;
.super Ljava/lang/Object;
.source "WebNodesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_PAGE_INFO:Ljava/lang/String; = "page_info"

.field private static final CALL_TYPE_VISUALIZED_TRACK:Ljava/lang/String; = "visualized_track"

.field private static final LRU_CACHE_MAX_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SA.Visual.WebNodesManager"

.field private static volatile mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

.field private static sPageInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sWebNodesCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHasH5AlertInfo:Z

.field private mHasWebView:Z

.field private mLastWebNodeMsg:Ljava/lang/String;

.field private mWebViewUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mLastWebNodeMsg:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private findWebNodes(Lorg/json/JSONArray;Ljava/util/List;Ljava/util/Map;)V
    .locals 11
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    .local p3, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;>;"
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 265
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 266
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 267
    .local v2, "object":Lorg/json/JSONObject;
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;

    invoke-direct {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;-><init>()V

    .line 268
    .local v3, "webNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setId(Ljava/lang/String;)V

    .line 269
    const-string v4, "$element_content"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->set$element_content(Ljava/lang/String;)V

    .line 270
    const-string v4, "$element_selector"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->set$element_selector(Ljava/lang/String;)V

    .line 271
    const-string v4, "tagName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setTagName(Ljava/lang/String;)V

    .line 272
    const-string v4, "top"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setTop(F)V

    .line 273
    const-string v4, "left"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setLeft(F)V

    .line 274
    const-string v4, "scrollX"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setScrollX(F)V

    .line 275
    const-string v4, "scrollY"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setScrollY(F)V

    .line 276
    const-string v4, "width"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setWidth(F)V

    .line 277
    const-string v4, "height"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setHeight(F)V

    .line 278
    const-string v4, "scale"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setScale(F)V

    .line 279
    const-string v4, "visibility"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setVisibility(Z)V

    .line 280
    const-string v4, "$url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->set$url(Ljava/lang/String;)V

    .line 281
    const-string v4, "zIndex"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setzIndex(I)V

    .line 282
    const-string v4, "$title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->set$title(Ljava/lang/String;)V

    .line 283
    const-string v4, "level"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setLevel(I)V

    .line 284
    const-string v4, "$element_path"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->set$element_path(Ljava/lang/String;)V

    .line 285
    const-string v4, "$element_position"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->set$element_position(Ljava/lang/String;)V

    .line 286
    const-string v4, "list_selector"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setList_selector(Ljava/lang/String;)V

    .line 287
    const-string v4, "lib_version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setLib_version(Ljava/lang/String;)V

    .line 288
    const-string v4, "enable_click"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setEnable_click(Z)V

    .line 289
    const-string v4, "is_list_view"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setIs_list_view(Z)V

    .line 290
    const-string v4, "subelements"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 291
    .local v4, "subElementsArray":Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v5, "subViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 293
    move v6, v0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 294
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "subElementsId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 296
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 298
    new-instance v8, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getTop()F

    move-result v9

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getLeft()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;-><init>(FF)V

    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .end local v7    # "subElementsId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 303
    .end local v6    # "j":I
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 304
    invoke-virtual {v3, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setSubelements(Ljava/util/List;)V

    .line 306
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "webNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;
    .end local v4    # "subElementsArray":Lorg/json/JSONArray;
    .end local v5    # "subViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 309
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 311
    :cond_3
    nop

    .line 312
    :goto_2
    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;
    .locals 2

    .line 63
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    if-nez v0, :cond_1

    .line 64
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    .line 68
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 70
    :cond_1
    :goto_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    return-object v0
.end method

.method private modifyWebNodes(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p1, "webNodeList":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    .local p2, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 242
    :cond_0
    monitor-enter p0

    .line 243
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;

    .line 244
    .local v1, "webNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getLeft()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setOriginLeft(F)V

    .line 245
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getTop()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setOriginTop(F)V

    .line 246
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setRootView(Z)V

    .line 249
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getTop()F

    move-result v2

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getScrollY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setTop(F)V

    .line 250
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getLeft()F

    move-result v2

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getScrollX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setLeft(F)V

    goto :goto_1

    .line 252
    :cond_1
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;

    .line 253
    .local v2, "rect":Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;
    if-eqz v2, :cond_2

    .line 254
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getTop()F

    move-result v3

    iget v4, v2, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;->top:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setTop(F)V

    .line 255
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->getLeft()F

    move-result v3

    iget v4, v2, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;->left:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;->setLeft(F)V

    .line 258
    .end local v1    # "webNode":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;
    .end local v2    # "rect":Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;
    :cond_2
    :goto_1
    goto :goto_0

    .line 259
    :cond_3
    monitor-exit p0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 240
    :cond_4
    :goto_2
    return-void
.end method

.method private parseAlertResult(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 195
    return-object v1

    .line 196
    :cond_0
    move-object v0, v1

    .line 198
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 200
    .local v2, "array":Lorg/json/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 202
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 203
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 204
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 205
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;

    const-string v6, "title"

    .line 206
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "message"

    .line 207
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "link_text"

    .line 208
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "link_url"

    .line 209
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 213
    :catch_1
    move-exception v1

    .line 214
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 217
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    nop

    .line 218
    :goto_1
    return-object v0
.end method

.method private parsePageInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    return-object v1

    .line 184
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 186
    .local v2, "data":Lorg/json/JSONObject;
    const-string v3, "$title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->createPageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 187
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 190
    .end local v0    # "e":Lorg/json/JSONException;
    return-object v1
.end method

.method private parseResult(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v1, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$WebNodeRect;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 152
    .local v3, "data":Lorg/json/JSONArray;
    const-string v4, "extra_elements"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 153
    .local v4, "extra":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 154
    invoke-direct {p0, v3, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->findWebNodes(Lorg/json/JSONArray;Ljava/util/List;Ljava/util/Map;)V

    .line 156
    :cond_1
    if-eqz v4, :cond_2

    .line 157
    invoke-direct {p0, v4, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->findWebNodes(Lorg/json/JSONArray;Ljava/util/List;Ljava/util/Map;)V

    .line 159
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 160
    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->modifyWebNodes(Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :cond_3
    :try_start_1
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$1;

    invoke-direct {v5, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v5

    .line 170
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "data":Lorg/json/JSONArray;
    .end local v4    # "extra":Lorg/json/JSONArray;
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 174
    :catch_1
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 172
    :catch_2
    move-exception v2

    .line 173
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 176
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    nop

    .line 177
    :goto_1
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mLastWebNodeMsg:Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mHasH5AlertInfo:Z

    .line 352
    return-void
.end method

.method getLastWebNodeMsg()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mLastWebNodeMsg:Ljava/lang/String;

    return-object v0
.end method

.method getWebNodes(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .locals 3
    .param p1, "webViewUrl"    # Ljava/lang/String;

    .line 315
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    return-object v1

    .line 318
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    .line 319
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sWebNodesCache:Landroid/util/LruCache;

    if-nez v0, :cond_1

    .line 320
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sWebNodesCache:Landroid/util/LruCache;

    .line 322
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sWebNodesCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    return-object v0

    .line 324
    :cond_2
    return-object v1
.end method

.method getWebPageInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    .locals 3
    .param p1, "webViewUrl"    # Ljava/lang/String;

    .line 328
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    return-object v1

    .line 331
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    .line 332
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    if-nez v0, :cond_1

    .line 333
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    .line 335
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    return-object v0

    .line 337
    :cond_2
    return-object v1
.end method

.method handlerFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "webViewUrl"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 122
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->removeCallbacksAndMessages()V

    .line 123
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    return-void

    .line 129
    :cond_1
    const-string v0, "SA.Visual.WebNodesManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerFailure url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mHasH5AlertInfo:Z

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mLastWebNodeMsg:Ljava/lang/String;

    .line 132
    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->parseAlertResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_3

    .line 134
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sWebNodesCache:Landroid/util/LruCache;

    if-nez v1, :cond_2

    .line 135
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sWebNodesCache:Landroid/util/LruCache;

    .line 137
    :cond_2
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sWebNodesCache:Landroid/util/LruCache;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->createWebAlertInfo(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo$AlertInfo;>;"
    :cond_3
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method handlerMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/util/Dispatcher;->removeCallbacksAndMessages()V

    .line 75
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    return-void

    .line 81
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mLastWebNodeMsg:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mHasH5AlertInfo:Z

    .line 84
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "callType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "callType":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x30bff11c

    if-eq v4, v5, :cond_3

    const v0, 0x34a9fc5e

    if-eq v4, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "page_info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "visualized_track"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v3

    :goto_1
    const/16 v3, 0xa

    const/16 v4, 0xc

    packed-switch v0, :pswitch_data_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "callType":Ljava/lang/String;
    goto :goto_2

    .line 99
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "callType":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->parsePageInfo(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    move-result-object v0

    .line 100
    .local v0, "pageInfo":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mWebViewUrl:Ljava/lang/String;

    .line 102
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_7

    .line 103
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    if-nez v4, :cond_5

    .line 104
    new-instance v4, Landroid/util/LruCache;

    invoke-direct {v4, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v4, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    .line 106
    :cond_5
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sPageInfoCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 88
    .end local v0    # "pageInfo":Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->parseResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_7

    .line 90
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sWebNodesCache:Landroid/util/LruCache;

    if-nez v4, :cond_6

    .line 91
    new-instance v4, Landroid/util/LruCache;

    invoke-direct {v4, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v4, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sWebNodesCache:Landroid/util/LruCache;

    .line 93
    :cond_6
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mWebViewUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 94
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->sWebNodesCache:Landroid/util/LruCache;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mWebViewUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;->createWebNodesInfo(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNodeInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 115
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/model/WebNode;>;"
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "callType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 117
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_7
    :goto_2
    nop

    .line 118
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hasH5AlertInfo()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mHasH5AlertInfo:Z

    return v0
.end method

.method hasWebView()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mHasWebView:Z

    return v0
.end method

.method setHasWebView(Z)V
    .locals 0
    .param p1, "hasWebView"    # Z

    .line 356
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;->mHasWebView:Z

    .line 357
    return-void
.end method
