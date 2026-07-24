.class Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SABroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$1;

    .line 359
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->cleanNetworkTypeCache()V

    .line 366
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V

    .line 367
    const-string v1, "SA.NetworkUtils"

    const-string v2, "SABroadcastReceiver is receiving ConnectivityManager.CONNECTIVITY_ACTION broadcast"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method
