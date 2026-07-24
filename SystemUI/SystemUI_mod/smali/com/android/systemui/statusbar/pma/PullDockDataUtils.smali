.class public Lcom/android/systemui/statusbar/pma/PullDockDataUtils;
.super Ljava/lang/Object;
.source "PullDockDataUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static appDefaultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    nop

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "startPath"    # Ljava/lang/String;
    .param p1, "endPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 302
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 303
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 305
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 306
    .local v4, "bytes":[B
    const/4 v5, 0x0

    move v6, v5

    .line 307
    .local v6, "len":I
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 308
    invoke-virtual {v3, v4, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 311
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 312
    return-void
.end method

.method public static getAppDatas(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v0, "fCache":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 97
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 101
    const-string v2, "PullDockDataUtils"

    const-string v3, "getAppDatas f is dosen\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x0

    return-object v2

    .line 104
    :cond_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 106
    .local v2, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 107
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v5, "utf-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v4, "appDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v5, "pageDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    new-instance v6, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>()V

    .line 112
    .local v6, "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 113
    .local v7, "eventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    .line 114
    if-eqz v7, :cond_6

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    .line 136
    :pswitch_0
    const-string v8, "appInfo"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 137
    nop

    .line 138
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    const/4 v6, 0x0

    goto :goto_2

    .line 119
    :pswitch_1
    const-string v8, "appInfo"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 120
    new-instance v8, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>()V

    move-object v6, v8

    goto :goto_2

    .line 121
    :cond_3
    const-string v8, "label"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 122
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "label":Ljava/lang/String;
    nop

    .line 124
    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setLabel(Ljava/lang/String;)V

    .line 125
    .end local v8    # "label":Ljava/lang/String;
    goto :goto_2

    :cond_4
    const-string v8, "package_name"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 126
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "package_name":Ljava/lang/String;
    nop

    .line 128
    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setPackage_name(Ljava/lang/String;)V

    .line 129
    .end local v8    # "package_name":Ljava/lang/String;
    goto :goto_2

    :cond_5
    const-string v8, "activity"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 130
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "activity":Ljava/lang/String;
    nop

    .line 132
    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setActivity(Ljava/lang/String;)V

    .line 133
    .end local v8    # "activity":Ljava/lang/String;
    goto :goto_2

    .line 116
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    .line 117
    nop

    .line 144
    :cond_7
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_1

    .line 146
    :cond_8
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAppDefault()V
    .locals 4

    .line 252
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u7231\u5947\u827a"

    const-string v2, "com.arcvideo.car.video"

    const-string v3, "com.arcvideo.car.video.SplashActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u54d4\u54e9\u54d4\u54e9"

    const-string v2, "com.bilibili.bilithings"

    const-string v3, "com.bilibili.bilithings.splash.SplashActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u8f66\u5916\u58f0\u97f3"

    const-string v2, "com.mrbattery.exterioraudioplaydemo"

    const-string v3, "com.mrbattery.exterioraudioplaydemo.MainActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u7535\u8bdd"

    const-string v2, "com.ecarx.btphone"

    const-string v3, "com.ecarx.btphone.ui.MainActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u5730\u56fe"

    sget-object v2, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO:Ljava/lang/String;

    sget-boolean v3, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v3, :cond_0

    const-string v3, "com.autonavi.auto.remote.fill.UsbFillActivity"

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->AMAPAUTO_ACTIVITY:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u6781\u6c2a\u8d5b\u9053"

    const-string v2, "com.geely.pma.dc1e.trackmode"

    const-string v3, "com.geely.pma.dc1e.trackmode.ui.login.LoginActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u84dd\u7259\u97f3\u4e50"

    const-string v2, "com.ecarx.multimedia"

    const-string v3, "com.ecarx.multimedia.offline.BlueToothSplashActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string v1, "QQ\u97f3\u4e50"

    const-string v2, "com.zeekr.media.qq"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u6536\u97f3\u673a"

    const-string v2, "com.ecarx.multimedia"

    const-string v3, "com.ecarx.multimedia.offline.RadioSplashActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-boolean v0, Lcom/android/systemui/statusbar/pma/DockItemAdapter;->PROJECT:Z

    if-eqz v0, :cond_1

    .line 262
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u56fe\u5e93"

    const-string v2, "ecarx.gallery"

    const-string v3, "fringtech.gallery.ui.HomeActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u56fe\u5e93"

    const-string v2, "dc1e.gallery"

    const-string v3, "dc1e.gallery.ui.HomeActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :goto_1
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string v1, "USB"

    const-string v2, "com.ecarx.multimedia"

    const-string v3, "com.ecarx.multimedia.offline.USBSplashActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u6211\u7684\u6c7d\u8f66"

    const-string v2, "com.ecarx.mycar"

    const-string v3, "com.zeekrlife.myCar.view.MainActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u7528\u6237\u624b\u518c"

    const-string v2, "com.ecarx.usermanual"

    const-string v3, "com.ecarx.usermanual.activities.MainActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u7528\u6237\u4e2d\u5fc3"

    const-string v2, "ecarx.membercenter"

    const-string v3, "com.ecarx.membercenter.main.view.SplashActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u97f3\u4e50\u706f\u5149\u79c0"

    const-string v2, "com.geely.pma.lightshow"

    const-string v3, "com.geely.pma.lightshow.launch.HomeMainActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->appDefaultList:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u8bed\u97f3\u8bbe\u7f6e"

    const-string v2, "com.ecarx.magicbook"

    const-string v3, "com.ecarx.magicbook.ui.MagicActivity"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public static getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    .locals 1
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v0, "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    return-object v0
.end method

.method public static getRecentAppDatas(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "app_reccent.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v0, "fCache":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "app_reccent.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 157
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app_reccent.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "app_reccent.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/pma/PullDockDataUtils;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    const-string v2, "PullDockDataUtils"

    const-string v3, "getAppDatas f is dosen\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x0

    return-object v2

    .line 164
    :cond_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 166
    .local v2, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 167
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v5, "utf-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v4, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    new-instance v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>()V

    .line 171
    .local v5, "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 172
    .local v6, "eventType":I
    :goto_1
    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    .line 173
    if-eqz v6, :cond_7

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 194
    :pswitch_0
    const-string v7, "appInfo"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 195
    nop

    .line 196
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_3

    .line 198
    return-object v4

    .line 201
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 177
    :pswitch_1
    const-string v7, "appInfo"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 178
    new-instance v7, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;-><init>()V

    move-object v5, v7

    goto :goto_2

    .line 179
    :cond_4
    const-string v7, "label"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 180
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "label":Ljava/lang/String;
    nop

    .line 182
    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setLabel(Ljava/lang/String;)V

    .line 183
    .end local v7    # "label":Ljava/lang/String;
    goto :goto_2

    :cond_5
    const-string v7, "package_name"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 184
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "package_name":Ljava/lang/String;
    nop

    .line 186
    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setPackage_name(Ljava/lang/String;)V

    .line 187
    .end local v7    # "package_name":Ljava/lang/String;
    goto :goto_2

    :cond_6
    const-string v7, "activity"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 188
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, "activity":Ljava/lang/String;
    nop

    .line 190
    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->setActivity(Ljava/lang/String;)V

    .line 191
    .end local v7    # "activity":Ljava/lang/String;
    goto :goto_2

    .line 175
    :cond_7
    nop

    .line 205
    :cond_8
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_1

    .line 207
    :cond_9
    return-object v4

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saveAppDatas(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    .local p0, "appDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;>;"
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "app_current.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "PullDockDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveAppDatas"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 58
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 59
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "UTF-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 60
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    const-string v3, "appDatas"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 63
    .local v5, "pageData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    const-string v6, "pageDatas"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 65
    .local v7, "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    const-string v8, "appInfo"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    const-string v8, "label"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string v8, "label"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    const-string v8, "package_name"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    const-string v8, "package_name"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    const-string v8, "activity"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    const-string v8, "activity"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v8, "appInfo"

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    .end local v7    # "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    goto :goto_2

    .line 81
    :cond_1
    const-string v6, "pageDatas"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    .end local v5    # "pageData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    goto :goto_1

    .line 83
    :cond_2
    const-string v3, "appDatas"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 85
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 86
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 87
    return-void
.end method

.method public static saveRecentAppDatas(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/pma/applist/AppInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    .local p0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/pma/applist/AppInfo;>;"
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "app_reccent.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "PullDockDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveRecentAppDatas"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 221
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 222
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "UTF-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 223
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 224
    const-string v3, "appRecentDatas"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pma/applist/AppInfo;

    .line 227
    .local v5, "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    const-string v6, "appInfo"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    const-string v6, "package_name"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    const-string v6, "package_name"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const-string v6, "activity"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/pma/applist/AppInfo;->getActivity()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    const-string v6, "activity"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    const-string v6, "appInfo"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    .end local v5    # "appInfo":Lcom/android/systemui/statusbar/pma/applist/AppInfo;
    goto :goto_1

    .line 240
    :cond_1
    const-string v3, "appRecentDatas"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 242
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 244
    return-void
.end method
