.class public final Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;
.super Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientAPI;
.source "ZeekrMediaPartClientProxy.java"


# static fields
.field private static b:Lcom/zeekr/sdk/base/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zeekr/sdk/base/Singleton<",
            "Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/zeekr/sdk/mediacenter/mediapart/IMediaPartClientApiSvc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy$1;

    invoke-direct {v0}, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy$1;-><init>()V

    sput-object v0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;->b:Lcom/zeekr/sdk/base/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientAPI;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;-><init>()V

    return-void
.end method

.method public static a()Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;
    .locals 1

    .line 2
    sget-object v0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;->b:Lcom/zeekr/sdk/base/Singleton;

    invoke-virtual {v0}, Lcom/zeekr/sdk/base/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;Lcom/zeekr/sdk/mediacenter/mediapart/IMediaPartClientApiSvc;)Lcom/zeekr/sdk/mediacenter/mediapart/IMediaPartClientApiSvc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;->a:Lcom/zeekr/sdk/mediacenter/mediapart/IMediaPartClientApiSvc;

    return-object p1
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZeekrMediaPartClientProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    instance-of p1, p1, Lcom/zeekr/sdk/mediacenter/IMediaCenterClientToken;

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final reigsterBannerClick(Ljava/lang/Object;Lcom/zeekr/sdk/mediacenter/callback/BannerClickCallback;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;->a(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 5
    :try_start_0
    const-string v0, ""

    invoke-static {v0}, Lcom/zeekr/sdk/base/proto/extension/MsgSerializationUtil;->str2ByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 6
    new-instance v0, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;

    const-string v2, "mediacenter"

    const-string v3, "ZeekrMediaCenterAPI"

    const-string v4, "mediaCenterUpdateMediaPart"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 7
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    invoke-static {}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->getInstance()Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;

    move-result-object v2

    new-instance v3, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy$3;

    invoke-direct {v3, p0, v1}, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy$3;-><init>(Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v0, v3}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->asyncBinderCall(Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;Landroid/os/IBinder;)Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 16
    iget-object v0, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;->a:Lcom/zeekr/sdk/mediacenter/mediapart/IMediaPartClientApiSvc;

    check-cast p1, Lcom/zeekr/sdk/mediacenter/IMediaCenterClientToken;

    new-instance v1, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy$4;

    invoke-direct {v1, p0, p2}, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy$4;-><init>(Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;Lcom/zeekr/sdk/mediacenter/callback/BannerClickCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/zeekr/sdk/mediacenter/mediapart/IMediaPartClientApiSvc;->registerBannerClick(Lcom/zeekr/sdk/mediacenter/IMediaCenterClientToken;Lcom/zeekr/mediacenter/IBannerClickCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final updateCurrentTab(Ljava/lang/Object;I)Z
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;->a(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    invoke-static {p2}, Lcom/zeekr/sdk/base/proto/extension/MsgSerializationUtil;->int2ByteArray(I)[B

    move-result-object v4

    .line 5
    new-instance p2, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;

    const-string v1, "mediacenter"

    const-string v2, "ZeekrMediaCenterAPI"

    const-string v3, "mediaCenterUpdateCurrentTabId"

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 6
    invoke-static {}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->getInstance()Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;

    move-result-object v0

    check-cast p1, Lcom/zeekr/sdk/mediacenter/IMediaCenterClientToken;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->asyncBinderCall(Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;Landroid/os/IBinder;)Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;->mAttachInfo:[B

    invoke-static {p1}, Lcom/zeekr/sdk/base/proto/extension/MsgSerializationUtil;->byteArray2boolean([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public final updateMediaPartTabInfo(Ljava/lang/Object;Lcom/zeekr/sdk/mediacenter/bean/MediaPartTabInfoGather;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;->a(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Lcom/zeekr/sdk/mediacenter/bean/MediaPartTabInfoGather;->getMediaPartTabInfoList()Ljava/util/List;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeekr/sdk/mediacenter/MediaPartTabInfo;

    if-eqz v2, :cond_0

    .line 6
    const-string v3, "getIMediaPartTotal"

    invoke-static {v3}, Lcom/zeekr/sdk/mediacenter/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcom/zeekr/sdk/mediacenter/MediaPartTabInfo;->getTabTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaPartBeanHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v3, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartTab;

    invoke-direct {v3}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartTab;-><init>()V

    .line 9
    invoke-virtual {v2}, Lcom/zeekr/sdk/mediacenter/MediaPartTabInfo;->getTabId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartTab;->setTabId(I)V

    .line 10
    invoke-virtual {v2}, Lcom/zeekr/sdk/mediacenter/MediaPartTabInfo;->getTabTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartTab;->setTabTitle(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lcom/zeekr/sdk/mediacenter/MediaPartTabInfo;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartTab;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v2}, Lcom/zeekr/sdk/mediacenter/MediaPartTabInfo;->getMediaPartList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;

    .line 14
    new-instance v6, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;

    invoke-direct {v6}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;-><init>()V

    .line 15
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getMediaListId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->setMediaListId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getMediaListTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->setMediaListTitle(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getArtwork()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 18
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getArtwork()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->setArtwork(Landroid/net/Uri;)V

    .line 20
    :cond_1
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getDeputyArtwork()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 21
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getDeputyArtwork()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->setDeputyArtwork(Landroid/net/Uri;)V

    .line 23
    :cond_2
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 24
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 26
    :cond_3
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getMediaPartDisplayType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->setMediaListDisplayType(I)V

    .line 27
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getMediaPartDataType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->setMediaListDataType(I)V

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getMediaList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 30
    invoke-virtual {v5}, Lcom/zeekr/sdk/mediacenter/MediaPartListInfo;->getMediaList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zeekr/sdk/mediacenter/MediaPartInfo;

    .line 31
    new-instance v9, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartInfo;

    invoke-direct {v9}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartInfo;-><init>()V

    .line 32
    invoke-virtual {v6}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->getMediaListDataType()I

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v6}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->getMediaListDataType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v11, v10, :cond_6

    invoke-virtual {v6}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->getMediaListDataType()I

    move-result v10

    const/4 v11, 0x5

    if-ne v11, v10, :cond_4

    goto :goto_3

    .line 34
    :cond_4
    invoke-virtual {v6}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->getMediaListDataType()I

    move-result v10

    if-ne v1, v10, :cond_5

    .line 35
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartInfo;->getMediaPartFuncGather()Lcom/zeekr/sdk/mediacenter/MediaPartFuncGather;

    move-result-object v8

    .line 36
    new-instance v10, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartFuncGather;

    invoke-direct {v10}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartFuncGather;-><init>()V

    .line 37
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartFuncGather;->getFuncId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartFuncGather;->setFuncId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartFuncGather;->getFuncTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartFuncGather;->setFuncTitle(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartFuncGather;->getFuncIcon()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartFuncGather;->setFuncIcon(Landroid/net/Uri;)V

    .line 40
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartFuncGather;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartFuncGather;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 41
    invoke-virtual {v9, v10}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartInfo;->setMediaPartFuncGather(Lcom/zeekr/sdk/mediacenter/bean/IMediaPartFuncGather;)V

    goto/16 :goto_4

    .line 42
    :cond_5
    invoke-virtual {v6}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->getMediaListDataType()I

    move-result v10

    const/4 v11, 0x3

    if-ne v11, v10, :cond_9

    .line 43
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartInfo;->getMediaPartBannerGather()Lcom/zeekr/sdk/mediacenter/MediaPartBannerGather;

    move-result-object v8

    .line 44
    new-instance v10, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartBannerGather;

    invoke-direct {v10}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartBannerGather;-><init>()V

    .line 45
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartBannerGather;->getPic()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartBannerGather;->setPic(Landroid/net/Uri;)V

    .line 46
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartBannerGather;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartBannerGather;->setUrl(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartBannerGather;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartBannerGather;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 48
    invoke-virtual {v9, v10}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartInfo;->setMediaPartBannerGather(Lcom/zeekr/sdk/mediacenter/bean/IMediaPartBannerGather;)V

    goto/16 :goto_4

    .line 49
    :cond_6
    :goto_3
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartInfo;->getMediaPartGather()Lcom/zeekr/sdk/mediacenter/MediaPartGather;

    move-result-object v8

    .line 50
    new-instance v10, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;

    invoke-direct {v10}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;-><init>()V

    .line 51
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getUuid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->setUuid(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->setTitle(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getSourceType()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->setSourceType(I)V

    .line 54
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getSubtitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->setSubtitle(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->setDescription(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getMediaPath()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 57
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getMediaPath()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->setMediaPath(Landroid/net/Uri;)V

    .line 59
    :cond_7
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getLyricContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->setLyricContent(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getArtwork()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 61
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getArtwork()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->setArtWork(Landroid/net/Uri;)V

    .line 63
    :cond_8
    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getPlayingMediaListId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->setPlayingMediaListId(Ljava/lang/String;)V

    .line 64
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " IMedia:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;->getUuid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", info:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/zeekr/sdk/mediacenter/MediaPartGather;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "MediaPartBeanHelper"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v9, v10}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartInfo;->setMediaPartGather(Lcom/zeekr/sdk/mediacenter/bean/IMediaPartGather;)V

    .line 71
    :cond_9
    :goto_4
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 74
    :cond_a
    invoke-virtual {v6, v7}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartListInfo;->setMediaPartList(Ljava/util/List;)V

    .line 75
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 77
    :cond_b
    invoke-virtual {v3, v4}, Lcom/zeekr/sdk/mediacenter/bean/IMediaPartTab;->setMediaPartList(Ljava/util/List;)V

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    :cond_c
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 82
    :try_start_0
    const-string p2, ""

    invoke-static {p2}, Lcom/zeekr/sdk/base/proto/extension/MsgSerializationUtil;->str2ByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 83
    new-instance p2, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;

    const-string v3, "mediacenter"

    const-string v4, "ZeekrMediaCenterAPI"

    const-string v5, "mediaCenterUpdateMediaPart"

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 84
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 85
    invoke-static {}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->getInstance()Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;

    move-result-object v1

    new-instance v3, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy$2;

    invoke-direct {v3, p0, v2}, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy$2;-><init>(Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, p2, v3}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->asyncBinderCall(Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;Landroid/os/IBinder;)Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;

    .line 92
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 93
    iget-object p2, p0, Lcom/zeekr/sdk/mediacenter/impl/ZeekrMediaPartClientProxy;->a:Lcom/zeekr/sdk/mediacenter/mediapart/IMediaPartClientApiSvc;

    check-cast p1, Lcom/zeekr/sdk/mediacenter/IMediaCenterClientToken;

    invoke-interface {p2, p1, v0}, Lcom/zeekr/sdk/mediacenter/mediapart/IMediaPartClientApiSvc;->updateMediaPartTabInfo(Lcom/zeekr/sdk/mediacenter/IMediaCenterClientToken;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 95
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method
