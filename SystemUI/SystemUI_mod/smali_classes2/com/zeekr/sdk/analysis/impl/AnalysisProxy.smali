.class public final Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;
.super Lcom/zeekr/sdk/analysis/impl/AnalysisAPI;
.source "AnalysisProxy.java"


# static fields
.field public static f:Ljava/lang/String; = "AnalysisProxy 1.0.0"

.field public static g:Lcom/zeekr/sdk/base/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zeekr/sdk/base/Singleton<",
            "Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile h:Z


# instance fields
.field public volatile a:Z

.field public volatile b:Z

.field public volatile c:Lcom/zeekr/sdk/base/ApiReadyCallback;

.field public volatile d:Z

.field public e:Lcom/zeekr/sdk/analysis/bean/BaseUserInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy$1;

    invoke-direct {v0}, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy$1;-><init>()V

    sput-object v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->g:Lcom/zeekr/sdk/base/Singleton;

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/zeekr/sdk/analysis/impl/AnalysisAPI;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->a:Z

    .line 4
    iput-boolean v0, p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->b:Z

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 7

    .line 2
    iput-boolean p1, p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->b:Z

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p2, p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->a:Z

    if-nez p2, :cond_1

    .line 4
    sget-object p2, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    const-string v0, "initBaseCarInfoData "

    invoke-static {p2, v0}, Lcom/zeekr/sdk/base/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-boolean p2, p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->b:Z

    if-nez p2, :cond_0

    .line 7
    sget-object p2, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    const-string v0, "initBaseCarInfoData but not ready"

    invoke-static {p2, v0}, Lcom/zeekr/sdk/base/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;

    const-string v1, "analysis"

    const-string v2, "analysis"

    const-string v3, "registerCarInfoListener"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 11
    invoke-static {}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->getInstance()Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;

    move-result-object v0

    new-instance v1, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy$5;

    invoke-direct {v1, p0}, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy$5;-><init>(Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;)V

    invoke-virtual {v0, p2, v1}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->asyncCall(Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;Lcom/zeekr/sdk/base/internal/IZeekrPlatformCallback;)Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;

    move-result-object p2

    .line 35
    sget-object v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBaseCarInfoData retMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/zeekr/sdk/base/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 37
    sget-object v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBaseCarInfoData Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zeekr/sdk/base/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :goto_0
    sget-object p2, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    const-string v0, "initBaseUserInfoData"

    invoke-static {p2, v0}, Lcom/zeekr/sdk/base/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_1
    new-instance p2, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;

    const-string v2, "analysis"

    const-string v3, "analysis"

    const-string v4, "registerUserInfoListener"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 42
    invoke-static {}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->getInstance()Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;

    move-result-object v0

    new-instance v1, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy$6;

    invoke-direct {v1, p0}, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy$6;-><init>(Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;)V

    invoke-virtual {v0, p2, v1}, Lcom/zeekr/sdk/base/impl/ZeekrPlatformApiClient;->asyncCall(Lcom/zeekr/sdk/base/msg/ZeekrPlatformMessage;Lcom/zeekr/sdk/base/internal/IZeekrPlatformCallback;)Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;

    move-result-object p2

    .line 65
    sget-object v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBaseUserInfoData retMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/zeekr/sdk/base/msg/ZeekrPlatformRetMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/zeekr/sdk/base/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 68
    sget-object v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBaseUserInfoData Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zeekr/sdk/base/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->a:Z

    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->h:Z

    return p0
.end method

