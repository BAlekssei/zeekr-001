.class public final Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;
.super Ljava/lang/Object;
.source "PropertyBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.PropertyBuilder"


# instance fields
.field private final innerPropertyMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    .line 32
    return-void
.end method

.method public static newInstance()Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;
    .locals 1

    .line 35
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/Object;)Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-object p0
.end method

.method public append(Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;"
        }
    .end annotation

    .line 57
    .local p1, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 60
    :cond_0
    return-object p0
.end method

.method public varargs append([Ljava/lang/Object;)Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;
    .locals 6
    .param p1, "keyValuePairs"    # [Ljava/lang/Object;

    .line 71
    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_2

    .line 75
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 76
    aget-object v1, p1, v0

    .line 77
    .local v1, "keyObj":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 78
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 79
    const-string v2, "SA.PropertyBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this element key[index= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] will be ignored, because no element can pair with it. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object p0

    .line 83
    :cond_1
    aget-object v2, p1, v0

    .line 84
    .local v2, "valueObj":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 85
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_2
    const-string v3, "SA.PropertyBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this element key[index= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] is not a String, the method will ignore the element and the next element. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v1    # "keyObj":Ljava/lang/Object;
    .end local v2    # "valueObj":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "index":I
    :cond_3
    return-object p0

    .line 72
    :cond_4
    :goto_2
    const-string v0, "SA.PropertyBuilder"

    const-string v1, "The key value pair is incorrect."

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 140
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    return-object v1

    .line 105
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/PropertyBuilder;->innerPropertyMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_1

    .line 109
    :catch_0
    move-exception v3

    .line 110
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 112
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 113
    :cond_1
    return-object v0
.end method
