.class public Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;
.super Lcom/zeekr/mediacenter/mediasession/AbstractMediaBrowser;
.source "YandexBrowser.java"

# Яндекс Музыка как штатный онлайн-источник медиацентра (SOURCE_TYPE_ONLINE = 6):
# медиацентр подключается к MusicBrowserService приложения, регистрирует его как MusicClient,
# дальше трек уходит на приборку (DIM), в док/виджеты, а кнопки руля и голос управляют им.


# static fields
.field public static YANDEX:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "ru.yandex.music"

    const-string v2, "ru.yandex.music.common.media.mediabrowser.MusicBrowserService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->YANDEX:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    sget-object v0, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->YANDEX:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/zeekr/mediacenter/mediasession/AbstractMediaBrowser;-><init>(Landroid/content/ComponentName;)V

    new-instance v0, Lcom/zeekr/mediacenter/common/AppStatus;

    invoke-direct {v0}, Lcom/zeekr/mediacenter/common/AppStatus;-><init>()V

    invoke-virtual {p0}, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->getSourceType()I

    move-result v1

    iput v1, v0, Lcom/zeekr/mediacenter/common/AppStatus;->sourceType:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/zeekr/mediacenter/common/AppStatus;->connectState:I

    iget-object v1, p0, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/zeekr/mediacenter/common/AppStatus;->packageName:Ljava/lang/String;

    const-string v1, "Яндекс Музыка"

    iput-object v1, v0, Lcom/zeekr/mediacenter/common/AppStatus;->appName:Ljava/lang/String;

    const-string v1, "android.intent.action.MAIN"

    iput-object v1, v0, Lcom/zeekr/mediacenter/common/AppStatus;->launchAction:Ljava/lang/String;

    iget-object v3, v0, Lcom/zeekr/mediacenter/common/AppStatus;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/zeekr/mediacenter/common/AppStatus;->appName:Ljava/lang/String;

    iget v5, v0, Lcom/zeekr/mediacenter/common/AppStatus;->connectState:I

    iget-object v6, v0, Lcom/zeekr/mediacenter/common/AppStatus;->connectDescription:Ljava/lang/String;

    iget v7, v0, Lcom/zeekr/mediacenter/common/AppStatus;->sourceType:I

    iget v8, v0, Lcom/zeekr/mediacenter/common/AppStatus;->iconResourceId:I

    iget-object v9, v0, Lcom/zeekr/mediacenter/common/AppStatus;->launchAction:Ljava/lang/String;

    iget v10, p0, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->mState:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->updateAppStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getLaunchIntent()Landroid/app/PendingIntent;
    .locals 5

    invoke-static {}, Lcom/zeekr/mediacenter/common/SystemUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "ru.yandex.music"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4
.end method

.method public getSourceType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

# Выбор источника (лаунчер, док, голос): Яндекс не знает customAction "onSourceSelected",
# поэтому просто запускаем воспроизведение (или открываем приложение, если сессии ещё нет).
.method public onSourceSelected(I)Z
    .locals 3

    iget-object v0, p0, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->mPackageName:Ljava/lang/String;

    sput-object v0, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->curSourceSelectMedia:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->isMediaControlEmpty()Z

    move-result v0

    if-eqz v0, :cond_play

    :try_start_0
    invoke-virtual {p0}, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_end

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_end
    :goto_ret
    const/4 v0, 0x1

    return v0

    :catch_0
    goto :goto_ret

    :cond_play
    invoke-virtual {p0}, Lcom/zeekr/mediacenter/mediasession/wrappers/YandexBrowser;->play()Z

    const/4 v0, 0x1

    return v0
.end method
