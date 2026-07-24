.class Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;
.super Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;
.source "VisualizedAutoTrackViewCrawler.java"


# instance fields
.field private mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resourcePackageName"    # Ljava/lang/String;
    .param p3, "featureCode"    # Ljava/lang/String;
    .param p4, "postUrl"    # Ljava/lang/String;
    .param p5, "visualDebugHelper"    # Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    .line 30
    const-string v5, "visual"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    .line 32
    return-void
.end method


# virtual methods
.method public startUpdates()V
    .locals 1

    .line 37
    :try_start_0
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->startUpdates()V

    .line 38
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->stopMonitor()V

    .line 40
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->startMonitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopUpdates(Z)V
    .locals 1
    .param p1, "clear"    # Z

    .line 50
    :try_start_0
    invoke-super {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractViewCrawler;->stopUpdates(Z)V

    .line 51
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackViewCrawler;->mVisualDebugHelper:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->stopMonitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
