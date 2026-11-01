.class public final Lcom/zeekr/mediawidget/yandex/YandexBridge;
.super Ljava/lang/Object;
.source "YandexBridge.java"

# Мост: MediaSession Яндекс Музыки -> карточка медиа лаунчера

.field public static final PKG:Ljava/lang/String; = "ru.yandex.music"
.field private static final TAG:Ljava/lang/String; = "YandexBridge"

.field private static sCb:Lcom/zeekr/mediawidget/yandex/YandexBridge$Cb;
.field private static sCtrl:Landroid/media/session/MediaController;
.field private static sCtx:Landroid/content/Context;
.field private static sHandler:Landroid/os/Handler;
.field private static sLastCover:Ljava/lang/String;
.field private static sLastKey:Ljava/lang/String;
.field private static sSeq:I
.field private static sStarted:Z
.field private static sTicking:Z

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static nz(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    if-nez p0, :cond_0
    const-string p0, ""
    :cond_0
    return-object p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    const-string v0, "YandexBridge"
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

.method private static sessionManager()Landroid/media/session/MediaSessionManager;
    .locals 2
    sget-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtx:Landroid/content/Context;
    if-nez v0, :cond_0
    const/4 v0, 0x0
    return-object v0
    :cond_0
    const-string v1, "media_session"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/media/session/MediaSessionManager;
    return-object v0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 4
    sget-boolean v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sStarted:Z
    if-eqz v0, :cond_0
    return-void
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    if-nez v0, :cond_1
    move-object v0, p0
    :cond_1
    sput-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtx:Landroid/content/Context;
    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    sput-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sHandler:Landroid/os/Handler;
    new-instance v0, Lcom/zeekr/mediawidget/yandex/YandexBridge$Cb;
    invoke-direct {v0}, Lcom/zeekr/mediawidget/yandex/YandexBridge$Cb;-><init>()V
    sput-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCb:Lcom/zeekr/mediawidget/yandex/YandexBridge$Cb;
    :try_start_0
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sessionManager()Landroid/media/session/MediaSessionManager;
    move-result-object v0
    new-instance v1, Lcom/zeekr/mediawidget/yandex/YandexBridge$Lst;
    invoke-direct {v1}, Lcom/zeekr/mediawidget/yandex/YandexBridge$Lst;-><init>()V
    const/4 v2, 0x0
    sget-object v3, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sHandler:Landroid/os/Handler;
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    :catch_0
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->log(Ljava/lang/String;)V
    :goto_0
    const/4 v0, 0x1
    sput-boolean v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sStarted:Z
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->refresh()V
    return-void
.end method

# Ищет сессию Яндекс Музыки, подписывается на неё и публикует карточку
.method public static refresh()V
    .locals 6
    const/4 v5, 0x0
    :try_start_0
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sessionManager()Landroid/media/session/MediaSessionManager;
    move-result-object v0
    if-nez v0, :cond_0
    return-void
    :cond_0
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;
    move-result-object v0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
    :goto_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :cond_found
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/media/session/MediaController;
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;
    move-result-object v2
    const-string v3, "ru.yandex.music"
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :goto_loop
    move-object v5, v1
    :cond_found
    sget-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtrl:Landroid/media/session/MediaController;
    if-eqz v5, :cond_gone
    if-eq v0, v5, :cond_same
    if-eqz v0, :cond_noold
    sget-object v1, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCb:Lcom/zeekr/mediawidget/yandex/YandexBridge$Cb;
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :cond_noold
    sput-object v5, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtrl:Landroid/media/session/MediaController;
    sget-object v1, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCb:Lcom/zeekr/mediawidget/yandex/YandexBridge$Cb;
    sget-object v2, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sHandler:Landroid/os/Handler;
    invoke-virtual {v5, v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V
    :cond_same
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->publish()V
    goto :goto_end
    :cond_gone
    if-eqz v0, :goto_end
    sget-object v1, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCb:Lcom/zeekr/mediawidget/yandex/YandexBridge$Cb;
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    const/4 v1, 0x0
    sput-object v1, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtrl:Landroid/media/session/MediaController;
    :goto_end
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    return-void
    :catch_0
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->log(Ljava/lang/String;)V
    return-void
.end method

.method private static mapStatus(I)I
    .locals 1
    const/4 v0, 0x3
    if-ne p0, v0, :cond_0
    const/4 v0, 0x1
    return v0
    :cond_0
    const/4 v0, 0x6
    if-ne p0, v0, :cond_1
    return v0
    :cond_1
    const/4 v0, 0x2
    return v0
.end method

.method private static setStatus(Lcom/zeekr/mediawidget/data/Media;I)V
    .locals 3
    :try_start_0
    const-class v0, Lcom/zeekr/mediawidget/data/Media;
    const-string v1, "playStatus"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    move-result-object v0
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    return-void
    :catch_0
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->log(Ljava/lang/String;)V
    return-void
.end method

# Media с общими полями (без названия/обложки)
.method private static newMedia(I)Lcom/zeekr/mediawidget/data/Media;
    .locals 6
    new-instance v0, Lcom/zeekr/mediawidget/data/Media;
    invoke-direct {v0}, Lcom/zeekr/mediawidget/data/Media;-><init>()V
    const-string v1, "ru.yandex.music"
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setAppPackageName(Ljava/lang/String;)V
    const-string v1, "Яндекс Музыка"
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setAppName(Ljava/lang/String;)V
    const/16 v1, 0x65
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setMediaType(I)V
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setSupportPlayNext(Z)V
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setSupportPlayPause(Z)V
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setSupportPlayPre(Z)V
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setCollectVisible(Ljava/lang/Boolean;)V
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setLyricVisible(Ljava/lang/Boolean;)V
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setModeSwitchVisible(Ljava/lang/Boolean;)V
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setPlayListVisible(Ljava/lang/Boolean;)V
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setRecommendVisible(Ljava/lang/Boolean;)V
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setHasBanners(Ljava/lang/Boolean;)V
    invoke-static {v0, p0}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->setStatus(Lcom/zeekr/mediawidget/data/Media;I)V
    # PendingIntent для открытия приложения по нажатию на карточку
    :try_start_0
    sget-object v1, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtx:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v2
    const-string v3, "ru.yandex.music"
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v2
    if-eqz v2, :cond_0
    const/4 v3, 0x0
    const v4, 0xc000000
    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    move-result-object v1
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setPendingIntent(Landroid/app/PendingIntent;)V
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setPlayerIntent(Landroid/app/PendingIntent;)V
    :cond_0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    return-object v0
.end method

.method private static saveBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6
    :try_start_0
    sget v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sSeq:I
    add-int/lit8 v1, v0, 0x1
    and-int/lit8 v1, v1, 0x3
    sput v1, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sSeq:I
    new-instance v1, Ljava/io/File;
    sget-object v2, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtx:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    move-result-object v2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "ya_cover_"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, ".png"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    new-instance v2, Ljava/io/FileOutputStream;
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v4, 0x64
    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    return-object v0
    :catch_0
    move-exception v0
    const-string v0, ""
    return-object v0
.end method

# Обложка: bitmap из метаданных (сохраняем в кэш) или URI
.method private static coverOf(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 3
    if-nez p0, :cond_0
    const-string v0, ""
    return-object v0
    :cond_0
    const-string v0, "android.media.metadata.ALBUM_ART"
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v1
    if-nez v1, :cond_bmp
    const-string v0, "android.media.metadata.ART"
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v1
    if-nez v1, :cond_bmp
    const-string v0, "android.media.metadata.DISPLAY_ICON"
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    move-result-object v1
    if-nez v1, :cond_bmp
    const-string v0, "android.media.metadata.ALBUM_ART_URI"
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :cond_uri
    const-string v0, "android.media.metadata.ART_URI"
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :cond_uri
    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-nez v1, :cond_uri
    const-string v0, ""
    return-object v0
    :cond_uri
    const-string v0, "%%"
    const-string v2, "400x400"
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v1
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "cover uri="
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->log(Ljava/lang/String;)V
    return-object v1
    :cond_bmp
    invoke-static {v1}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->saveBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    move-result-object v0
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "cover bitmap file="
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->log(Ljava/lang/String;)V
    return-object v0
.end method

.method public static publish()V
    .locals 10
    sget-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtrl:Landroid/media/session/MediaController;
    if-nez v0, :cond_0
    return-void
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;
    move-result-object v1
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;
    move-result-object v2
    const/4 v3, 0x2
    if-eqz v2, :cond_nostate
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I
    move-result v3
    :cond_nostate
    invoke-static {v3}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->mapStatus(I)I
    move-result v3
    invoke-static {v3}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->newMedia(I)Lcom/zeekr/mediawidget/data/Media;
    move-result-object v4
    const-string v5, ""
    const-string v6, ""
    if-eqz v1, :cond_nometa
    const-string v5, "android.media.metadata.TITLE"
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->nz(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string v6, "android.media.metadata.ARTIST"
    invoke-virtual {v1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-static {v6}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->nz(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    const-string v7, "android.media.metadata.DURATION"
    invoke-virtual {v1, v7}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v7
    invoke-virtual {v4, v7}, Lcom/zeekr/mediawidget/data/Media;->setDuration(Ljava/lang/Long;)V
    :cond_nometa
    invoke-virtual {v4, v5}, Lcom/zeekr/mediawidget/data/Media;->setName(Ljava/lang/String;)V
    invoke-virtual {v4, v6}, Lcom/zeekr/mediawidget/data/Media;->setSubTitle(Ljava/lang/String;)V
    # обложку пересчитываем только при смене трека или если её ещё не было
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, "|"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    sget-object v8, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sLastKey:Ljava/lang/String;
    sget-object v9, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sLastCover:Ljava/lang/String;
    if-eqz v8, :cond_newcover
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cond_newcover
    if-eqz v9, :cond_newcover
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :cond_setcover
    :cond_newcover
    invoke-static {v1}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->coverOf(Landroid/media/MediaMetadata;)Ljava/lang/String;
    move-result-object v9
    sput-object v7, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sLastKey:Ljava/lang/String;
    sput-object v9, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sLastCover:Ljava/lang/String;
    :cond_setcover
    invoke-virtual {v4, v9}, Lcom/zeekr/mediawidget/data/Media;->setCover(Ljava/lang/String;)V
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "publish status="
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v8, " title="
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, " cover="
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v7}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->log(Ljava/lang/String;)V
    sget-object v7, Lcom/zeekr/mediawidget/repository/MediaCenterRepository;->INSTANCE:Lcom/zeekr/mediawidget/repository/MediaCenterRepository;
    invoke-virtual {v7}, Lcom/zeekr/mediawidget/repository/MediaCenterRepository;->getMediaLiveData()Landroidx/lifecycle/MutableLiveData;
    move-result-object v7
    invoke-virtual {v7, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->startTick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    return-void
    :catch_0
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->log(Ljava/lang/String;)V
    return-void
.end method

.method public static startTick()V
    .locals 2
    sget-boolean v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sTicking:Z
    if-eqz v0, :cond_0
    return-void
    :cond_0
    const/4 v0, 0x1
    sput-boolean v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sTicking:Z
    sget-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sHandler:Landroid/os/Handler;
    new-instance v1, Lcom/zeekr/mediawidget/yandex/YandexBridge$Tick;
    invoke-direct {v1}, Lcom/zeekr/mediawidget/yandex/YandexBridge$Tick;-><init>()V
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

# Публикует позицию, пока играет; перезапускает себя раз в секунду
.method public static tick()V
    .locals 8
    const/4 v0, 0x0
    sput-boolean v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sTicking:Z
    sget-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtrl:Landroid/media/session/MediaController;
    if-nez v0, :cond_0
    return-void
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;
    move-result-object v0
    if-nez v0, :cond_1
    return-void
    :cond_1
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J
    move-result-wide v1
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I
    move-result v3
    const/4 v4, 0x3
    if-ne v3, v4, :cond_pub
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v4
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J
    move-result-wide v6
    sub-long/2addr v4, v6
    long-to-float v4, v4
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F
    move-result v5
    mul-float/2addr v4, v5
    float-to-long v4, v4
    add-long/2addr v1, v4
    :cond_pub
    sget-object v4, Lcom/zeekr/mediawidget/repository/MediaCenterRepository;->INSTANCE:Lcom/zeekr/mediawidget/repository/MediaCenterRepository;
    invoke-virtual {v4}, Lcom/zeekr/mediawidget/repository/MediaCenterRepository;->getProgressLiveData()Landroidx/lifecycle/MutableLiveData;
    move-result-object v4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v5
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    const/4 v4, 0x3
    if-ne v3, v4, :cond_end
    const/4 v4, 0x1
    sput-boolean v4, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sTicking:Z
    sget-object v4, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sHandler:Landroid/os/Handler;
    new-instance v5, Lcom/zeekr/mediawidget/yandex/YandexBridge$Tick;
    invoke-direct {v5}, Lcom/zeekr/mediawidget/yandex/YandexBridge$Tick;-><init>()V
    const-wide/16 v6, 0x3e8
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :cond_end
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    return-void
    :catch_0
    move-exception v0
    return-void
.end method

# Выбран пункт «Яндекс Музыка» в списке источников
.method public static onSelected(Landroid/content/Context;)V
    .locals 3
    invoke-static {p0}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->start(Landroid/content/Context;)V
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->refresh()V
    sget-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtrl:Landroid/media/session/MediaController;
    if-eqz v0, :cond_0
    return-void
    :cond_0
    # сессии ещё нет — показываем заглушку, воспроизведение запустит кнопка ▶
    const/4 v0, 0x2
    invoke-static {v0}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->newMedia(I)Lcom/zeekr/mediawidget/data/Media;
    move-result-object v0
    const-string v1, "Яндекс Музыка"
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setName(Ljava/lang/String;)V
    const-string v1, "Нажмите ▶"
    invoke-virtual {v0, v1}, Lcom/zeekr/mediawidget/data/Media;->setSubTitle(Ljava/lang/String;)V
    sget-object v1, Lcom/zeekr/mediawidget/repository/MediaCenterRepository;->INSTANCE:Lcom/zeekr/mediawidget/repository/MediaCenterRepository;
    invoke-virtual {v1}, Lcom/zeekr/mediawidget/repository/MediaCenterRepository;->getMediaLiveData()Landroidx/lifecycle/MutableLiveData;
    move-result-object v1
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V
    return-void
.end method

# Сейчас в карточке Яндекс Музыка?
.method public static isActive()Z
    .locals 2
    :try_start_0
    sget-object v0, Lcom/zeekr/mediawidget/repository/MediaCenterRepository;->INSTANCE:Lcom/zeekr/mediawidget/repository/MediaCenterRepository;
    invoke-virtual {v0}, Lcom/zeekr/mediawidget/repository/MediaCenterRepository;->getMediaLiveData()Landroidx/lifecycle/MutableLiveData;
    move-result-object v0
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lcom/zeekr/mediawidget/data/Media;
    if-nez v0, :cond_0
    const/4 v0, 0x0
    return v0
    :cond_0
    invoke-virtual {v0}, Lcom/zeekr/mediawidget/data/Media;->getAppPackageName()Ljava/lang/String;
    move-result-object v0
    const-string v1, "ru.yandex.music"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    return v0
    :catch_0
    move-exception v0
    const/4 v0, 0x0
    return v0
.end method

.method private static transport()Landroid/media/session/MediaController$TransportControls;
    .locals 1
    sget-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtrl:Landroid/media/session/MediaController;
    if-nez v0, :cond_0
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->refresh()V
    sget-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtrl:Landroid/media/session/MediaController;
    if-nez v0, :cond_0
    const/4 v0, 0x0
    return-object v0
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;
    move-result-object v0
    return-object v0
.end method

.method public static play()V
    .locals 5
    :try_start_0
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->transport()Landroid/media/session/MediaController$TransportControls;
    move-result-object v0
    if-eqz v0, :cond_nosession
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V
    return-void
    :cond_nosession
    # сессии нет: медиакнопка Play (поднимает сервис Яндекс Музыки) + запуск приложения
    sget-object v0, Lcom/zeekr/mediawidget/yandex/YandexBridge;->sCtx:Landroid/content/Context;
    const-string v1, "audio"
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/media/AudioManager;
    new-instance v2, Landroid/view/KeyEvent;
    const/4 v3, 0x0
    const/16 v4, 0x7e
    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    new-instance v2, Landroid/view/KeyEvent;
    const/4 v3, 0x1
    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v1
    const-string v2, "ru.yandex.music"
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v1
    if-eqz v1, :cond_end
    const/high16 v2, 0x10000000
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :cond_end
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    return-void
    :catch_0
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->log(Ljava/lang/String;)V
    return-void
.end method

.method public static pause()V
    .locals 1
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->transport()Landroid/media/session/MediaController$TransportControls;
    move-result-object v0
    if-eqz v0, :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V
    :cond_0
    return-void
.end method

.method public static next()V
    .locals 1
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->transport()Landroid/media/session/MediaController$TransportControls;
    move-result-object v0
    if-eqz v0, :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V
    :cond_0
    return-void
.end method

.method public static previous()V
    .locals 1
    invoke-static {}, Lcom/zeekr/mediawidget/yandex/YandexBridge;->transport()Landroid/media/session/MediaController$TransportControls;
    move-result-object v0
    if-eqz v0, :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V
    :cond_0
    return-void
.end method

# Копия списка источников без строки QQ Music: вместо неё в медиацентре есть настоящий источник Яндекс Музыка.
.method public static dropQq(Ljava/util/List;)Ljava/util/List;
    .locals 5

    if-nez p0, :cond_go

    return-object p0

    :cond_go
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_end

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/zeekr/sdk/mediacenter/bean/MediaAppInfo;

    invoke-virtual {v2}, Lcom/zeekr/sdk/mediacenter/bean/MediaAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.zeekr.media.qq"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_next

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_next
    goto :goto_loop

    :cond_end
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    return-object p0
.end method
