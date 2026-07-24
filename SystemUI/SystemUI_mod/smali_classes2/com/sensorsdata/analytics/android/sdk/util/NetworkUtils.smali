.class public Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;,
        Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;
    }
.end annotation


# static fields
.field private static final HTTP_307:I = 0x133

.field private static final TAG:Ljava/lang/String; = "SA.NetworkUtils"

.field private static mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

.field private static networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

.field private static networkType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanNetworkTypeCache()V
    .locals 1

    .line 245
    const/4 v0, 0x0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public static getLocation(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    const-string v1, "Location"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "location":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "location"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    return-object v0

    .line 183
    :cond_2
    const-string v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "originUrl":Ljava/net/URL;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .end local v0    # "originUrl":Ljava/net/URL;
    :cond_3
    return-object v1

    .line 174
    .end local v1    # "location":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 113
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 114
    return v1

    .line 117
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 118
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 119
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 121
    return v1
.end method

.method private static isNetworkAvailable(Landroid/net/ConnectivityManager;)Z
    .locals 3
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 255
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 256
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 257
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 258
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 260
    .local v2, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_0

    .line 261
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkValid(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0

    .line 264
    .end local v1    # "network":Landroid/net/Network;
    .end local v2    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_0
    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 266
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0

    .line 269
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_3
    :goto_0
    return v0
.end method

.method public static isNetworkValid(Landroid/net/NetworkCapabilities;)Z
    .locals 3
    .param p0, "capabilities"    # Landroid/net/NetworkCapabilities;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 157
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    .line 159
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x7

    .line 160
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    .line 161
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x10

    .line 162
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 157
    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 165
    :cond_2
    return v0
.end method

.method public static isShouldFlush(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "networkType"    # Ljava/lang/String;
    .param p1, "flushNetworkPolicy"    # I

    .line 133
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->toNetworkType(Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isWiFiNetwork(Landroid/net/ConnectivityManager;)Z
    .locals 4
    .param p0, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    .line 280
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 281
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 283
    .local v3, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    return v1

    .line 287
    .end local v0    # "network":Landroid/net/Network;
    .end local v3    # "capabilities":Landroid/net/NetworkCapabilities;
    :cond_0
    nop

    .line 291
    return v1

    .line 288
    :cond_1
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 289
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private static mobileNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "networkType":I
    const/16 v1, 0x1e

    if-eqz p1, :cond_2

    .line 306
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_1

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 307
    invoke-static {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    goto :goto_0

    .line 311
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 318
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 319
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_3

    .line 321
    const-string v1, "NULL"

    return-object v1

    .line 324
    :cond_3
    if-eqz p2, :cond_4

    .line 325
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 326
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    .line 327
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 332
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 356
    :pswitch_0
    const-string v1, "NULL"

    return-object v1

    .line 354
    :pswitch_1
    const-string v1, "5G"

    return-object v1

    .line 352
    :pswitch_2
    const-string v1, "4G"

    return-object v1

    .line 348
    :pswitch_3
    const-string v1, "3G"

    return-object v1

    .line 338
    :pswitch_4
    const-string v1, "2G"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static needRedirects(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .line 169
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static networkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NULL"

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object v0

    .line 74
    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->checkHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const-string v0, "NULL"

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object v0

    .line 79
    :cond_1
    const-string v0, "connectivity"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_3

    .line 83
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    const-string v1, "NULL"

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    .line 85
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object v1

    .line 88
    :cond_2
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isWiFiNetwork(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "WIFI"

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    .line 90
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object v1

    .line 94
    :cond_3
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 95
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mobileNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    .line 96
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 97
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 99
    const-string v1, "NULL"

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType:Ljava/lang/String;

    return-object v1
.end method

.method public static registerNetworkListener(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 196
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    invoke-direct {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;-><init>(Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$1;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    .line 199
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    const-string v1, "SA.NetworkUtils"

    const-string v2, "Register BroadcastReceiver"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 204
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    if-nez v0, :cond_2

    .line 205
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    invoke-direct {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;-><init>(Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$1;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    .line 207
    :cond_2
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 208
    .local v0, "request":Landroid/net/NetworkRequest;
    const-string v1, "connectivity"

    .line 209
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 210
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 211
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 212
    const-string v2, "SA.NetworkUtils"

    const-string v3, "Register ConnectivityManager"

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "request":Landroid/net/NetworkRequest;
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    :goto_0
    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static toNetworkType(Ljava/lang/String;)I
    .locals 2
    .param p0, "networkType"    # Ljava/lang/String;

    .line 137
    const-string v0, "NULL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    .line 138
    return v1

    .line 139
    :cond_0
    const-string v0, "WIFI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const/16 v0, 0x8

    return v0

    .line 141
    :cond_1
    const-string v0, "2G"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_2
    const-string v0, "3G"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    const/4 v0, 0x2

    return v0

    .line 145
    :cond_3
    const-string v0, "4G"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const/4 v0, 0x4

    return v0

    .line 147
    :cond_4
    const-string v0, "5G"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    const/16 v0, 0x10

    return v0

    .line 150
    :cond_5
    return v1
.end method

.method public static unregisterNetworkListener(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 222
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 223
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->mReceiver:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SABroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    const-string v0, "SA.NetworkUtils"

    const-string v1, "unregisterReceiver BroadcastReceiver"

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    if-nez v0, :cond_2

    .line 230
    return-void

    .line 232
    :cond_2
    const-string v0, "connectivity"

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 234
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_3

    .line 235
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkCallback:Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils$SANetworkCallbackImpl;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 236
    const-string v1, "SA.NetworkUtils"

    const-string v2, "unregister ConnectivityManager"

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    :goto_0
    goto :goto_1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
