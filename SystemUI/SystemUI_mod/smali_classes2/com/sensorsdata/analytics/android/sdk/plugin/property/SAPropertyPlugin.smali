.class public abstract Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
.super Ljava/lang/Object;
.source "SAPropertyPlugin.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/plugin/property/ISAPropertyPlugin;


# instance fields
.field private final mDynamicProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventNameFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventTypeFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;",
            ">;"
        }
    .end annotation
.end field

.field private final mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyKeyFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mProperties:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mDynamicProperties:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mEventNameFilter:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mPropertyKeyFilter:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mEventTypeFilter:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public appendDynamicProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "dynamicProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public abstract appendProperties(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public eventNameFilter(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "eventNameFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public eventTypeFilter(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "eventTypeFilter":Ljava/util/Set;, "Ljava/util/Set<Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;>;"
    return-void
.end method

.method final getEventNameFilter()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mEventNameFilter:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 44
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mEventNameFilter:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->eventNameFilter(Ljava/util/Set;)V

    .line 45
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mEventNameFilter:Ljava/util/Set;

    return-object v0
.end method

.method final getEventTypeFilter()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mEventTypeFilter:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 56
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mEventTypeFilter:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->eventTypeFilter(Ljava/util/Set;)V

    .line 57
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mEventTypeFilter:Ljava/util/Set;

    return-object v0
.end method

.method final getPropertyKeyFilter()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mPropertyKeyFilter:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 50
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mPropertyKeyFilter:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->propertyKeyFilter(Ljava/util/Set;)V

    .line 51
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mPropertyKeyFilter:Ljava/util/Set;

    return-object v0
.end method

.method public priority()Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;
    .locals 1

    .line 109
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;->DEFAULT:Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPluginPriority;

    return-object v0
.end method

.method final properties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mDynamicProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mDynamicProperties:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->appendDynamicProperties(Ljava/util/Map;)V

    .line 65
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mDynamicProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mProperties:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->appendProperties(Ljava/util/Map;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mProperties:Ljava/util/Map;

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mDynamicProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mProperties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 74
    .local v0, "mergedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mProperties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mDynamicProperties:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 76
    return-object v0
.end method

.method public propertyKeyFilter(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "propertyKeyFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method final start()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->mProperties:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;->appendProperties(Ljava/util/Map;)V

    .line 82
    return-void
.end method
