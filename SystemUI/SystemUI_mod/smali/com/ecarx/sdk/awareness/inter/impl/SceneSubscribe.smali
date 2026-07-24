.class public Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
.super Lcom/ecarx/eas/framework/sdk/common/internal/IApi;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/sdk/awareness/inter/IBinderProxy;
.implements Lcom/ecarx/sdk/awareness/inter/ISceneSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ecarx/eas/framework/sdk/common/internal/IApi<",
        "Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;",
        ">;",
        "Lcom/ecarx/sdk/awareness/inter/IBinderProxy;",
        "Lcom/ecarx/sdk/awareness/inter/ISceneSubscribe;"
    }
.end annotation


# static fields
.field private static final METHOD_CONTEXT_GET:Ljava/lang/String; = "context_get"

.field private static final METHOD_CONTEXT_GET_LIST:Ljava/lang/String; = "context_get_list"

.field private static final METHOD_CONTEXT_REGISTER:Ljava/lang/String; = "context_register"

.field private static final METHOD_CONTEXT_UNREGISTER:Ljava/lang/String; = "context_unregister"

.field private static final METHOD_DATA_EVENT_SEND:Ljava/lang/String; = "data_event_send"

.field private static final METHOD_DATA_GET_KEY_LIST:Ljava/lang/String; = "data_get_key_list"

.field private static final METHOD_DATA_KEY_REGISTER:Ljava/lang/String; = "data_key_register"

.field private static final METHOD_DATA_KEY_UNREGISTER:Ljava/lang/String; = "data_key_unregister"

.field private static final METHOD_EVENT_GET:Ljava/lang/String; = "event_get"

.field private static final METHOD_EVENT_GET_LIST:Ljava/lang/String; = "event_get_list"

.field private static final METHOD_EVENT_REGISTER:Ljava/lang/String; = "event_register"

.field private static final METHOD_EVENT_UNREGISTER:Ljava/lang/String; = "event_unregister"

.field private static final METHOD_SCENE_ADJUST:Ljava/lang/String; = "scene_adjust"

.field private static final METHOD_SCENE_GET:Ljava/lang/String; = "scene_get"

.field private static final METHOD_SCENE_GET_LIST:Ljava/lang/String; = "scene_get_list"

.field private static final METHOD_SCENE_REGISTER:Ljava/lang/String; = "scene_register"

.field private static final METHOD_SCENE_TRANSFER:Ljava/lang/String; = "scene_transfer"

.field private static final METHOD_SCENE_UNREGISTER:Ljava/lang/String; = "scene_unregister"

.field private static final MODULE_DATA_CONTROL:Ljava/lang/String; = "data_control"

.field private static final MOUDLE_ADJUST:Ljava/lang/String; = "adjust"

.field private static final MOUDLE_CONTEXT_SUBSCRIBE:Ljava/lang/String; = "context_subscribe"

.field private static final MOUDLE_SCENE_SUBSCRIBE:Ljava/lang/String; = "scene_subscribe"

.field private static final RESULT_TRUE:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "SceneSubscribe"


