.class public Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;
.super Ljava/lang/Object;
.source "Caller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.Caller"


# instance fields
.field private final mMethodArgs:[Ljava/lang/Object;

.field private final mMethodName:Ljava/lang/String;

.field private final mMethodResultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mTargetMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "methodArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 37
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodArgs:[Ljava/lang/Object;

    .line 44
    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodResultType:Ljava/lang/Class;

    .line 46
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->pickMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetMethod:Ljava/lang/reflect/Method;

    .line 47
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetClass:Ljava/lang/Class;

    .line 53
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 54
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static assignableArgType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 63
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_0

    .line 64
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 65
    :cond_0
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_1

    .line 66
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 67
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_2

    .line 68
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 69
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_3

    .line 70
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 71
    :cond_3
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_4

    .line 72
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 73
    :cond_4
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_5

    .line 74
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 75
    :cond_5
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_6

    .line 76
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 77
    :cond_6
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_7

    .line 78
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 81
    :cond_7
    :goto_0
    return-object p0
.end method

.method private pickMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 146
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodArgs:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Class;

    .line 147
    .local v0, "argumentTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodArgs:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodArgs:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 152
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "foundName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 155
    .local v7, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    array-length v8, v7

    iget-object v9, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodArgs:[Ljava/lang/Object;

    array-length v9, v9

    if-eq v8, v9, :cond_1

    .line 156
    goto :goto_3

    .line 159
    :cond_1
    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodResultType:Ljava/lang/Class;

    invoke-static {v8}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->assignableArgType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 160
    .local v8, "assignType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->assignableArgType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    .line 161
    .local v9, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 162
    goto :goto_3

    .line 165
    :cond_2
    const/4 v10, 0x1

    .line 166
    .local v10, "assignable":Z
    move v11, v10

    move v10, v1

    .local v10, "i":I
    .local v11, "assignable":Z
    :goto_2
    array-length v12, v7

    if-ge v10, v12, :cond_3

    if-eqz v11, :cond_3

    .line 167
    aget-object v12, v0, v10

    invoke-static {v12}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->assignableArgType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    .line 168
    .local v12, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v13, v7, v10

    invoke-static {v13}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->assignableArgType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v13

    .line 169
    .local v13, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    .line 166
    .end local v12    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 172
    .end local v10    # "i":I
    :cond_3
    if-nez v11, :cond_4

    .line 173
    goto :goto_3

    .line 176
    :cond_4
    return-object v5

    .line 151
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "foundName":Ljava/lang/String;
    .end local v7    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "assignType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "resultType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "assignable":Z
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 179
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public applyMethod(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->applyMethodWithArguments(Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyMethodWithArguments(Landroid/view/View;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 99
    .local v0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "SA.Caller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " threw an exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 104
    :catch_1
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SA.Caller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetMethod:Ljava/lang/reflect/Method;

    .line 106
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " called with arguments of the wrong type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 102
    :catch_2
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "SA.Caller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " appears not to be public"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    .line 112
    :cond_0
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public argsAreApplicable([Ljava/lang/Object;)Z
    .locals 6
    .param p1, "proposedArgs"    # [Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mTargetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 118
    return v3

    .line 121
    :cond_0
    move v1, v3

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 122
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->assignableArgType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 123
    .local v2, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v4, p1, v1

    if-nez v4, :cond_2

    .line 124
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_1

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_1

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_1

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v4, :cond_1

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_3

    .line 132
    :cond_1
    return v3

    .line 135
    :cond_2
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->assignableArgType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 136
    .local v4, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 137
    return v3

    .line 121
    .end local v2    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public getArgs()[Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/snap/Caller;->mMethodArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
