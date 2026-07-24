.class final Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$4;
.super Ljava/util/HashMap;
.source "ChannelUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 76
    const-string v0, "SENSORS_ANALYTICS_UTM_SOURCE"

    const-string v1, "$latest_utm_source"

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "SENSORS_ANALYTICS_UTM_MEDIUM"

    const-string v1, "$latest_utm_medium"

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "SENSORS_ANALYTICS_UTM_TERM"

    const-string v1, "$latest_utm_term"

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "SENSORS_ANALYTICS_UTM_CONTENT"

    const-string v1, "$latest_utm_content"

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "SENSORS_ANALYTICS_UTM_CAMPAIGN"

    const-string v1, "$latest_utm_campaign"

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method
