.class public Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;
.super Landroid/app/Activity;
.source "SchemeActivity.java"


# annotations
.annotation runtime Lcom/sensorsdata/analytics/android/sdk/SensorsDataIgnoreTrackAppViewScreen;
.end annotation


# static fields
.field public static final SCHEME_ACTIVITY_SIGN:Ljava/lang/String; = "#*#scheme_activity_sign#*#"

.field private static final TAG:Ljava/lang/String; = "SA.SchemeActivity"

.field public static isPopWindow:Z


# instance fields
.field private isStartApp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isPopWindow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isStartApp:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->overridePendingTransition(II)V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v0, "SA.SchemeActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->requestWindowFeature(I)Z

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 59
    const v0, 0x103012b

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->setTheme(I)V

    goto :goto_0

    .line 61
    :cond_0
    const v0, 0x103000c

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    instance-of v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-eqz v0, :cond_1

    .line 68
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    goto :goto_2

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->handleSchemeUrl(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 72
    :goto_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 78
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    instance-of v0, v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->handleSchemeUrl(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 83
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    const-string v0, "SA.SchemeActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isPopWindow:Z

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isPopWindow:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isStartApp:Z

    .line 103
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    const-string v0, "SA.SchemeActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isStartApp:Z

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/dialog/SchemeActivity;->isStartApp:Z

    .line 91
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->startLaunchActivity(Landroid/content/Context;)V

    .line 93
    :cond_0
    return-void
.end method
