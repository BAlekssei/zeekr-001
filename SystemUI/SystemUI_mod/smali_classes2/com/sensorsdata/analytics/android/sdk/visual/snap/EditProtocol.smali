.class public Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;
.super Ljava/lang/Object;
.source "EditProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;
    }
.end annotation


# static fields
.field private static final NO_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SA.EProtocol"


# instance fields
.field private final mResourceIds:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;

.field private propertyDescriptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->NO_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;)V
    .locals 3
    .param p1, "resourceIds"    # Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->mResourceIds:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;

    .line 43
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{\"type\":\"snapshot_request\",\"payload\":{\"config\":{\"classes\":[{\"name\":\"android.view.View\",\"properties\":[{\"name\":\"clickable\",\"get\":{\"selector\":\"isClickable\",\"parameters\":[],\"result\":{\"type\":\"java.lang.Boolean\"}}}]},{\"name\":\"android.widget.TextView\",\"properties\":[{\"name\":\"clickable\",\"get\":{\"selector\":\"isClickable\",\"parameters\":[],\"result\":{\"type\":\"java.lang.Boolean\"}}}]},{\"name\":\"android.widget.ImageView\",\"properties\":[{\"name\":\"clickable\",\"get\":{\"selector\":\"isClickable\",\"parameters\":[],\"result\":{\"type\":\"java.lang.Boolean\"}}}]}]}}}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "mMessageObject":Lorg/json/JSONObject;
    const-string v1, "payload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 45
    .local v1, "payload":Lorg/json/JSONObject;
    const-string v2, "config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->getListPropertyDescription(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->propertyDescriptionList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "mMessageObject":Lorg/json/JSONObject;
    .end local v1    # "payload":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getListPropertyDescription(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 12
    .param p1, "source"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 64
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;>;"
    :try_start_0
    const-string v1, "config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    .local v1, "config":Lorg/json/JSONObject;
    const-string v2, "classes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 66
    .local v2, "classes":Lorg/json/JSONArray;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "classIx":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 67
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 68
    .local v5, "classDesc":Lorg/json/JSONObject;
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "targetClassName":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 71
    .local v7, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "properties"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 72
    .local v8, "propertyDescs":Lorg/json/JSONArray;
    move v9, v3

    .local v9, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 73
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 74
    .local v10, "propertyDesc":Lorg/json/JSONObject;
    invoke-direct {p0, v7, v10}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->readPropertyDescription(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;

    move-result-object v11

    .line 75
    .local v11, "desc":Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v10    # "propertyDesc":Lorg/json/JSONObject;
    .end local v11    # "desc":Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 66
    .end local v5    # "classDesc":Lorg/json/JSONObject;
    .end local v6    # "targetClassName":Ljava/lang/String;
    .end local v7    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "propertyDescs":Lorg/json/JSONArray;
    .end local v9    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "config":Lorg/json/JSONObject;
    .end local v2    # "classes":Lorg/json/JSONArray;
    .end local v4    # "classIx":I
    :cond_1
    nop

    .line 83
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;

    const-string v3, "Can\'t resolve types for snapshot configuration"

    invoke-direct {v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 78
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;

    const-string v3, "Can\'t read snapshot configuration"

    invoke-direct {v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readPropertyDescription(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;
    .locals 8
    .param p2, "propertyDesc"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;
        }
    .end annotation

    .line 89
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "propName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 92
    .local v1, "accessor":Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;
    const-string v2, "get"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string v2, "get"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 94
    .local v2, "accessorConfig":Lorg/json/JSONObject;
    const-string v3, "selector"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "accessorName":Ljava/lang/String;
    const-string v4, "result"

    .line 96
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "accessorResultTypeName":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 98
    .local v5, "accessorResultType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;

    sget-object v7, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->NO_PARAMS:[Ljava/lang/Class;

    invoke-direct {v6, p1, v3, v7, v5}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v1, v6

    .line 102
    .end local v2    # "accessorConfig":Lorg/json/JSONObject;
    .end local v3    # "accessorName":Ljava/lang/String;
    .end local v4    # "accessorResultTypeName":Ljava/lang/String;
    .end local v5    # "accessorResultType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string v2, "set"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const-string v2, "set"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 104
    .local v2, "mutatorConfig":Lorg/json/JSONObject;
    const-string v3, "selector"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v2    # "mutatorConfig":Lorg/json/JSONObject;
    move-object v2, v3

    .line 105
    .local v2, "mutatorName":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v2    # "mutatorName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 109
    .restart local v2    # "mutatorName":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/PropertyDescription;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 114
    .end local v0    # "propName":Ljava/lang/String;
    .end local v1    # "accessor":Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;
    .end local v2    # "mutatorName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;

    const-string v2, "Can\'t read property JSON, relevant arg/return class not found"

    invoke-direct {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;

    const-string v2, "Can\'t read property JSON"

    invoke-direct {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 110
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;

    const-string v2, "Can\'t create property reader"

    invoke-direct {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public readSnapshotConfig(Landroid/os/Handler;)Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;
    .locals 3
    .param p1, "mMainThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol$BadInstructionsException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->propertyDescriptionList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->propertyDescriptionList:Ljava/util/List;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/EditProtocol;->mResourceIds:Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;

    invoke-direct {v0, v1, v2, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;-><init>(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;Landroid/os/Handler;)V

    return-object v0
.end method
