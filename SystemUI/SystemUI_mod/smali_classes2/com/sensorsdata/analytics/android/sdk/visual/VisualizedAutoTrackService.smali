.class public Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;
.super Ljava/lang/Object;
.source "VisualizedAutoTrackService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.VisualizedAutoTrackService"

.field private static instance:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

.field private static mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;


# instance fields
.field private mDebugModeEnabled:Z

.field private mLastDebugInfo:Ljava/lang/String;

.field private mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

.field private mVisualPropertiesLog:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mDebugModeEnabled:Z

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;
    .locals 1

    .line 48
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    .line 51
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    return-object v0
.end method


# virtual methods
.method getDebugInfo()Ljava/lang/String;
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mLastDebugInfo:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mLastDebugInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "SA.VisualizedAutoTrackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visual debug info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mLastDebugInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mLastDebugInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :cond_0
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getLastDebugInfo()Ljava/lang/String;
    .locals 3

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mLastDebugInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const-string v0, "SA.VisualizedAutoTrackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last debug info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mLastDebugInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mLastDebugInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :cond_0
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getVisualLogInfo()Ljava/lang/String;
    .locals 4

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualPropertiesLog:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualPropertiesLog:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;->getVisualPropertiesLog()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "visualPropertiesLog":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "SA.VisualizedAutoTrackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visual log info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-object v0

    .line 145
    .end local v0    # "visualPropertiesLog":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isServiceRunning()Z
    .locals 1

    .line 101
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->isServiceRunning()Z

    move-result v0

    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resume()V
    .locals 1

    .line 66
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->startUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method setDebugModeEnabled(Z)V
    .locals 2
    .param p1, "debugModeEnabled"    # Z

    .line 151
    :try_start_0
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mDebugModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 152
    if-eqz p1, :cond_0

    .line 153
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualPropertiesLog:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;

    .line 154
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualPropertiesLog:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->registerCollectLogListener(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$CollectLogListener;)V

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualPropertiesLog:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesLog;

    .line 157
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->unRegisterCollectLogListener()V

    .line 160
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mDebugModeEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "featureCode"    # Ljava/lang/String;
    .param p3, "postUrl"    # Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 78
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 79
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 80
    .local v2, "configBundle":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 81
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 83
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 84
    const-string v3, "com.sensorsdata.analytics.android.ResourcePackageName"

    .line 85
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "resourcePackageName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 89
    .end local v3    # "resourcePackageName":Ljava/lang/String;
    .local v9, "resourcePackageName":Ljava/lang/String;
    :cond_1
    move-object v9, v3

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    if-nez v3, :cond_2

    .line 90
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    invoke-direct {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;-><init>()V

    iput-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    .line 92
    :cond_2
    new-instance v10, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    move-object v3, v10

    move-object v4, p1

    move-object v5, v9

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;)V

    sput-object v10, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    .line 93
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->startUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "configBundle":Landroid/os/Bundle;
    .end local v9    # "resourcePackageName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 56
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->stopUpdates(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
