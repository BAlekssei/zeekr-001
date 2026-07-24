.class public abstract Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;
.super Ljava/lang/Object;
.source "ResourceReader.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceIds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Drawables;,
        Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader$Ids;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.ResourceReader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIdNameToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdToIdName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdNameToId:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdToIdName:Landroid/util/SparseArray;

    .line 45
    return-void
.end method

.method private static readClassIds(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p0, "platformIdClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "namesToIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 51
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 52
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 53
    .local v4, "modifiers":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 55
    .local v5, "fieldType":Ljava/lang/Class;
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    .line 56
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 59
    .local v7, "value":I
    if-nez p1, :cond_0

    .line 60
    move-object v8, v6

    .local v8, "namespacedName":Ljava/lang/String;
    goto :goto_1

    .line 62
    .end local v8    # "namespacedName":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    .restart local v8    # "namespacedName":Ljava/lang/String;
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "modifiers":I
    .end local v5    # "fieldType":Ljava/lang/Class;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":I
    .end local v8    # "namespacedName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    :cond_2
    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "SA.ResourceReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read built-in id names from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    return-void
.end method


# virtual methods
.method protected abstract getLocalClassName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected abstract getSystemClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public idFromName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdNameToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdNameToId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdToIdName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 97
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->getSystemClass()Ljava/lang/Class;

    move-result-object v0

    .line 98
    .local v0, "sysIdClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "android"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdNameToId:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->readClassIds(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->getLocalClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "localClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 103
    .local v2, "rIdClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdNameToId:Ljava/util/Map;

    invoke-static {v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->readClassIds(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v2    # "rIdClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "SA.ResourceReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load names for Android view ids from \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', ids by name will not be available in the events editor."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "SA.ResourceReader"

    const-string v4, "You may be missing a Resources class for your package due to your proguard configuration, or you may be using an applicationId in your build that isn\'t the same as the package declared in your AndroidManifest.xml file.\nIf you\'re using proguard, you can fix this issue by adding the following to your proguard configuration:\n\n-keep class **.R$* {\n    <fields>;\n}\n\nIf you\'re not using proguard, or if your proguard configuration already contains the directive above, you can add the following to your AndroidManifest.xml file to explicitly point the SensorsData library to the appropriate library for your resources class:\n\n<meta-data android:name=\"com.sensorsdata.analytics.android.ResourcePackageName\" android:value=\"YOUR_PACKAGE_NAME\" />\n\nwhere YOUR_PACKAGE_NAME is the same string you use for the \"package\" attribute in your <manifest> tag."

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdNameToId:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 129
    .local v3, "idMapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdToIdName:Landroid/util/SparseArray;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    .end local v3    # "idMapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 131
    :cond_0
    return-void
.end method

.method public knownIdName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdNameToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public nameForId(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .line 86
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/ResourceReader;->mIdToIdName:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