# instance fields
.field private contextHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ecarx/sdk/awareness/inter/ContextObserver;",
            "Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private dataKeyHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ecarx/datacenter/CareKeyChangedListener;",
            "Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private listenerWrapperHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ecarx/sdk/awareness/inter/SceneObserver;",
            "Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private observerWrapperHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;",
            "Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->listenerWrapperHashMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->contextHashMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->dataKeyHashMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private getContextResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
    .locals 3
    .param p1, "retMessage"    # Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    .line 82
    nop

    .line 83
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 85
    nop

    .end local p1    # "retMessage":Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    :try_start_0
    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v0, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/ecarx/sdk/awareness/inter/util/SceneParcelUtil;->parcel([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    const-string v0, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSceneResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getDataKeyResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
    .locals 3
    .param p1, "retMessage"    # Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    .line 530
    nop

    .line 531
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 533
    nop

    .end local p1    # "retMessage":Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    :try_start_0
    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v0, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/ecarx/sdk/awareness/inter/util/SceneParcelUtil;->parcel([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    goto :goto_0

    .line 534
    :catch_0
    move-exception p1

    .line 535
    const-string v0, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDataKeyResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 277
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;-><init>()V

    .line 278
    nop

    .end local p1    # "param":Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->setParam(Ljava/lang/String;)V

    .line 279
    if-eqz p2, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->getParams()Ljava/util/List;

    move-result-object p1

    .end local p2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    :cond_0
    if-eqz p3, :cond_1

    .line 283
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->getParamMap()Ljava/util/Map;

    move-result-object p1

    .end local p3    # "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 285
    :cond_1
    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/util/SceneParcelUtil;->deparcel(Landroid/os/Parcelable;)[B

    move-result-object p1

    return-object p1
.end method

.method private getSceneResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;
    .locals 3
    .param p1, "retMessage"    # Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    .line 71
    nop

    .line 72
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 74
    nop

    .end local p1    # "retMessage":Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    :try_start_0
    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/ecarx/sdk/awareness/inter/util/SceneParcelUtil;->parcel([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    const-string v0, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSceneResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public adjustScene(Lecarx/decision/PatternState;)V
    .locals 7
    .param p1, "patternState"    # Lecarx/decision/PatternState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lecarx/decision/PatternState;->getPatternType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lecarx/decision/PatternState;->isEnabled()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 142
    :goto_1
    const-string v2, "SceneSubscribe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adjustScene: patternKey == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " open == "

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    :try_start_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "adjust"

    const-string/jumbo v4, "scene_adjust"

    .line 150
    .end local p1    # "patternState":Lecarx/decision/PatternState;
    invoke-static {p1}, Lcom/ecarx/sdk/awareness/inter/util/SceneParcelUtil;->deparcel(Landroid/os/Parcelable;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 151
    nop

    .line 151
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-void

    .line 152
    :catch_0
    move-exception p1

    .line 153
    const-string v0, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 147
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "patternState":Lecarx/decision/PatternState;
    :cond_2
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "patternKey is null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getCareKeyList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 513
    const-string v0, "SceneSubscribe"

    const-string v1, "getCareKeyList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 516
    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "data_control"

    const-string v4, "data_get_key_list"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 518
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v1

    .line 519
    invoke-direct {p0, v1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getDataKeyResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;

    move-result-object v1

    .line 520
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->getCareKeyList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->getCareKeyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 521
    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/smartscene/IDataKeyResult;->getCareKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :cond_0
    goto :goto_0

    .line 523
    :catch_0
    move-exception v1

    .line 524
    const-string v2, "SceneSubscribe"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    return-object v0
.end method

.method public getContextById(Ljava/lang/String;)Lecarx/decision/BasicContext;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 456
    const-string v0, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getContextById:id == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    nop

    .line 462
    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "context_subscribe"

    const-string v4, "context_get"

    .end local p1    # "id":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v0}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 463
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 464
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getContextResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;

    move-result-object p1

    .line 465
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->getBasicContextList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->getBasicContextList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 466
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->getBasicContextList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecarx/decision/BasicContext;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    move-object v0, p1

    :cond_0
    goto :goto_0

    .line 468
    :catch_0
    move-exception p1

    .line 469
    const-string v1, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    if-nez v0, :cond_1

    .line 472
    const-string p1, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getContextById:basicContext == null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    return-object v0

    .line 458
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "id":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "id is empty !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getContextByIdList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lecarx/decision/BasicContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 479
    .local p1, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getContextByIdList:idList == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "context_subscribe"

    const-string v4, "context_get_list"

    .end local p1    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 486
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 487
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getContextResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;

    move-result-object p1

    .line 488
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->getBasicContextList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->getBasicContextList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->getBasicContextList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    goto :goto_0

    .line 491
    :catch_0
    move-exception p1

    .line 492
    const-string v1, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    return-object v0

    .line 481
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "idList is empty !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getEvent(Ljava/lang/String;)Lecarx/decision/PatternEvent;
    .locals 8
    .param p1, "eventKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 363
    const-string v0, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEvent:eventKey == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    nop

    .line 369
    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string/jumbo v3, "scene_subscribe"

    const-string v4, "event_get"

    .line 369
    .end local p1    # "eventKey":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v0}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 370
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 371
    nop

    .line 371
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getSceneResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;

    move-result-object p1

    .line 372
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternEventList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternEventList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternEventList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecarx/decision/PatternEvent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    move-object v0, p1

    :cond_0
    goto :goto_0

    .line 375
    :catch_0
    move-exception p1

    .line 376
    const-string v1, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-object v0

    .line 365
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "eventKey":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "eventKey is empty !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getEventList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lecarx/decision/PatternEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 383
    .local p1, "eventKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEventList:eventKeyList == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string/jumbo v3, "scene_subscribe"

    const-string v4, "event_get_list"

    .line 389
    .end local p1    # "eventKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 390
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 391
    nop

    .line 391
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getSceneResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;

    move-result-object p1

    .line 392
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternEventList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternEventList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 393
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternEventList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    goto :goto_0

    .line 395
    :catch_0
    move-exception p1

    .line 396
    const-string v1, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-object v0

    .line 385
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "eventKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "eventKeyList is empty !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getScene(Ljava/lang/String;)Lecarx/decision/PatternState;
    .locals 8
    .param p1, "patternKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    nop

    .line 261
    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string/jumbo v3, "scene_subscribe"

    const-string/jumbo v4, "scene_get"

    .line 261
    .end local p1    # "patternKey":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v0}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 262
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 263
    nop

    .line 263
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getSceneResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;

    move-result-object p1

    .line 264
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternStateList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternStateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternStateList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecarx/decision/PatternState;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    move-object v0, p1

    :cond_0
    goto :goto_0

    .line 267
    :catch_0
    move-exception p1

    .line 268
    const-string v1, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    if-nez v0, :cond_1

    .line 271
    const-string p1, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getScene:patternState == null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    return-object v0

    .line 257
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "patternKey":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "patternKey is empty !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getSceneAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lecarx/decision/PatternState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string/jumbo v3, "scene_subscribe"

    const-string/jumbo v4, "scene_get_list"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-direct {p0, v5, v1, v5}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 162
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v1

    .line 163
    invoke-direct {p0, v1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getSceneResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternStateList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternStateList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternStateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    const-string v2, "SceneSubscribe"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-object v0
.end method

.method public getSceneList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lecarx/decision/PatternState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 289
    .local p1, "patternKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string/jumbo v3, "scene_subscribe"

    const-string/jumbo v4, "scene_get_list"

    .line 294
    .end local p1    # "patternKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 295
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 296
    nop

    .line 296
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getSceneResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;

    move-result-object p1

    .line 297
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternStateList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternStateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getPatternStateList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    goto :goto_0

    .line 300
    :catch_0
    move-exception p1

    .line 301
    const-string v1, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return-object v0

    .line 290
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "patternKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "patternKeyList is empty !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public isReady()Z
    .locals 4

    .line 112
    const-string v0, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isReady:mSceneAliveFlag == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "SceneSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isReady:isAlive == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    const-string v1, "SceneSubscribe"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isReady:res == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v0
.end method

.method protected onBinderDied()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->onBinderDied()V

    .line 106
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 107
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->listenerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 108
    return-void
.end method

.method public registerCareKeyChangedList(Lcom/ecarx/datacenter/CareKeyChangedListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/ecarx/datacenter/CareKeyChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 543
    if-eqz p1, :cond_2

    .line 546
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->dataKeyHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    :try_start_0
    new-instance v0, Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;

    invoke-direct {v0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;-><init>(Lcom/ecarx/datacenter/CareKeyChangedListener;)V

    .line 552
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "data_control"

    const-string v4, "data_key_register"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 554
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v7, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v1

    .line 555
    if-eqz v1, :cond_0

    iget v1, v1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 556
    nop

    .line 556
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->dataKeyHashMap:Ljava/util/HashMap;

    .line 556
    .end local p1    # "listener":Lcom/ecarx/datacenter/CareKeyChangedListener;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :cond_0
    return-void

    .line 558
    :catch_0
    move-exception p1

    .line 559
    const-string v0, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 547
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "listener":Lcom/ecarx/datacenter/CareKeyChangedListener;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerCareKeyChangedList:CareKeyChangedListener listener added already, remove it first please! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3ea

    const-string v2, "CareKeyChangedListener listener added already, remove it first please!"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 544
    :cond_2
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "CareKeyChangedListener listener is null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public setAlive(Z)V
    .locals 1
    .param p1, "alive"    # Z

    .line 95
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    nop

    .end local p1    # "alive":Z
    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 99
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->listenerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 101
    :cond_0
    return-void
.end method

.method public subscribeContext(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/ContextObserver;)Z
    .locals 8
    .param p2, "observer"    # Lcom/ecarx/sdk/awareness/inter/ContextObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ecarx/sdk/awareness/inter/ContextObserver;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 403
    .local p1, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e9

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    if-eqz p2, :cond_3

    .line 409
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->contextHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    nop

    .line 415
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;

    .line 415
    .end local p1    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1, p1, p2}, Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;-><init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/ContextObserver;)V

    .line 416
    new-instance p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v3, "awareness"

    const-string v4, "context_subscribe"

    const-string v5, "context_register"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 417
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, p1, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 418
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getContextResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;

    move-result-object p1

    .line 419
    if-eqz p1, :cond_0

    .line 420
    const-string v2, "1"

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IContextResult;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_0

    .line 422
    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 423
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->contextHashMap:Ljava/util/HashMap;

    .line 423
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local p2    # "observer":Lcom/ecarx/sdk/awareness/inter/ContextObserver;
    :cond_1
    goto :goto_1

    .line 425
    :catch_0
    move-exception p1

    .line 426
    const-string p2, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    nop

    .line 429
    move p1, v0

    :goto_1
    return p1

    .line 410
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "observer":Lcom/ecarx/sdk/awareness/inter/ContextObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subscribeScene:ContextObserver observer added already, remove it first please! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3ea

    const-string v2, "ContextObserver observer added already, remove it first please!"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 407
    :cond_3
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const-string v2, "ContextObserver observer is null !"

    invoke-direct {v1, v0, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 404
    :cond_4
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const-string v2, "idList is empty !"

    invoke-direct {v1, v0, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public subscribeEvent(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;)Z
    .locals 8
    .param p2, "observer"    # Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 308
    .local p1, "eventKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e9

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 312
    if-eqz p2, :cond_3

    .line 316
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    nop

    .line 322
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;

    .line 322
    .end local p1    # "eventKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1, p1, p2}, Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;-><init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;)V

    .line 323
    new-instance p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v3, "awareness"

    const-string/jumbo v4, "scene_subscribe"

    const-string v5, "event_register"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 324
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, p1, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 325
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getSceneResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;

    move-result-object p1

    .line 326
    if-eqz p1, :cond_0

    .line 327
    const-string v2, "1"

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_0

    .line 329
    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 330
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    .line 330
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local p2    # "observer":Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;
    :cond_1
    goto :goto_1

    .line 332
    :catch_0
    move-exception p1

    .line 333
    const-string p2, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    nop

    .line 336
    move p1, v0

    :goto_1
    return p1

    .line 317
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "eventKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "observer":Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subscribeEvent:observer added already, remove it first please! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3ea

    const-string v2, "DUPLICATE! Observer added already, remove it first please! !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 313
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "subscribeEvent:observer null !"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SceneSubscribe"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const-string v2, "observer null !"

    invoke-direct {v1, v0, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 309
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "subscribeEvent:eventKeyList is empty !"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SceneSubscribe"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const-string v2, "eventKeyList is empty !"

    invoke-direct {v1, v0, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public subscribeScene(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/SceneObserver;)Z
    .locals 8
    .param p2, "listener"    # Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ecarx/sdk/awareness/inter/SceneObserver;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 203
    .local p1, "patternKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e9

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    if-eqz p2, :cond_3

    .line 209
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->listenerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    nop

    .line 215
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;

    .line 215
    .end local p1    # "patternKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1, p1, p2}, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;-><init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/SceneObserver;)V

    .line 216
    new-instance p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v3, "awareness"

    const-string/jumbo v4, "scene_subscribe"

    const-string/jumbo v5, "scene_register"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 217
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, p1, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 218
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getSceneResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;

    move-result-object p1

    .line 219
    if-eqz p1, :cond_0

    .line 220
    const-string v2, "1"

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_0

    .line 222
    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 223
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->listenerWrapperHashMap:Ljava/util/HashMap;

    .line 223
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local p2    # "listener":Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    :cond_1
    goto :goto_1

    .line 225
    :catch_0
    move-exception p1

    .line 226
    const-string p2, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    nop

    .line 229
    move p1, v0

    :goto_1
    return p1

    .line 210
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "patternKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "listener":Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subscribeScene:SceneObserver listener added already, remove it first please! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3ea

    const-string v2, "SceneObserver listener added already, remove it first please!"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 207
    :cond_3
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const-string v2, "SceneObserver listener is null !"

    invoke-direct {v1, v0, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 204
    :cond_4
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const-string v2, "patternKeyList is empty !"

    invoke-direct {v1, v0, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public subscribeSceneAll(Lcom/ecarx/sdk/awareness/inter/SceneObserver;)Z
    .locals 9
    .param p1, "listener"    # Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 175
    if-eqz p1, :cond_3

    .line 178
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->listenerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    nop

    .line 184
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, p1}, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;-><init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/SceneObserver;)V

    .line 185
    new-instance v2, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v4, "awareness"

    const-string/jumbo v5, "scene_subscribe"

    const-string/jumbo v6, "scene_register"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 186
    iget-object v3, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v3, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v3, v2, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 187
    invoke-direct {p0, v2}, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->getSceneResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_0

    .line 189
    const-string v3, "1"

    invoke-virtual {v2}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 191
    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 192
    iget-object v3, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->listenerWrapperHashMap:Ljava/util/HashMap;

    .line 192
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local p1    # "listener":Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    :cond_1
    nop

    .line 198
    move v0, v2

    goto :goto_1

    .line 194
    :catch_0
    move-exception p1

    .line 195
    const-string v1, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    nop

    .line 198
    :goto_1
    return v0

    .line 179
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "listener":Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subscribeScene:SceneObserver listener added already, remove it first please! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3ea

    const-string v2, "SceneObserver listener added already, remove it first please!"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 176
    :cond_3
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "SceneObserver listener is null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public transferDataEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "dataEventJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 499
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    :try_start_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "data_control"

    const-string v4, "data_event_send"

    .line 504
    .end local p1    # "dataEventJson":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 505
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    return-void

    .line 506
    :catch_0
    move-exception p1

    .line 507
    const-string v0, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void

    .line 500
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "dataEventJson":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "dataEventJson is null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public transferScene(Lecarx/decision/PatternState;)V
    .locals 7
    .param p1, "patternState"    # Lecarx/decision/PatternState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lecarx/decision/PatternState;->getPatternType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lecarx/decision/PatternState;->isEnabled()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 123
    :goto_1
    const-string v2, "SceneSubscribe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "transferScene: patternKey == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " open == "

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    :try_start_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "adjust"

    const-string/jumbo v4, "scene_transfer"

    .line 131
    .end local p1    # "patternState":Lecarx/decision/PatternState;
    invoke-static {p1}, Lcom/ecarx/sdk/awareness/inter/util/SceneParcelUtil;->deparcel(Landroid/os/Parcelable;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 132
    nop

    .line 132
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 133
    :catch_0
    move-exception p1

    .line 134
    const-string v0, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 128
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "patternState":Lecarx/decision/PatternState;
    :cond_2
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "patternKey is null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public unregisterCareKeyChangedList(Lcom/ecarx/datacenter/CareKeyChangedListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/ecarx/datacenter/CareKeyChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 565
    if-eqz p1, :cond_2

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->dataKeyHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/sdk/awareness/inter/impl/CareKeyChangedListenerWrapper;

    .line 571
    if-eqz v0, :cond_1

    .line 572
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "data_control"

    const-string v4, "data_key_unregister"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 573
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v7, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 575
    nop

    .line 575
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->dataKeyHashMap:Ljava/util/HashMap;

    .line 575
    .end local p1    # "listener":Lcom/ecarx/datacenter/CareKeyChangedListener;
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_0
    goto :goto_0

    .line 578
    :cond_1
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v0, 0x3eb

    const-string v1, "ContextObserver observer is not contain !"

    invoke-direct {p1, v0, v1}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :catch_0
    move-exception p1

    .line 581
    const-string v0, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_0
    return-void

    .line 566
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "listener":Lcom/ecarx/datacenter/CareKeyChangedListener;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterCareKeyChangedList:listener null !"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "listener null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public unsubscribeContext(Lcom/ecarx/sdk/awareness/inter/ContextObserver;)V
    .locals 8
    .param p1, "observer"    # Lcom/ecarx/sdk/awareness/inter/ContextObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 434
    if-eqz p1, :cond_2

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->contextHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/sdk/awareness/inter/impl/ContextObserverWrapper;

    .line 440
    if-eqz v0, :cond_1

    .line 441
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "context_subscribe"

    const-string v4, "context_unregister"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 442
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v7, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 444
    nop

    .line 444
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->contextHashMap:Ljava/util/HashMap;

    .line 444
    .end local p1    # "observer":Lcom/ecarx/sdk/awareness/inter/ContextObserver;
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_0
    goto :goto_0

    .line 447
    :cond_1
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v0, 0x3eb

    const-string v1, "ContextObserver observer is not contain !"

    invoke-direct {p1, v0, v1}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :catch_0
    move-exception p1

    .line 450
    const-string v0, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_0
    return-void

    .line 435
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "observer":Lcom/ecarx/sdk/awareness/inter/ContextObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsubscribeContext:observer null !"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "observer null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public unsubscribeEvent(Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;)V
    .locals 8
    .param p1, "observer"    # Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 341
    if-eqz p1, :cond_2

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneEventObserverWrapper;

    .line 347
    if-eqz v0, :cond_1

    .line 348
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string/jumbo v3, "scene_subscribe"

    const-string v4, "event_unregister"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 349
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v7, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 351
    nop

    .line 351
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    .line 351
    .end local p1    # "observer":Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_0
    goto :goto_0

    .line 354
    :cond_1
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v0, 0x3eb

    const-string v1, "SceneEventObserver observer is not contain !"

    invoke-direct {p1, v0, v1}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :catch_0
    move-exception p1

    .line 357
    const-string v0, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 342
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "observer":Lcom/ecarx/sdk/awareness/inter/SceneEventObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsubscribeEvent:observer null !"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "observer is null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public unsubscribeScene(Lcom/ecarx/sdk/awareness/inter/SceneObserver;)V
    .locals 8
    .param p1, "listener"    # Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 234
    if-eqz p1, :cond_2

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->listenerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/sdk/awareness/inter/impl/SceneObserverWrapper;

    .line 240
    if-eqz v0, :cond_1

    .line 241
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string/jumbo v3, "scene_subscribe"

    const-string/jumbo v4, "scene_unregister"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 242
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v7, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 244
    nop

    .line 244
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;->listenerWrapperHashMap:Ljava/util/HashMap;

    .line 244
    .end local p1    # "listener":Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    goto :goto_0

    .line 247
    :cond_1
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v0, 0x3eb

    const-string v1, "SceneObserver listener is not contain !"

    invoke-direct {p1, v0, v1}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :catch_0
    move-exception p1

    .line 250
    const-string v0, "SceneSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 235
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/SceneSubscribe;
    .restart local p1    # "listener":Lcom/ecarx/sdk/awareness/inter/SceneObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterPatternStateListener:listener null !"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "listener null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
