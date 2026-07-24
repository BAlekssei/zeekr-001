.class public Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;
.super Ljava/lang/Object;
.source "HeatMapService.java"


# static fields
.field private static instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

.field private static mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;
    .locals 1

    .line 34
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    .line 37
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->instance:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;

    return-object v0
.end method


# virtual methods
.method public isServiceRunning()Z
    .locals 1

    .line 85
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;->isServiceRunning()Z

    move-result v0

    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resume()V
    .locals 1

    .line 52
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;->startUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "featureCode"    # Ljava/lang/String;
    .param p3, "postUrl"    # Ljava/lang/String;

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 64
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 65
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 66
    .local v2, "configBundle":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 67
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 69
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 70
    const-string v3, "com.sensorsdata.analytics.android.ResourcePackageName"

    .line 71
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "resourcePackageName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 76
    :cond_1
    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    invoke-direct {v4, p1, v3, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    .line 77
    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;->startUpdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "configBundle":Landroid/os/Bundle;
    .end local v3    # "resourcePackageName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 42
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapService;->mVTrack:Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/HeatMapViewCrawler;->stopUpdates(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
