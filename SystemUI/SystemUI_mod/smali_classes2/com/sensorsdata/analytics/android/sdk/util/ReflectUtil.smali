.class public Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# static fields
.field private static final mObjectLruCache:Landroid/util/LruCache;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final mObjectSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 138
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Class;

    .line 139
    .local v0, "argsClass":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 140
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 145
    :try_start_0
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 146
    :catch_0
    move-exception v2

    .line 150
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static varargs callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 154
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 155
    return-object v0

    .line 157
    :cond_0
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/Class;

    .line 158
    .local v1, "argsClass":[Ljava/lang/Class;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 159
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "i":I
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 162
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 164
    :try_start_0
    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 165
    :catch_0
    move-exception v3

    .line 169
    :cond_2
    return-object v0
.end method

.method static varargs findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 36
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 37
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findFieldObj(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 38
    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_0

    .line 39
    return-object v0

    .line 42
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    return-object v0

    .line 43
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/IllegalAccessException;
    return-object v0
.end method

.method public static varargs findField([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "className"    # [Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 53
    invoke-static {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 55
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static varargs findFieldObj(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "fieldName"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 196
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 199
    :cond_0
    const/4 v1, 0x0

    .line 200
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v3, :cond_2

    .line 202
    :try_start_1
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 205
    goto :goto_1

    .line 203
    :catch_0
    move-exception v3

    .line 204
    .local v3, "ex":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    .line 206
    .end local v3    # "ex":Ljava/lang/NoSuchFieldException;
    :goto_1
    if-eqz v1, :cond_1

    .line 207
    goto :goto_2

    .line 200
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "i":I
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 211
    return-object v0

    .line 213
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    return-object v1

    .line 215
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    return-object v0

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_3
    return-object v0
.end method

.method static findFieldObjRecur(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 221
    .local p0, "current":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 224
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return-object v0

    .line 226
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 228
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findFieldRecur(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findFieldObjRecur(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 235
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 237
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 238
    :catch_0
    move-exception v1

    .line 241
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    move-object v1, v0

    .line 88
    .local v1, "compatClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 89
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    move-object v1, v2

    .line 91
    :cond_0
    if-nez v1, :cond_1

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 93
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 94
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    nop

    .line 104
    return-object v1

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Throwable;
    return-object v0

    .line 98
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    return-object v0
.end method

.method public static getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "className"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 59
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 65
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    .line 66
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    move-object v0, v2

    .line 68
    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    aget-object v4, p0, v1

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 71
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_2
    goto :goto_1

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 76
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    aget-object v4, p0, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v0, :cond_3

    .line 79
    goto :goto_2

    .line 63
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_4
    :goto_2
    return-object v0

    .line 60
    .end local v0    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static varargs getDeclaredRecur(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 173
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    .line 175
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 177
    return-object v0

    .line 179
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 181
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 188
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static varargs isInstance(Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "args"    # [Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 111
    :cond_0
    const/4 v1, 0x0

    .line 112
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v2, 0x0

    .line 113
    .local v2, "result":Z
    array-length v3, p1

    :goto_0
    if-ge v0, v3, :cond_5

    aget-object v4, p1, v0

    .line 115
    .local v4, "arg":Ljava/lang/String;
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_1

    .line 116
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    invoke-virtual {v5, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    move-object v1, v5

    .line 118
    :cond_1
    if-nez v1, :cond_2

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 119
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v1, v5

    .line 120
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_2

    .line 121
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectLruCache:Landroid/util/LruCache;

    invoke-virtual {v5, v4, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 129
    :cond_3
    goto :goto_1

    .line 127
    :catch_0
    move-exception v5

    .line 128
    .local v5, "e":Ljava/lang/Throwable;
    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->mObjectSet:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_4

    .line 131
    goto :goto_2

    .line 113
    .end local v4    # "arg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_5
    :goto_2
    return v2

    .line 109
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "result":Z
    :cond_6
    :goto_3
    return v0
.end method
