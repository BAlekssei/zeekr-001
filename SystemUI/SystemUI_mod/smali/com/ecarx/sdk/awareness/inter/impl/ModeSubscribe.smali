.class public Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
.super Lcom/ecarx/eas/framework/sdk/common/internal/IApi;
.source "SourceFile"

# interfaces
.implements Lcom/ecarx/sdk/awareness/inter/IBinderProxy;
.implements Lcom/ecarx/sdk/awareness/inter/IModeSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ecarx/eas/framework/sdk/common/internal/IApi<",
        "Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;",
        ">;",
        "Lcom/ecarx/sdk/awareness/inter/IBinderProxy;",
        "Lcom/ecarx/sdk/awareness/inter/IModeSubscribe;"
    }
.end annotation


# static fields
.field private static final METHOD_MODE_ADJUST:Ljava/lang/String; = "mode_adjust"

.field private static final METHOD_MODE_GET:Ljava/lang/String; = "mode_get"

.field private static final METHOD_MODE_GET_CURRENT:Ljava/lang/String; = "mode_get_current"

.field private static final METHOD_MODE_GET_LIST:Ljava/lang/String; = "mode_get_list"

.field private static final METHOD_MODE_REGISTER:Ljava/lang/String; = "mode_register"

.field private static final METHOD_MODE_UNREGISTER:Ljava/lang/String; = "mode_unregister"

.field private static final MOUDLE_ADJUST:Ljava/lang/String; = "adjust"

.field private static final MOUDLE_MODE_SUBSCRIBE:Ljava/lang/String; = "mode_subscribe"

.field private static final RESULT_TRUE:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "ModeSubscribe"