.method public static synthetic lambda$CwX1kN_FZA256r5l-ThVetMuyCg(Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->a(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;Z)V
    .locals 8

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWithCustomConfig appName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",projectName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , customConfig : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", enableLog: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p4, :cond_6

    .line 111
    const-string p4, "persist.sys.tsp_env"

    .line 112
    const-string v1, ""

    .line 113
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 115
    const-string v5, "android.os.SystemProperties"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 118
    new-array v5, v3, [Ljava/lang/Class;

    .line 119
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    .line 120
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    .line 121
    const-string v6, "get"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 123
    new-array v6, v3, [Ljava/lang/Object;

    .line 124
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v0

    .line 125
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object p4, v6, v2

    .line 126
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 127
    move-object p4, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "envType : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "EnviUtil"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    const-string v1, "development"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    move p4, v2

    goto :goto_2

    .line 132
    :cond_1
    const-string v1, "testing"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    move p4, v3

    goto :goto_2

    .line 134
    :cond_2
    const-string v1, "staging"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 p4, 0x3

    goto :goto_2

    .line 127
    :cond_3
    :goto_1
    const/4 p4, 0x4

    .line 135
    :goto_2
    invoke-static {p4}, Lcom/zeekr/sdk/analysis/f;->a(I)I

    move-result p4

    if-eqz p4, :cond_4

    if-eq p4, v2, :cond_4

    if-eq p4, v3, :cond_4

    .line 142
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://touchpoint-api.zeekrlife.com/sa?project="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    .line 143
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://touchpoint-api-test.zeekrlife.com/sa?project="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 144
    :goto_3
    sget-object p4, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWithConfigOptions  sensor init "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 146
    sget-object p4, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    const-string v1, "startWithConfigOptions  sensor init httpUrl is empty , can not init success....."

    invoke-static {p4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_5
    new-instance p4, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-direct {p4, p3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;-><init>(Ljava/lang/String;)V

    const/16 p3, 0xf

    .line 149
    invoke-virtual {p4, p3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 154
    invoke-virtual {p4, p5}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableLog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    goto :goto_4

    .line 126
    :catch_1
    move-exception p1

    .line 155
    throw p1

    .line 156
    :cond_6
    :goto_4
    invoke-static {p1, p4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->startWithConfigOptions(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V

    .line 157
    sget-object p3, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    const-string p4, " initGlobalSwitch"

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "setting_status_user_experience_improvement"

    invoke-static {p3, p4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p3

    .line 160
    sget-object p4, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " initGlobalSwitch  flag "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p3, v2, :cond_7

    .line 161
    move v0, v2

    goto :goto_5

    .line 160
    :cond_7
    nop

    .line 161
    :goto_5
    sput-boolean v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->h:Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception p3

    .line 163
    sget-object p4, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " getInt GlobalSwitch SettingNotFoundException "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "setting_status_user_experience_improvement"

    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    new-instance p5, Lcom/zeekr/sdk/analysis/a;

    invoke-direct {p5, p1}, Lcom/zeekr/sdk/analysis/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4, v2, p5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p3

    new-instance p4, Lcom/zeekr/sdk/analysis/b;

    invoke-direct {p4}, Lcom/zeekr/sdk/analysis/b;-><init>()V

    invoke-virtual {p3, p4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setTrackEventCallBack(Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;)V

    .line 180
    invoke-static {p1, p2}, Lcom/zeekr/sdk/analysis/d;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 182
    invoke-static {}, Lcom/zeekr/sdk/analysis/i;->a()Lcom/zeekr/sdk/analysis/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zeekr/sdk/analysis/i;->registerSuperProperties(Lorg/json/JSONObject;)V

    .line 184
    invoke-static {}, Lcom/zeekr/sdk/analysis/j;->a()Lcom/zeekr/sdk/analysis/j;

    move-result-object p1

    .line 185
    iget-object p1, p1, Lcom/zeekr/sdk/analysis/j;->a:Landroid/content/SharedPreferences;

    const-string p2, "base_car_info"

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 187
    invoke-virtual {p0, p1}, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->a(Ljava/lang/String;)V

    .line 188
    :cond_8
    new-instance p1, Lcom/zeekr/sdk/analysis/c;

    invoke-direct {p1, p0}, Lcom/zeekr/sdk/analysis/c;-><init>(Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;)V

    .line 205
    invoke-static {}, Lcom/zeekr/sdk/analysis/i;->a()Lcom/zeekr/sdk/analysis/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zeekr/sdk/analysis/i;->registerDynamicSuperProperties(Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBaseCarInfoSuperJson baseCarInfoJson : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BXDataPCommonUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    const-string v1, ""

    .line 83
    const-string v2, ""

    .line 84
    const-string v3, ""

    if-eqz v0, :cond_0

    .line 87
    :try_start_1
    const-string v1, "ihuid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "vin"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v3, "pcode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 91
    const-string v1, ""

    .line 92
    const-string v2, ""

    .line 93
    const-string v3, ""

    .line 97
    :cond_0
    :goto_1
    :try_start_2
    const-string v0, "ihuid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v0, "pcode"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v0, "vin"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 101
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    :goto_2
    sget-object v0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBaseCarInfo jsonObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zeekr/sdk/base/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :try_start_3
    invoke-static {}, Lcom/zeekr/sdk/analysis/l;->a()Lcom/zeekr/sdk/analysis/l;

    move-result-object v0

    const-string v1, "ihuid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zeekr/sdk/analysis/l;->identify(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 106
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    :goto_3
    invoke-static {}, Lcom/zeekr/sdk/analysis/i;->a()Lcom/zeekr/sdk/analysis/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zeekr/sdk/analysis/i;->registerSuperProperties(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;Z)V

    return-void
.end method

.method public final config(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V
    .locals 6

    .line 2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;Z)V

    return-void
.end method

.method public final getEvent()Lcom/zeekr/sdk/analysis/funs/event/interfaces/IEvent;
    .locals 2

    .line 1
    sget-object v0, Lcom/zeekr/sdk/analysis/e;->a:Lcom/zeekr/sdk/analysis/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/zeekr/sdk/analysis/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/zeekr/sdk/analysis/e;->a:Lcom/zeekr/sdk/analysis/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/zeekr/sdk/analysis/e;

    invoke-direct {v1}, Lcom/zeekr/sdk/analysis/e;-><init>()V

    sput-object v1, Lcom/zeekr/sdk/analysis/e;->a:Lcom/zeekr/sdk/analysis/e;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/zeekr/sdk/analysis/e;->a:Lcom/zeekr/sdk/analysis/e;

    return-object v0
.end method

.method public final getJS()Lcom/zeekr/sdk/analysis/funs/js/interfaces/IJs;
    .locals 2

    .line 1
    sget-object v0, Lcom/zeekr/sdk/analysis/g;->a:Lcom/zeekr/sdk/analysis/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/zeekr/sdk/analysis/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/zeekr/sdk/analysis/g;->a:Lcom/zeekr/sdk/analysis/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/zeekr/sdk/analysis/g;

    invoke-direct {v1}, Lcom/zeekr/sdk/analysis/g;-><init>()V

    sput-object v1, Lcom/zeekr/sdk/analysis/g;->a:Lcom/zeekr/sdk/analysis/g;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/zeekr/sdk/analysis/g;->a:Lcom/zeekr/sdk/analysis/g;

    return-object v0
.end method

.method public final getLocation()Lcom/zeekr/sdk/analysis/funs/location/interfaces/ILocation;
    .locals 2

    .line 1
    sget-object v0, Lcom/zeekr/sdk/analysis/h;->a:Lcom/zeekr/sdk/analysis/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/zeekr/sdk/analysis/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/zeekr/sdk/analysis/h;->a:Lcom/zeekr/sdk/analysis/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/zeekr/sdk/analysis/h;

    invoke-direct {v1}, Lcom/zeekr/sdk/analysis/h;-><init>()V

    sput-object v1, Lcom/zeekr/sdk/analysis/h;->a:Lcom/zeekr/sdk/analysis/h;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/zeekr/sdk/analysis/h;->a:Lcom/zeekr/sdk/analysis/h;

    return-object v0
.end method

.method public final getProperty()Lcom/zeekr/sdk/analysis/funs/property/interfaces/IProperty;
    .locals 1

    .line 1
    invoke-static {}, Lcom/zeekr/sdk/analysis/i;->a()Lcom/zeekr/sdk/analysis/i;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceAlias()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "analysis"

    return-object v0
.end method

.method public final getUser()Lcom/zeekr/sdk/analysis/funs/user/interfaces/IUser;
    .locals 1

    .line 1
    invoke-static {}, Lcom/zeekr/sdk/analysis/l;->a()Lcom/zeekr/sdk/analysis/l;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/content/Context;Lcom/zeekr/sdk/base/ApiReadyCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->c:Lcom/zeekr/sdk/base/ApiReadyCallback;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/zeekr/sdk/analysis/impl/-$$Lambda$AnalysisProxy$CwX1kN_FZA256r5l-ThVetMuyCg;

    invoke-direct {v0, p0}, Lcom/zeekr/sdk/analysis/impl/-$$Lambda$AnalysisProxy$CwX1kN_FZA256r5l-ThVetMuyCg;-><init>(Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;)V

    iput-object v0, p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->c:Lcom/zeekr/sdk/base/ApiReadyCallback;

    .line 9
    iget-object v0, p0, Lcom/zeekr/sdk/analysis/impl/AnalysisProxy;->c:Lcom/zeekr/sdk/base/ApiReadyCallback;

    invoke-super {p0, p1, v0}, Lcom/zeekr/sdk/base/ZeekrAPIBase;->init(Landroid/content/Context;Lcom/zeekr/sdk/base/ApiReadyCallback;)V

    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zeekr/sdk/base/ZeekrAPIBase;->init(Landroid/content/Context;Lcom/zeekr/sdk/base/ApiReadyCallback;)V

    return-void
.end method
