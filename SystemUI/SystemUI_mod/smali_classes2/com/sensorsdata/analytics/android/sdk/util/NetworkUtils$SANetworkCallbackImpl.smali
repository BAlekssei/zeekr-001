.class Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SANetworkCallbackImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$1;

    .line 373
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 377
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 378
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->cleanNetworkTypeCache()V

    .line 379
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V

    .line 380
    const-string v0, "SA.NetworkUtils"

    const-string v1, "onAvailable is calling"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 385
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 386
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->cleanNetworkTypeCache()V

    .line 387
    const-string v0, "SA.NetworkUtils"

    const-string v1, "onCapabilitiesChanged is calling"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 392
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 393
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->cleanNetworkTypeCache()V

    .line 394
    const-string v0, "SA.NetworkUtils"

    const-string v1, "onLost is calling"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return-void
.end method
