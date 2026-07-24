.class Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager$1;
.super Ljava/lang/Object;
.source "SensorsDataPropertyPluginManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;->filter(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;

    .line 132
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)I
    .locals 4
    .param p1, "o1"    # Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
    .param p2, "o2"    # Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    .line 135
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->priority()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;->getPriority()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->priority()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;->getPriority()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 132
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SensorsDataPropertyPluginManager$1;->compare(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)I

    move-result p1

    return p1
.end method