# instance fields
.field private mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private observerWrapperHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ecarx/sdk/awareness/inter/ModeObserver;",
            "Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private getModeResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;
    .locals 3
    .param p1, "retMessage"    # Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    .line 57
    nop

    .line 58
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 60
    nop

    .end local p1    # "retMessage":Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    :try_start_0
    iget-object p1, p1, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mData:[B

    sget-object v0, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/ecarx/sdk/awareness/inter/util/SceneParcelUtil;->parcel([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    const-string v0, "ModeSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSceneResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
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

    .line 46
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;

    invoke-direct {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;-><init>()V

    .line 47
    nop

    .end local p1    # "param":Ljava/lang/String;
    invoke-virtual {v0, p1}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->setParam(Ljava/lang/String;)V

    .line 48
    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->getParams()Ljava/util/List;

    move-result-object p1

    .end local p2    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_0
    if-eqz p3, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/ecarx/eas/framework/sdk/smartscene/ISceneParam;->getParamMap()Ljava/util/Map;

    move-result-object p1

    .end local p3    # "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/ecarx/sdk/awareness/inter/util/SceneParcelUtil;->deparcel(Landroid/os/Parcelable;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public adjustMode(Lecarx/decision/SceneMode;)V
    .locals 7
    .param p1, "sceneMode"    # Lecarx/decision/SceneMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lecarx/decision/SceneMode;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lecarx/decision/SceneMode;->isEnabled()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 96
    :goto_1
    const-string v2, "ModeSubscribe"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adjustMode: modeId == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " open == "

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    :try_start_0
    new-instance v0, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "adjust"

    const-string v4, "mode_adjust"

    .end local p1    # "sceneMode":Lecarx/decision/SceneMode;
    invoke-static {p1}, Lcom/ecarx/sdk/awareness/inter/util/SceneParcelUtil;->deparcel(Landroid/os/Parcelable;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 105
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 106
    :catch_0
    move-exception p1

    .line 107
    const-string v0, "ModeSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 101
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    .restart local p1    # "sceneMode":Lecarx/decision/SceneMode;
    :cond_2
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "modeId is null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getCurrentMode()Lecarx/decision/SceneMode;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 238
    nop

    .line 240
    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "mode_subscribe"

    const-string v4, "mode_get_current"

    invoke-direct {p0, v0, v0, v0}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 241
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v1

    .line 242
    invoke-direct {p0, v1}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->getModeResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getSceneModeList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getSceneModeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 244
    invoke-virtual {v1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getSceneModeList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lecarx/decision/SceneMode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    move-object v0, v1

    :cond_0
    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    const-string v2, "ModeSubscribe"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    if-nez v0, :cond_1

    .line 250
    const-string v1, "ModeSubscribe"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getModeById:sceneMode == null"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    return-object v0
.end method

.method public getModeById(Ljava/lang/String;)Lecarx/decision/SceneMode;
    .locals 8
    .param p1, "modeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    nop

    .line 199
    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "mode_subscribe"

    const-string v4, "mode_get"

    .end local p1    # "modeId":Ljava/lang/String;
    invoke-direct {p0, p1, v0, v0}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 200
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 201
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->getModeResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;

    move-result-object p1

    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getSceneModeList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getSceneModeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 203
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getSceneModeList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lecarx/decision/SceneMode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    move-object v0, p1

    :cond_0
    goto :goto_0

    .line 205
    :catch_0
    move-exception p1

    .line 206
    const-string v1, "ModeSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    if-nez v0, :cond_1

    .line 209
    const-string p1, "ModeSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getModeById:sceneMode == null"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    return-object v0

    .line 195
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    .restart local p1    # "modeId":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "modeId is empty !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getModeByIdList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lecarx/decision/SceneMode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 216
    .local p1, "modeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    :try_start_0
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "mode_subscribe"

    const-string v4, "mode_get_list"

    .end local p1    # "modeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v1}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->getParam(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 222
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mService:Landroid/os/IInterface;

    check-cast p1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {p1, v7}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsg(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 223
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->getModeResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;

    move-result-object p1

    .line 224
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getSceneModeList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getSceneModeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getSceneModeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    goto :goto_0

    .line 227
    :catch_0
    move-exception p1

    .line 228
    const-string v1, "ModeSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 231
    const-string p1, "ModeSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getModeByIdList:sceneModeList empty!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    return-object v0

    .line 217
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    .restart local p1    # "modeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "modeIdList is empty !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public isReady()Z
    .locals 4

    .line 85
    const-string v0, "ModeSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isReady:mSceneAliveFlag == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v0, "ModeSubscribe"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isReady:isAlive == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    const-string v1, "ModeSubscribe"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isReady:res == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v0
.end method

.method protected onBinderDied()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/ecarx/eas/framework/sdk/common/internal/IApi;->onBinderDied()V

    .line 80
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    return-void
.end method

.method public setAlive(Z)V
    .locals 1
    .param p1, "alive"    # Z

    .line 70
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mSceneAliveFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    nop

    .end local p1    # "alive":Z
    if-nez p1, :cond_0

    .line 73
    nop

    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    iget-object p1, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 75
    :cond_0
    return-void
.end method

.method public subscribeMode(Lcom/ecarx/sdk/awareness/inter/ModeObserver;)Z
    .locals 9
    .param p1, "observer"    # Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_3

    .line 116
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    nop

    .line 122
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, p1}, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;-><init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/ModeObserver;)V

    .line 123
    new-instance v2, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v4, "awareness"

    const-string v5, "mode_subscribe"

    const-string v6, "mode_register"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 124
    iget-object v3, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mService:Landroid/os/IInterface;

    check-cast v3, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v3, v2, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v2

    .line 125
    invoke-direct {p0, v2}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->getModeResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_0

    .line 127
    const-string v3, "1"

    invoke-virtual {v2}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 129
    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 130
    iget-object v3, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    .line 130
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local p1    # "observer":Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    :cond_1
    nop

    .line 136
    move v0, v2

    goto :goto_1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    const-string v1, "ModeSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    nop

    .line 136
    :goto_1
    return v0

    .line 117
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    .restart local p1    # "observer":Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subscribeMode:ModeObserver observer added already, remove it first please! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3ea

    const-string v2, "ModeObserver observer added already, remove it first please! "

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "modeIdList observer is null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public subscribeMode(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/ModeObserver;)Z
    .locals 8
    .param p2, "observer"    # Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ecarx/sdk/awareness/inter/ModeObserver;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 141
    .local p1, "modeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e9

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    if-eqz p2, :cond_3

    .line 147
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    nop

    .line 153
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;

    .line 153
    .end local p1    # "modeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1, p1, p2}, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;-><init>(Ljava/util/List;Lcom/ecarx/sdk/awareness/inter/ModeObserver;)V

    .line 154
    new-instance p1, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v3, "awareness"

    const-string v4, "mode_subscribe"

    const-string v5, "mode_register"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 155
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mService:Landroid/os/IInterface;

    check-cast v2, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v2, p1, v1}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object p1

    .line 156
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->getModeResult(Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;)Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;

    move-result-object p1

    .line 157
    if-eqz p1, :cond_0

    .line 158
    const-string v2, "1"

    invoke-virtual {p1}, Lcom/ecarx/eas/framework/sdk/smartscene/IModeResult;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_0

    .line 160
    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 161
    iget-object v2, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    .line 161
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local p2    # "observer":Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    :cond_1
    goto :goto_1

    .line 163
    :catch_0
    move-exception p1

    .line 164
    const-string p2, "ModeSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    nop

    .line 167
    move p1, v0

    :goto_1
    return p1

    .line 148
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    .restart local p1    # "modeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "observer":Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subscribeMode:ModeObserver observer added already, remove it first please! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3ea

    const-string v2, "ModeObserver observer added already, remove it first please! "

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 145
    :cond_3
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const-string v2, "SceneObserver observer is null !"

    invoke-direct {v1, v0, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 142
    :cond_4
    new-instance v1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const-string v2, "modeIdList is empty !"

    invoke-direct {v1, v0, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public unsubscribeMode(Lcom/ecarx/sdk/awareness/inter/ModeObserver;)V
    .locals 8
    .param p1, "observer"    # Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_2

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/sdk/awareness/inter/impl/ModeObserverWrapper;

    .line 178
    if-eqz v0, :cond_1

    .line 179
    new-instance v7, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;

    const-string v2, "awareness"

    const-string v3, "mode_subscribe"

    const-string v4, "mode_unregister"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 180
    iget-object v1, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;

    invoke-static {v1, v7, v0}, Lcom/ecarx/eas/framework/sdk/common/internal/MsgAPI;->sendMsgAndBinder(Lcom/ecarx/eas/framework/sdk/common/internal/IEASFrameworkService;Lcom/ecarx/sdk/openapi/msg/EASFrameworkMessage;Landroid/os/IBinder;)Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/ecarx/sdk/openapi/msg/SupportServiceRetMessage;->mCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 182
    nop

    .line 182
    .end local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    iget-object v0, p0, Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;->observerWrapperHashMap:Ljava/util/HashMap;

    .line 182
    .end local p1    # "observer":Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    goto :goto_0

    .line 185
    :cond_1
    new-instance p1, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v0, 0x3eb

    const-string v1, "ModeObserver observer is not contain !"

    invoke-direct {p1, v0, v1}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :catch_0
    move-exception p1

    .line 188
    const-string v0, "ModeSubscribe"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 173
    .restart local p0    # "this":Lcom/ecarx/sdk/awareness/inter/impl/ModeSubscribe;
    .restart local p1    # "observer":Lcom/ecarx/sdk/awareness/inter/ModeObserver;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsubscribeMode:observer null !"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeSubscribe"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;

    const/16 v1, 0x3e9

    const-string v2, "observer null !"

    invoke-direct {v0, v1, v2}, Lcom/ecarx/eas/framework/sdk/common/exception/EASFrameworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
